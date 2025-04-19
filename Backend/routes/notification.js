const express = require('express');
const sql = require('mssql'); 
const { authenticateToken, jwt } = require('../middleware/authMiddleware'); 
const router = express.Router();

// Get all notifications of current user
router.get('/user', authenticateToken, async (req, res) => {
    const userId = req.userId;
    const query = `SELECT * FROM Notifications WHERE ReceiverId = @userId`;
    try {
        const request = new sql.Request();
        request.input('userId', sql.Int, userId);

        const result = await request.query(query);
        if (result.recordset.length === 0) {
            return res.status(404).send({ success: false, message: 'No requests found for this user' });
        }
        res.send({ success: true, requests: result.recordset });
    } catch (error) {
        res.status(500).send({ success: false, message: 'Internal server error' });
    }
});

// Accept a notification by notificationId
router.post('/accept/:notiID', authenticateToken, async (req, res) => {
    const notificationId = parseInt(req.params.notiID, 10);

    if (isNaN(notificationId)) {
        return res.status(400).send({ success: false, message: 'Invalid notification ID' });
    }
        
    const query = `SELECT * FROM Notifications WHERE NotificationId = @notificationId`; 
    try {
        const request = new sql.Request();
        request.input('notificationId', sql.Int, notificationId);

        const result = await request.query(query);
        if (result.recordset.length === 0) {
            return res.status(404).send({ success: false, message: 'Notification not found' });
        }
        const notification = result.recordset[0];
        if (notification.NotificationType === 'General') {
            return res.status(400).send({ success: false, message: 'Cannot accept a general notification' });
        }
        if (notification.ReceiverId !== req.userId) {
            return res.status(403).send({ success: false, message: 'You are not authorized to accept this notification' });
        }

        // Delete the notification after accepting it
        sql.query(`DELETE FROM Notifications WHERE NotificationId = @notificationId`);
        request = new sql.Request();
        let messageSender;

        if (notification.NotificationType === 'FriendRequest') {
            const [u1, u2] = notification.ReceiverId < notification.SenderId
                ? [notification.ReceiverId, notification.SenderId]
                : [notification.SenderId, notification.ReceiverId];
            
            const request = new sql.Request();
            request.input('u1', sql.Int, u1);
            request.input('u2', sql.Int, u2);
        
            await request.query(`INSERT INTO Friends (User1ID, User2ID) VALUES (@u1, @u2)`);
            messageSender = `User ${notification.ReceiverId} accepted your friend request!`;            
            console.log(`Accepted friend request from user ${notification.SenderId}`);
        } else {
            // Delete this request for all admins
            sql.query(`DELETE FROM Notifications WHERE NotificationType IN ('AdminReq', 'CriticReq') AND SenderId = @senderId`);
            let adminMessage;


            if (notification.NotificationType === 'AdminReq') {
                // promote sender to admin
                query = `UPDATE Users SET UserType = Admin WHERE UserId = @senderId`;
                request.input('senderId', sql.Int, notification.SenderId);
                await request.query(query);
                messageSender = `You have been promoted to Admin by user ${notification.ReceiverId}`;
                adminMessage = `User ${notification.SenderId} has been promoted to Admin!`;

            } else if (notification.NotificationType === 'CriticReq') {
                // promote sender to critic
                query = `UPDATE Users SET UserType = Critic WHERE UserId = @senderId`;
                request.input('senderId', sql.Int, notification.SenderId);
                await request.query(query);
                messageSender = `You have been promoted to Critic by user ${notification.ReceiverId}`;
                adminMessage = `User ${notification.SenderId} has been promoted to Critic!`;
            }
            // Send message to all admins that user has been promoted to admin/critic
            // Get all admins from the Users table
            const adminsQuery = `SELECT UserId FROM Users WHERE UserType = 'Admin' AND UserId NOT IN (@receiverId, @senderId)`;
            request.input('receiverId', sql.Int, notification.ReceiverId);
            request.input('senderId', sql.Int, notification.SenderId);
            const adminsResult = await request.query(adminsQuery);

            if (adminsResult.recordset.length > 0) {
                for (const admin of adminsResult.recordset) {
                    query = `INSERT INTO Notifications (SenderId, ReceiverId, NotificationType, Message) VALUES (@senderId, @receiverId, 'General', @message)`;
                    const adminRequest = new sql.Request();
                    adminRequest.input('senderId', sql.Int, notification.ReceiverId);
                    adminRequest.input('receiverId', sql.Int, admin.UserId);
                    adminRequest.input('message', sql.NVarChar, adminMessage);
                    await adminRequest.query(query);
                }
            }
            
            console.log(`Accepted adminreq/criticreq from user ${notification.SenderId}`);
        }
        // Send message to the sender of the notification
        query = `INSERT INTO Notifications (SenderId, ReceiverId, NotificationType, Message) VALUES (@senderId, @receiverId, 'General', @message)`;
        const messageRequest = new sql.Request();
        messageRequest.input('senderId', sql.Int, notification.ReceiverId);
        messageRequest.input('receiverId', sql.Int, notification.SenderId);
        messageRequest.input('message', sql.NVarChar, messageSender);
        await messageRequest.query(query);
    } catch (error) {
        console.error('Unexpected error:', error);
        res.status(500).send({ success: false, message: 'Internal server error' });
    }
    res.send({ success: true, message: `Accepted notification with ID: ${notificationId}` });
});

// Reject a notification by notificationId
router.post('/reject/:notiID', authenticateToken, async (req, res) => {
    const notificationId = parseInt(req.params.notiID, 10);

    if (isNaN(notificationId)) {
        return res.status(400).send({ success: false, message: 'Invalid notification ID' });
    }

    const query = `SELECT * FROM Notifications WHERE NotificationId = @notificationId`; 
    try {
        const request = new sql.Request();
        request.input('notificationId', sql.Int, notificationId);

        const result = await request.query(query);
        if (result.recordset.length === 0) {
            return res.status(404).send({ success: false, message: 'Notification not found' });
        }
        const notification = result.recordset[0];
        if (notification.NotificationType === 'General') {
            return res.status(400).send({ success: false, message: 'Cannot reject a general notification' });
        } 
        if (notification.ReceiverId !== req.userId) {
            return res.status(403).send({ success: false, message: 'You are not authorized to accept this notification' });
        }

        // Delete the notification after rejecting it
        sql.query(`DELETE FROM Notifications WHERE NotificationId = @notificationId`);
        request = new sql.Request();
        let messageSender;

        if (notification.NotificationType === 'FriendRequest') {
            messageSender = `User ${notification.ReceiverId} rejected your friend request!`;
            console.log(`Rejected friend request from user ${notification.SenderId}`);
        } else {
            // Delete this request for all admins
            sql.query(`DELETE FROM Notifications WHERE NotificationType IN ('AdminReq', 'CriticReq') AND SenderId = @senderId`);
            let adminMessage;


            if (notification.NotificationType === 'AdminReq') {
                messageSender = `You have been rejected the status of Admin by user ${notification.ReceiverId}`;
                adminMessage = `User ${notification.SenderId} has been rejected the status of Admin!`;
            } else if (notification.NotificationType === 'CriticReq') {
                messageSender = `You have been rejected the status of Critic by user ${notification.ReceiverId}`;
                adminMessage = `User ${notification.SenderId} has been rejected the status of Critic!`;
            }
            // Send message to all admins that user has been rejected the status of admin/critic
            // Get all admins from the Users table
            const adminsQuery = `SELECT UserId FROM Users WHERE UserType = 'Admin' AND UserId NOT IN (@receiverId, @senderId)`;
            request.input('receiverId', sql.Int, notification.ReceiverId);
            request.input('senderId', sql.Int, notification.SenderId);
            const adminsResult = await request.query(adminsQuery);

            if (adminsResult.recordset.length > 0) {
                for (const admin of adminsResult.recordset) {
                    query = `INSERT INTO Notifications (SenderId, ReceiverId, NotificationType, Message) VALUES (@senderId, @receiverId, 'General', @message)`;
                    const adminRequest = new sql.Request();
                    adminRequest.input('senderId', sql.Int, notification.ReceiverId);
                    adminRequest.input('receiverId', sql.Int, admin.UserId);
                    adminRequest.input('message', sql.NVarChar, adminMessage);
                    await adminRequest.query(query);
                }
            }
            
            console.log(`Rejected adminreq/criticreq from user ${notification.SenderId}`);
        }
        // Send message to the sender of the notification
        query = `INSERT INTO Notifications (SenderId, ReceiverId, NotificationType, Message) VALUES (@senderId, @receiverId, 'General', @message)`;
        const messageRequest = new sql.Request();
        messageRequest.input('senderId', sql.Int, notification.ReceiverId);
        messageRequest.input('receiverId', sql.Int, notification.SenderId);
        messageRequest.input('message', sql.NVarChar, messageSender);
        await messageRequest.query(query);
    } catch (error) {
        console.error('Unexpected error:', error);
        res.status(500).send({ success: false, message: 'Internal server error' });
    }
    res.send({ success: true, message: `Rejected notification with ID: ${notificationId}` });
});

// Close a notification by notificationId
router.delete('/close/:notiID', authenticateToken, async (req, res) => {
    const notificationId = parseInt(req.params.notiID, 10);

    if (isNaN(notificationId)) {
        return res.status(400).send({ success: false, message: 'Invalid notification ID' });
    }

    const query = `SELECT * FROM Notifications WHERE NotificationId = @notificationId`; 
    try {
        const request = new sql.Request();
        request.input('notificationId', sql.Int, notificationId);

        const result = await request.query(query);
        if (result.recordset.length === 0) {
            return res.status(404).send({ success: false, message: 'Notification not found' });
        }
        const notification = result.recordset[0];
        if (notification.ReceiverId !== req.userId) {
            return res.status(403).send({ success: false, message: 'You are not authorized to accept this notification' });
        }
        
        // Delete the notification to close it
        const deleteQuery = `DELETE FROM Notifications WHERE NotificationId = @notificationId`;
        const deleteRequest = new sql.Request();
        deleteRequest.input('notificationId', sql.Int, notificationId);
        await deleteRequest.query(deleteQuery);

        console.log(`Closed notification with ID: ${notificationId}`);
        res.send({ success: true, message: `Closed notification with ID: ${notificationId}` });
    } catch (error) {
        console.error('Unexpected error:', error);
        res.status(500).send({ success: false, message: 'Internal server error' });
    }
});

module.exports = router;