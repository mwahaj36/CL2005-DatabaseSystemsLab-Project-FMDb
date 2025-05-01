const express = require('express');
const sql = require('mssql'); 
const { authenticateToken, jwt } = require('../middleware/authMiddleware'); 
const router = express.Router();

// Get all notifications of current user
router.get('/user', authenticateToken, async (req, res) => {
    const userId = req.userId;
    try {
        const request = new sql.Request();
        request.input('userId', sql.Int, userId);

        const result = await request.query(`
            SELECT N.NotificationID, N.SenderID, U.Username, N.ReceiverID, N.Message, N.NotificationType, N.SentAt 
            FROM Notifications N 
            JOIN Users U ON N.SenderID = U.UserID 
            WHERE ReceiverID = @userId
        `);

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
         
    try {
        const chkRequest = new sql.Request();
        chkRequest.input('notificationId', sql.Int, notificationId);

        const result = await chkRequest.query(`            
            SELECT N.NotificationID, N.SenderID, U.Username AS SenderName, N.ReceiverID, U1.Username AS ReceiverName, N.Message, N.NotificationType, N.SentAt 
            FROM Notifications N 
            JOIN Users U ON N.SenderID = U.UserID 
			JOIN Users U1 ON N.ReceiverID = U1.UserID
            WHERE NotificationID = @notificationId
        `);
        if (result.recordset.length === 0) {
            return res.status(404).send({ success: false, message: 'Notification not found' });
        }
        const notification = result.recordset[0];
        if (notification.NotificationType === 'General') {
            return res.status(400).send({ success: false, message: 'Cannot accept a general notification' });
        }
        if (notification.ReceiverID !== req.userId) {
            return res.status(403).send({ success: false, message: 'You are not authorized to accept this notification' });
        }
        
        // Delete the notification after accepting it
        sql.query(`DELETE FROM Notifications WHERE NotificationId = ${notification.NotificationID}`);
        let messageSender;
        const request = new sql.Request();
        

        if (notification.NotificationType === 'FriendReq') {
            const [u1, u2] = notification.ReceiverID < notification.SenderID
                ? [notification.ReceiverID, notification.SenderID]
                : [notification.SenderID, notification.ReceiverID];
            
            request.input('u1', sql.Int, u1);
            request.input('u2', sql.Int, u2);
        
            await request.query(`INSERT INTO Friends (User1ID, User2ID) VALUES (@u1, @u2)`);
            messageSender = `User ${notification.ReceiverName} accepted your friend request!`;            
            console.log(`Accepted friend request from user ${notification.SenderName}`);
        } else {
            // Delete this request for all admins
            sql.query(`DELETE FROM Notifications WHERE NotificationType IN ('AdminReq', 'CriticReq') AND SenderID = ${notification.SenderID}`);
            let adminMessage;
            console.log(notification.SenderID);

            if (notification.NotificationType === 'AdminReq') {
                // promote sender to admin
                request.input('senderId', sql.Int, notification.SenderID);
                await request.query(`UPDATE Users SET UserType = 'Admin' WHERE UserID = @senderId`);
                messageSender = `You have been promoted to Admin by user ${notification.ReceiverName}`;
                adminMessage = `User ${notification.SenderName} has been promoted to Admin!`;

            } else if (notification.NotificationType === 'CriticReq') {
                // promote sender to critic
                request.input('senderId', sql.Int, notification.SenderID);
                await request.query(`UPDATE Users SET UserType = 'Critic' WHERE UserID = @senderId`);
                messageSender = `You have been promoted to Critic by user ${notification.ReceiverName}`;
                adminMessage = `User ${notification.SenderName} has been promoted to Critic!`;
            }
            // Send message to all admins that user has been promoted to admin/critic
            // Get all admins from the Users table
            const request1 = new sql.Request();
            request1.input('receiverId', sql.Int, notification.ReceiverID);
            request1.input('senderId', sql.Int, notification.SenderID);
            const adminsResult = await request1.query(`SELECT UserID FROM Users WHERE UserType = 'Admin' AND UserID NOT IN (@receiverId, @senderId)`);
            console.log(adminsResult.recordset);


            if (adminsResult.recordset.length > 0) {
                for (const admin of adminsResult.recordset) {
                    const adminRequest = new sql.Request();
                    adminRequest.input('senderId', sql.Int, notification.ReceiverID);
                    adminRequest.input('receiverId', sql.Int, admin.UserID);
                    adminRequest.input('message', sql.NVarChar, adminMessage);
                    await adminRequest.query(`INSERT INTO Notifications (SenderID, ReceiverID, NotificationType, Message) VALUES (@senderId, @receiverId, 'General', @message)`);
                }
            }
            console.log(`Accepted adminreq/criticreq from user ${notification.SenderName}`);
        }
        // Send message to the sender of the notification
        const messageRequest = new sql.Request();
        messageRequest.input('senderId', sql.Int, notification.ReceiverID);
        messageRequest.input('receiverId', sql.Int, notification.SenderID);
        messageRequest.input('message', sql.NVarChar, messageSender);
        await messageRequest.query(`INSERT INTO Notifications (SenderID, ReceiverID, NotificationType, Message) VALUES (@senderId, @receiverId, 'General', @message)`);    
        res.send({ success: true, message: `Accepted notification`, notification });

    } catch (error) {
        console.error('Unexpected error:', error);
        res.status(500).send({ success: false, message: 'Internal server error' });
    }
});

// Reject a notification by notificationId
router.post('/reject/:notiID', authenticateToken, async (req, res) => {
    const notificationId = parseInt(req.params.notiID, 10);

    if (isNaN(notificationId)) {
        return res.status(400).send({ success: false, message: 'Invalid notification ID' });
    }

    try {
        const chkRequest = new sql.Request();
        chkRequest.input('notificationId', sql.Int, notificationId);

        const result = await chkRequest.query(`
            SELECT N.NotificationID, N.SenderID, U.Username AS SenderName, N.ReceiverID, U1.Username AS ReceiverName, N.Message, N.NotificationType, N.SentAt 
            FROM Notifications N 
            JOIN Users U ON N.SenderID = U.UserID 
			JOIN Users U1 ON N.ReceiverID = U1.UserID
            WHERE NotificationID = @notificationId
        `);
        if (result.recordset.length === 0) {
            return res.status(404).send({ success: false, message: 'Notification not found' });
        }
        const notification = result.recordset[0];
        if (notification.NotificationType === 'General') {
            return res.status(400).send({ success: false, message: 'Cannot reject a general notification' });
        } 
        if (notification.ReceiverID !== req.userId) {
            return res.status(403).send({ success: false, message: 'You are not authorized to reject this notification' });
        }

        // Delete the notification after rejecting it
        sql.query(`DELETE FROM Notifications WHERE NotificationID = ${notification.NotificationID}`);
        let messageSender;

        if (notification.NotificationType === 'FriendReq') {
            messageSender = `User ${notification.ReceiverName} rejected your friend request!`;
            console.log(`Rejected friend request from user ${notification.SenderName}`);
        } else {
            // Delete this request for all admins
            sql.query(`DELETE FROM Notifications WHERE NotificationType IN ('AdminReq', 'CriticReq') AND SenderID = ${notification.SenderID}`);
            let adminMessage;

            if (notification.NotificationType === 'AdminReq') {
                messageSender = `You have been rejected the status of Admin by user ${notification.ReceiverName}`;
                adminMessage = `User ${notification.SenderName} has been rejected the status of Admin!`;
            } else if (notification.NotificationType === 'CriticReq') {
                messageSender = `You have been rejected the status of Critic by user ${notification.ReceiverName}`;
                adminMessage = `User ${notification.SenderName} has been rejected the status of Critic!`;
            }
            // Send message to all admins that user has been rejected the status of admin/critic
            // Get all admins from the Users table
            const request = new sql.Request();
            request.input('receiverId', sql.Int, notification.ReceiverID);
            const adminsResult = await request.query(`SELECT UserID FROM Users WHERE UserType = 'Admin' AND UserID != @receiverId`);

            if (adminsResult.recordset.length > 0) {
                for (const admin of adminsResult.recordset) {
                    const adminRequest = new sql.Request();
                    adminRequest.input('senderId', sql.Int, notification.ReceiverID);
                    adminRequest.input('receiverId', sql.Int, admin.UserID);
                    adminRequest.input('message', sql.NVarChar, adminMessage);
                    await adminRequest.query(`INSERT INTO Notifications (SenderID, ReceiverID, NotificationType, Message) VALUES (@senderId, @receiverId, 'General', @message)`);
                }
            }
            console.log(`Rejected adminreq/criticreq from user ${notification.SenderName}`);
        }
        // Send message to the sender of the notification
        const messageRequest = new sql.Request();
        messageRequest.input('senderId', sql.Int, notification.ReceiverID);
        messageRequest.input('receiverId', sql.Int, notification.SenderID);
        messageRequest.input('message', sql.NVarChar, messageSender);
        await messageRequest.query(`INSERT INTO Notifications (SenderID, ReceiverID, NotificationType, Message) VALUES (@senderId, @receiverId, 'General', @message)`);
        res.send({ success: true, message: `Rejected notification`, notification });

    } catch (error) {
        console.error('Unexpected error:', error);
        res.status(500).send({ success: false, message: 'Internal server error' });
    }
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
        if (notification.ReceiverID !== req.userId) {
            return res.status(403).send({ success: false, message: 'You are not authorized to close this notification' });
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

// Get IsFriendReqPending of given user with current user
router.get('/isFriendReq/:userId', authenticateToken, async(req, res) => {
    const targetUserId = parseInt(req.params.userId, 10);
    const loggedInUserId = req.userId;

    if (isNaN(targetUserId)) {
        return res.status(400).json({ success: false, message: 'Invalid userId parameter' });
    }

    try {
        // Check for existing pending friend request
        const request = new sql.Request();
        request.input('senderId', sql.Int, loggedInUserId);
        request.input('receiverId', sql.Int, targetUserId);

        const result = await request.query(`
            SELECT COUNT(*) AS Count
            FROM Notifications
            WHERE SenderID = @senderId
              AND ReceiverID = @receiverId
              AND NotificationType = 'FriendReq'
        `);
        
        res.json({ success: true, exists: result.recordset[0].Count > 0 ? true : false });
    } catch (error) {
        console.error('Error checking pending friend request:', error.message);
        res.status(500).json({ success: false, message: 'Internal server error' });
    }
});

// Get pending admin requests for the authenticated user
router.get('/isAdminReq', authenticateToken, async (req, res) => {
    const loggedInUserId = req.userId;
    try {
        const request = new sql.Request();
        request.input('userId', sql.Int, loggedInUserId);

        const result = await request.query(`
            SELECT COUNT(*) AS Count
            FROM Notifications
            WHERE SenderID = @userId
              AND NotificationType = 'AdminReq'
        `);
        
        res.json({ success: true, exists: result.recordset[0].Count > 0 ? true : false });
    } catch (error) {
        console.error('Error fetching admin requests:', error.message);
        res.status(500).json({ success: false, message: 'Internal server error' });
    }
});

// Get pending critic requests for the authenticated user
router.get('/isCriticReq', authenticateToken, async (req, res) => {
    const loggedInUserId = req.userId;
    try {
        const request = new sql.Request();
        request.input('userId', sql.Int, loggedInUserId);

        const result = await request.query(`
            SELECT COUNT(*) AS Count
            FROM Notifications
            WHERE SenderID = @userId
              AND NotificationType = 'CriticReq'
        `);
        
        res.json({ success: true, exists: result.recordset[0].Count > 0 ? true : false });
    } catch (error) {
        console.error('Error fetching critic requests:', error.message);
        res.status(500).json({ success: false, message: 'Internal server error' });
    }
});


module.exports = router;