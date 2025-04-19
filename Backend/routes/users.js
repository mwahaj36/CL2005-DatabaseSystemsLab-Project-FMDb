const express = require('express');
const sql = require('mssql');
const { authenticateToken, jwt } = require('../middleware/authMiddleware'); 
const { getUserBaseStats, getUserExtraStats, isFriend } = require('../utils/userDetails');
const router = express.Router();

// Get Top 3 Users (Leaderboard)
router.get('/leaderboard', async (req, res) => {
    const query = `
        SELECT TOP 3 v.UserID, u.Username, v.ActivityCount, v.MoviesWatchedCount, v.Score, v.Rank FROM v_Leaderboard v JOIN Users u ON v.UserID = u.UserID
    `;
    try{
    const result = await sql.query(query);
    if (result.recordset.length === 0) {
        return res.status(404).json({ success: false, message: 'No users found' });
    }
    
    res.send({ success: true, users: result.recordset });
    } catch (error) {
        res.status(500).send({ success: false, message: 'Internal server error' });
    }
});

// Send Friend Request (Requires JWT token with userid)
router.post('/friendRequest', authenticateToken, async (req, res) => {
    const { userId, message } = req.body; // Extract userId and message from the request body
    const loggedInUserId = req.userId; // Extract user ID from the authenticated token

    if (!userId || isNaN(userId)) {
        return res.status(400).json({ success: false, message: 'Invalid or missing userId' });
    }

    if (loggedInUserId === userId) {
        return res.status(400).json({ success: false, message: 'You cannot send a friend request to yourself' });
    }

    try {
        // check if the user exists
        const userCheckQuery = `
            SELECT * FROM Users WHERE UserID = @userId
        `;
        const userCheckRequest = new sql.Request();
        userCheckRequest.input('userId', sql.Int, userId);
        const userCheckResult = await userCheckRequest.query(userCheckQuery);
        
        if (userCheckResult.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'User not found' });
        }

        // check if the logged-in user is already friends with the target user
        if (await isFriend(loggedInUserId, userId)) {
            return res.status(400).json({ success: false, message: 'You are already friends with this user' });
        }

        // Check if a friend request already exists
        const checkRequestQuery = `
            SELECT * FROM Notifications 
            WHERE SenderID = @senderId AND ReceiverID = @receiverId AND NotificationType = 'FriendReq'
        `;
        const checkRequest = new sql.Request();
        checkRequest.input('senderId', sql.Int, loggedInUserId);
        checkRequest.input('receiverId', sql.Int, userId);
        const checkResult = await checkRequest.query(checkRequestQuery);

        if (checkResult.recordset.length > 0) {
            return res.status(400).json({ success: false, message: 'Friend request already sent' });
        }

        // Insert the friend request into the database
        const insertRequestQuery = `
            INSERT INTO Notifications(SenderID, ReceiverID, Message, NotificationType) 
            VALUES (@senderId, @receiverId, @message, 'FriendReq')
        `;
        const insertRequest = new sql.Request();
        insertRequest.input('senderId', sql.Int, loggedInUserId);
        insertRequest.input('receiverId', sql.Int, userId);
        insertRequest.input('message', sql.NVarChar, message || `User ${loggedInUserId} sent you a friend request`);
        await insertRequest.query(insertRequestQuery);

        res.status(200).json({ success: true, message: 'Friend request sent successfully' });
    } catch (error) {
        console.error('Error sending friend request:', error);
        res.status(500).json({ success: false, message: 'Internal server error' });
    }
});

// Get user profile logged out ver.
router.get('/public/:userid', async (req, res) => {
    const userId = parseInt(req.params.userid, 10); // Extract userId from the request parameters

    if (!userId || isNaN(userId)) {
        return res.status(400).json({ success: false, message: 'Invalid or missing userId' });
    }

    try {
        // Fetch user details from the database
        const query = `
            SELECT FullName, Username, Email, Gender, DateOfBirth, Bio, UserType, Privacy FROM Users WHERE UserID = @userId
        `;
        const request = new sql.Request();
        request.input('userId', sql.Int, userId);
        const result = await request.query(query);

        if (result.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'User not found' });
        }

        const user = result.recordset[0];

        // 2. Always fetch general activity stats
        const basicDetails = await getUserBaseStats(userId);
        
        // 3. Only fetch extended info if profile is public
        if (user.Privacy === 'Public') {
            const extraDetails = await getUserExtraStats(userId);
       
            return res.status(200).json({
                success: true,
                user,
                basicDetails,
                favoriteMovies: extraDetails.favoriteMovies,
                recentActivities: extraDetails.recentActivities,
                yearlyStats: extraDetails.yearlyStats                
            });
        } else {
            return res.status(200).json({
                success: true,
                user,
                basicDetails
            });
        }
    } catch (error) {
        console.error('Error fetching user profile:', error);
        res.status(500).json({ success: false, message: 'Internal server error' });
    }
});

// Get user profile logged in ver. (if JWT token is passed and account is a friend of the logged-in user or account is public)
router.get('/:userid', authenticateToken, async (req, res) => {
    const userId = parseInt(req.params.userid, 10); // Extract userId from the request parameters

    if (!userId || isNaN(userId)) {
        return res.status(400).json({ success: false, message: 'Invalid or missing userId' });
    }

    const loggedInUserId = req.userId; // Extract user ID from the authenticated token

    try {
        // Fetch user details from the database
        const query = `
            SELECT FullName, Username, Email, Gender, DateOfBirth, Bio, UserType, Privacy FROM Users WHERE UserID = @userId
        `;
        const request = new sql.Request();
        request.input('userId', sql.Int, userId);
        const result = await request.query(query);

        if (result.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'User not found' });
        }

        const user = result.recordset[0];

        // 2. Always fetch general activity stats
        const basicDetails = await getUserBaseStats(userId);
        
        // 3. Only fetch extended info if profile is public, or if the logged-in user is a friend
        if (user.Privacy === 'Public' || await isFriend(loggedInUserId, userId)) {
            const extraDetails = await getUserExtraStats(userId);
       
            return res.status(200).json({
                success: true,
                user,
                basicDetails,
                favoriteMovies: extraDetails.favoriteMovies,
                recentActivities: extraDetails.recentActivities,
                yearlyStats: extraDetails.yearlyStats                
            });
        } else {
            return res.status(200).json({
                success: true,
                user,
                basicDetails
            });
        }
    } catch (error) {
        console.error('Error fetching user profile:', error);
        res.status(500).json({ success: false, message: 'Internal server error' });
    }
});

// Get friends list (Works only if accounts are public or if JWT token is passed and account is friend of the logged-in user)
router.get('/friends/:userid', async (req, res) => {
    // Fetch friends of a user (Check account visibility and friendship status)
});

// Update user profile (Requires JWT token with userid)
router.put('/', async (req, res) => {
    // Update user details (bio, username, profile picture, etc.) (Requires authentication via JWT)
});

router.get('/logged/:userId', async (req, res) => {
    // Fetch target user's privacy settings and logged movies
    const targetUser = await getUserById(targetUserId); // Replace with actual DB query to fetch user details
    if (!targetUser) {
        return res.status(404).json({ message: 'User not found' });
    }

    if (loggedInUserId === targetUserId) {
        // Logged-in user viewing their own logged movies
        const movies = await getLoggedMoviesByUser(targetUserId); // Replace with actual DB query
        return res.json(movies);
    }

    if (loggedInUserId && isFriend(loggedInUserId, targetUserId)) {
        // Logged-in user viewing a friend's logged movies
        const movies = await getLoggedMoviesByUser(targetUserId); // Replace with actual DB query
        return res.json(movies);
    }

    if (targetUser.privacy === 'public') {
        // Public account, anyone can view
        const movies = await getLoggedMoviesByUser(targetUserId); // Replace with actual DB query
        return res.json(movies);
    }

    return res.status(403).json({ message: 'Access denied' });

});


module.exports = router;
