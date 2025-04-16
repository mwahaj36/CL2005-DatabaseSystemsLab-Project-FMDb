const express = require('express');
const sql = require('mssql'); 
const { authenticateToken, jwt } = require('../middleware/authMiddleware'); 
const router = express.Router();

// Send a message from senderId to receiverId
router.post('', authenticateToken, async (req, res) => {
    const { receiverId, message } = req.body;
    const senderId = req.userId; // Extract senderId from the token payload

    if (!senderId || !receiverId || !message) {
        return res.status(400).send({ success: false, message: 'Missing required fields: senderId, receiverId, or message' });
    }
    try {
        const checkQuery = `SELECT COUNT(*) AS count FROM Users WHERE UserId IN (@senderId, @receiverId)`;
        const checkRequest = new sql.Request();
        checkRequest.input('senderId', sql.Int, senderId);
        checkRequest.input('receiverId', sql.Int, receiverId);

        const result = await checkRequest.query(checkQuery);
        if (result.recordset[0].count < 2) {
            return res.status(404).send({ success: false, message: 'One or both users do not exist' });
        }
    } catch (error) {
        console.error('Error checking user existence:', error);
        return res.status(500).send({ success: false, message: 'Internal server error' });
    }
    try {
        const query = `INSERT INTO Messages (SenderId, ReceiverId, Message, NotificationType) VALUES (@senderId, @receiverId, @message, General)`;
        const request = new sql.Request();
        request.input('senderId', sql.Int, senderId);
        request.input('receiverId', sql.Int, receiverId);
        request.input('message', sql.NVarChar, message);

        await request.query(query);
        res.send({ success: true, message: `Message sent from user ${senderId} to user ${receiverId}` });
    } catch (error) {
        console.error('Unexpected error:', error);
        res.status(500).send({ success: false, message: 'Internal server error' });
    }
});

module.exports = router;