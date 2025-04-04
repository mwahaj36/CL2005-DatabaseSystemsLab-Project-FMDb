const express = require('express');
const sql = require('mssql');
const jwt = require('jsonwebtoken');
const router = express.Router();
const secretKey = 'nigga'; // Replace with your secret key

// Authentication route
router.post('/', async (req, res) => {
    const { username, password } = req.body;

    if (!username || !password) {
        return res.status(400).send('Username and password are required');
    }

    try {
        const query = `
            SELECT * 
            FROM Users 
            WHERE Username = @username AND Password = @password
        `;
        const request = new sql.Request();
        request.input('username', sql.VarChar, username);
        request.input('password', sql.VarChar, password);

        const result = await request.query(query);

        if (result.recordset.length > 0) {
            const token = jwt.sign({ username }, secretKey, { expiresIn: '1h' });
            res.json({ success: true, message: 'Authentication successful', token });
        } else {
            res.status(401).json({ success: false, message: 'Invalid credentials' });
        }
    } catch (err) {
        console.error('Error during authentication:', err.message);
        res.status(500).send('Error during authentication');
    }
});

// Signup route
router.post('/signup', async (req, res) => {
    const { username, password } = req.body;

    if (!username || !password) {
        return res.status(400).send('Username and password are required');
    }

    try {
        const checkQuery = `
            SELECT * 
            FROM Users 
            WHERE Username = @username
        `;
        const checkRequest = new sql.Request();
        checkRequest.input('username', sql.VarChar, username);
        const checkResult = await checkRequest.query(checkQuery);

        if (checkResult.recordset.length > 0) {
            return res.status(400).json({ success: false, message: 'Username already exists' });
        }

        const insertQuery = `
            INSERT INTO Users (Username, Password) 
            VALUES (@username, @password)
        `;
        const insertRequest = new sql.Request();
        insertRequest.input('username', sql.VarChar, username);
        insertRequest.input('password', sql.VarChar, password);
        await insertRequest.query(insertQuery);

        res.json({ success: true, message: 'User registered successfully' });
    } catch (err) {
        console.error('Error during sign up:', err.message);
        res.status(500).send('Error during sign up');
    }
});

module.exports = router;
