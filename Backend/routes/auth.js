const express = require('express');
const sql = require('mssql');
const bcrypt = require('bcrypt');  // For Password Hashing
require('dotenv').config(); // Load environment variables from .env file
const { authenticateToken, jwt } = require('../middleware/authMiddleware'); 
const router = express.Router();

// Authentication route for User Log In
router.post('/signin', async (req, res) => {
    if (!req.body || Object.keys(req.body).length === 0) {
        return res.status(400).send('Request body is required');
    }

    const keys = Object.keys(req.body);
    if (keys.length !== 2 || !keys.includes('userName') || !keys.includes('password')) {
        return res.status(400).send('Request body must contain only userName and password');
    }

    const { userName, password } = req.body;

    try {
        const query = `
            SELECT UserId, PasswordHash 
            FROM Users 
            WHERE Username = @userName
        `;
        const request = new sql.Request();
        request.input('userName', sql.VarChar, userName);

        const result = await request.query(query);

        if (result.recordset.length > 0) {
            const hashedPassword = result.recordset[0].PasswordHash;
            const isMatch = await bcrypt.compare(password, hashedPassword);

            if (isMatch) {
                const payload = { userId: result.recordset[0].UserId }; // Add userId to the payload of jwt token for info fetching in other calls.
                const token = jwt.sign(payload, process.env.JWT_SECRET, { expiresIn: '60d' });
                res.json({ success: true, message: 'Authentication successful', token: token, userId: payload.userId });
            } else {
                res.status(401).json({ success: false, message: 'Invalid Password' });
            }
        } else {
            res.status(401).json({ success: false, message: 'Invalid Username' });
        }
    } catch (err) {
        console.error('Error during authentication:', err.message);
        res.status(500).send('Error during authentication');
    }
});

// Route to check if a userName exists in the database
router.get('/authname/:name', async (req, res) => {
    const userName = req.params.name;
    
    // invalid case cause incomplete url returns 404 automatically
    // if (!userName) {  
    //     return res.status(400).send('Username is required');
    // }

    try {
        const query = `
            SELECT COUNT(*) AS count
            FROM Users
            WHERE Username = @userName
        `;
        const request = new sql.Request();
        request.input('userName', sql.VarChar, userName);

        const result = await request.query(query);

        if (result.recordset[0].count > 0) {
            res.json({ found: true, message: 'Username found' });
        } else {
            res.json({ found: false, message: 'Username not found' });
        }
    } catch (err) {
        console.error('Error checking userName:', err.message);
        res.status(500).send('Error checking userName');
    }
});

// Route to check if an email exists in the database
router.get('/authemail/:mail', async (req, res) => {
    const email = req.params.mail;

    // invalid case cause incomplete url returns 404 automatically
    // if (!email) {
    //     return res.status(400).send('Email is required');
    // }

    try {
        const query = `
            SELECT COUNT(*) AS count
            FROM Users
            WHERE Email = @Email
        `;
        const request = new sql.Request();
        request.input('Email', sql.VarChar, email);

        const result = await request.query(query);

        if (result.recordset[0].count > 0) {
            res.json({ found: true, message: 'Email found' });
        } else {
            res.json({ found: false, message: 'Email not found' });
        }
    } catch (err) {
        console.error('Error checking email:', err.message);
        res.status(500).send('Error checking email');
    }
});

// Route for User Sign Up
router.post('/signup', async (req, res) => {
    if (!req.body || Object.keys(req.body).length === 0) {
        return res.status(400).send('Request body is required');
    }

    const requiredFields = ['fullName', 'userName', 'password', 'email'];
    const keys = Object.keys(req.body);

    if (keys.length !== requiredFields.length || !requiredFields.every(field => keys.includes(field))) {
        return res.status(400).send(`Request body must contain only the following fields: ${requiredFields.join(', ')}`);
    }

    const { fullName, userName, password, email} = req.body;

    try {
        // Check if userName or email already exists because i dont trust Wahaj
        const checkQuery = `
            SELECT COUNT(*) AS count
            FROM Users
            WHERE Username = @userName OR Email = @email
        `;
        const checkRequest = new sql.Request();
        checkRequest.input('userName', sql.VarChar, userName);
        checkRequest.input('email', sql.VarChar, email);

        const checkResult = await checkRequest.query(checkQuery);

        if (checkResult.recordset[0].count > 0) {
            return res.status(409).json({ success: false, message: 'Username or email already exists' });
        }

        // Hash the password
        const hashedPassword = await bcrypt.hash(password, parseInt(process.env.BCRYPT_COST_FACTOR, 10));

        // Insert the new user into the database
        const insertQuery = `
            INSERT INTO Users (FullName, Username, PasswordHash, Email, UserType, Privacy, Gender)
            VALUES (@fullName, @userName, @password, @email, @userType, @privacy, @gender);
            SELECT SCOPE_IDENTITY() AS UserId
        `;
        const insertRequest = new sql.Request();
        insertRequest.input('fullName', sql.VarChar, fullName);
        insertRequest.input('userName', sql.VarChar, userName);
        insertRequest.input('password', sql.VarChar, hashedPassword);
        insertRequest.input('email', sql.VarChar, email);
        insertRequest.input('userType', sql.VarChar, 'User'); // Default user type
        insertRequest.input('privacy', sql.VarChar, 'Private'); // Default privacy setting
        insertRequest.input('gender', sql.NVarChar, 'Other');

        const insertResult = await insertRequest.query(insertQuery);

        // Generate JWT token
        const payload = { userId: insertResult.recordset[0].UserId };
        const token = jwt.sign(payload, process.env.JWT_SECRET, { expiresIn: '60d' });

        res.json({ success: true, message: 'User registered successfully', token: token, userId: payload.userId });
    } catch (err) {
        console.error('Error during sign up:', err.message);
        res.status(500).send('Error during sign up');
    }
});

// Password reset
router.put('/reset', async (req, res) => {
    if (!req.body || Object.keys(req.body).length === 0) {
        return res.status(400).send('Request body is required');
    }

    const requiredFields = ['email', 'password'];
    const keys = Object.keys(req.body);

    if (keys.length !== requiredFields.length || !requiredFields.every(field => keys.includes(field))) {
        return res.status(400).send(`Request body must contain only the following fields: ${requiredFields.join(', ')}`);
    }

    const { email, password } = req.body;

    try {
        // Check if the email exists in the database and get the UserId
        const query = `
            SELECT UserId
            FROM Users
            WHERE Email = @Email
        `;
        const request = new sql.Request();
        request.input('Email', sql.VarChar, email);

        const result = await request.query(query);

        if (result.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'Email not found' });
        }

        const userId = result.recordset[0].UserId;

        // Hash the new password
        const hashedPassword = await bcrypt.hash(password, parseInt(process.env.BCRYPT_COST_FACTOR, 10));

        // Update the password in the database using UserId
        const updateQuery = `
            UPDATE Users
            SET PasswordHash = @PasswordHash
            WHERE UserId = @UserId
        `;
        const updateRequest = new sql.Request();
        updateRequest.input('PasswordHash', sql.VarChar, hashedPassword);
        updateRequest.input('UserId', sql.Int, userId);

        await updateRequest.query(updateQuery);

        res.json({ success: true, message: 'Password updated successfully' });
    } catch (err) {
        console.error('Error during password update:', err.message);
        res.status(500).send('Error during password update');
    }
});

module.exports = router;
