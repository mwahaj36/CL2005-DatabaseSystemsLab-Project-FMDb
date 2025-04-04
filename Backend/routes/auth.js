const express = require('express');
const sql = require('mssql');
const jwt = require('jsonwebtoken');
const bcrypt = require('bcrypt'); // Added bcrypt for password hashing
const router = express.Router();
const secretKey = 'nigga'; // Replace with your secret key
const bcryptCostFactor = 5; // Define the cost factor for bcrypt

// Authentication route for User Log In
router.post('/signin', async (req, res) => {
    const { username, password } = req.body;

    if (!username || !password) {
        return res.status(400).send('Username and password are required');
    }

    try {
        const query = `
            SELECT UserId, Password 
            FROM Users 
            WHERE Username = @username
        `;
        const request = new sql.Request();
        request.input('username', sql.VarChar, username);

        const result = await request.query(query);

        if (result.recordset.length > 0) {
            const hashedPassword = result.recordset[0].Password;
            const isMatch = await bcrypt.compare(password, hashedPassword);

            if (isMatch) {
                const payload = { userId: result.recordset[0].UserId }; // Add userId to the payload of jwt token for info fetching in other calls.
                const token = jwt.sign(payload, secretKey, { expiresIn: '1h' });
                res.json({ success: true, message: 'Authentication successful', token });
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

// Route to check if a username exists in the database
router.get('/authname/:name', async (req, res) => {
    const username = req.params.name;
    
    // invalid case cause incomplete url returns 404 automatically
    // if (!username) {  
    //     return res.status(400).send('Username is required');
    // }

    try {
        const query = `
            SELECT COUNT(*) AS count
            FROM Users
            WHERE Username = @username
        `;
        const request = new sql.Request();
        request.input('username', sql.VarChar, username);

        const result = await request.query(query);

        if (result.recordset[0].count > 0) {
            res.json({ found: true, message: 'Username found' });
        } else {
            res.json({ found: false, message: 'Username not found' });
        }
    } catch (err) {
        console.error('Error checking username:', err.message);
        res.status(500).send('Error checking username');
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
    const { fullname, username, password, email, gender, dateofbirth, bio, usertype, privacy } = req.body;

    if (!fullname || !username || !password || !email || !gender || !dateofbirth || !bio || !usertype || !privacy) {
        return res.status(400).send('All fields are required');
    }

    try {
        // Check if username or email already exists because i dont trust Wahaj
        const checkQuery = `
            SELECT COUNT(*) AS count
            FROM Users
            WHERE Username = @username OR Email = @email
        `;
        const checkRequest = new sql.Request();
        checkRequest.input('username', sql.VarChar, username);
        checkRequest.input('email', sql.VarChar, email);

        const checkResult = await checkRequest.query(checkQuery);

        if (checkResult.recordset[0].count > 0) {
            return res.status(409).json({ success: false, message: 'Username or email already exists' });
        }

        // Hash the password
        const hashedPassword = await bcrypt.hash(password, bcryptCostFactor);

        // Insert the new user into the database
        const insertQuery = `
            INSERT INTO Users (FullName, Username, PasswordHash, Email, Gender, DateOfBirth, Bio, UserType, Privacy)
            VALUES (@fullname, @username, @password, @email, @gender, @dateofbirth, @bio, @usertype, @privacy);
            SELECT SCOPE_IDENTITY() AS UserId;
        `;
        const insertRequest = new sql.Request();
        insertRequest.input('fullname', sql.VarChar, fullname);
        insertRequest.input('username', sql.VarChar, username);
        insertRequest.input('password', sql.VarChar, hashedPassword);
        insertRequest.input('email', sql.VarChar, email);
        insertRequest.input('gender', sql.VarChar, gender);
        insertRequest.input('dateofbirth', sql.Date, dateofbirth);
        insertRequest.input('bio', sql.Text, bio);
        insertRequest.input('usertype', sql.VarChar, usertype);
        insertRequest.input('privacy', sql.VarChar, privacy);

        const insertResult = await insertRequest.query(insertQuery);

        // Generate JWT token
        const payload = { userId: insertResult.recordset[0].UserId };
        const token = jwt.sign(payload, secretKey, { expiresIn: '1h' });

        res.json({ success: true, message: 'User registered successfully', token });
    } catch (err) {
        console.error('Error during sign up:', err.message);
        res.status(500).send('Error during sign up');
    }
});

module.exports = router;
