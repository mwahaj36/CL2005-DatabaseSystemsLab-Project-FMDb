const express = require('express');
const sql = require('mssql');
const { authenticateToken, jwt } = require('../middleware/authMiddleware'); 
const { getUserBaseStats, getUserExtraStats, isFriend } = require('../utils/userDetails');
const { processMoviesWithDirectors } = require('../utils/processMovies');
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

// Remove Friend (Requires JWT token with userid)
router.delete('/removeFriend', authenticateToken, async (req, res) => {
    const { userId } = req.body; // Extract userId from the request body
    const loggedInUserId = req.userId; // Extract user ID from the authenticated token

    

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
router.get('/logged/:userid', authenticateToken, async (req, res) => {
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

// Get friends list logged out ver.(Works only if accounts are public)
router.get('/public/friends/:userid', async (req, res) => {
    const userId = parseInt(req.params.userid, 10);
    if (!userId || isNaN(userId)) {
      return res.status(400).json({ success: false, message: 'Invalid or missing userId' });
    }
  
    try {
        // Check target user's privacy
        const privacyReq = new sql.Request();
        privacyReq.input('userId', sql.Int, userId);
        const privacyRes = await privacyReq.query(`
            SELECT Privacy 
            FROM Users 
            WHERE UserID = @userId
        `);
        if (privacyRes.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'User not found' });
        }
        const { Privacy } = privacyRes.recordset[0];
        if (Privacy !== 'Public') {
            return res.status(403).json({ success: false, message: 'User profile is private' });
        }

        // Fetch this user's friends 
        const friendsReq = new sql.Request();
        friendsReq.input('userId', sql.Int, userId);
        const friendsRes = await friendsReq.query(`
        SELECT UserID, FullName, Username, Gender, Bio, UserType, Privacy
        FROM Users 
        WHERE UserID IN (
            SELECT User2ID FROM Friends WHERE User1ID = @userId
            UNION
            SELECT User1ID FROM Friends WHERE User2ID = @userId
        )
        `);

        // Return list
        return res.status(200).json({
        success: true,
        friends: friendsRes.recordset
        });
    } catch (error) {
      console.error('Error fetching friends list:', error);
      return res.status(500).json({ success: false, message: 'Internal server error' });
    }
});

// Get friends list logged in ver. (Works only if accounts are public or if isFriend)
router.get('/friends/:userid', authenticateToken, async (req, res) => {
    const userId = parseInt(req.params.userid, 10);
    const loggedInUserId = req.userId; 

    if (!userId || isNaN(userId)) {
        return res.status(400).json({ success: false, message: 'Invalid or missing userId' });
    }
  
    try {
        // Fetch target user's privacy
        const privacyReq = new sql.Request();
        privacyReq.input('userId', sql.Int, userId);
        const privacyRes = await privacyReq.query(`
        SELECT Privacy
        FROM Users
        WHERE UserID = @userId
        `);
        if (privacyRes.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'User not found' });
        }
        const { Privacy } = privacyRes.recordset[0];

        // Check if we’re allowed (public profile OR friends)
        if (Privacy === 'Public' || await isFriend(loggedInUserId, userId)) {  
            // 3. Fetch this user's friends
            const friendsReq = new sql.Request();
            friendsReq.input('userId', sql.Int, userId);
            const friendsRes = await friendsReq.query(`
                SELECT UserID, FullName, Username, Gender, Bio, UserType, Privacy
                FROM Users 
                WHERE UserID IN (
                    SELECT User2ID FROM Friends WHERE User1ID = @userId
                    UNION
                    SELECT User1ID FROM Friends WHERE User2ID = @userId
                )
            `);
        
            // 4. Return friends list
            return res.status(200).json({
                success: true,
                friends: friendsRes.recordset
            });
        } else {
            return res.status(403).json({ success: false, message: 'User profile is private' });
        }
    } catch (error) {
      console.error('Error fetching friends list:', error);
      return res.status(500).json({ success: false, message: 'Internal server error' });
    }
  });

// Update user profile (Requires JWT token with userid)
router.put('/', authenticateToken, async (req, res) => {
    const userId = req.userId;  // set by authenticateToken
    const {FullName, Username, Email, Bio, Privacy, Gender, DateOfBirth} = req.body;
    
    

    // Validate privacy
    const allowedPrivacy = ['Public', 'Private'];
    if (Privacy && !allowedPrivacy.includes(Privacy)) {
        return res.status(400).json({ success: false, message: 'Invalid privacy value' });
    }


    // Validate Gender
    const allowedGender = ['Male', 'Female', 'Other'];
    if (Gender && !allowedGender.includes(Gender)) {
        return res.status(400).json({ success: false, message: 'Invalid Gender Value' });
    }
    
    // Build dynamic SET clause
    const fields = [];
    const request = new sql.Request();
    request.input('userId', sql.Int, userId);
    
    if (FullName !== undefined) {
        fields.push('FullName = @FullName');
        request.input('FullName', sql.VarChar(255), FullName);
    }
    if (Username !== undefined) {
        fields.push('Username = @Username');
        request.input('Username', sql.VarChar(50), Username);
    }
    if (Email !== undefined) {
        fields.push('Email = @Email');
        request.input('Email', sql.VarChar(255), Email);
    }
    if (Bio !== undefined) {
        fields.push('Bio = @Bio');
        request.input('Bio', sql.Text, Bio);
    }
    if (Privacy !== undefined) {
        fields.push('Privacy = @Privacy');
        request.input('Privacy', sql.VarChar(10), Privacy);
    }
    if (Gender !== undefined) {
        fields.push('Gender = @Gender');
        request.input('Gender', sql.VarChar(10), Gender);
    }
    if (DateOfBirth !== undefined) {
        fields.push('DateOfBirth = @DateOfBirth');
        request.input('DateOfBirth', sql.Date, DateOfBirth);
    }
    
    if (fields.length === 0) {
        return res.status(400).json({ success: false, message: 'No profile fields provided to update' });
    }
    
    try {
        const updateQuery = `
        UPDATE Users
        SET ${fields.join(', ')}
        WHERE UserID = @userId;
  
        SELECT FullName, Username, Email, Gender, DateOfBirth, Bio, UserType, Privacy
        FROM Users
        WHERE UserID = @userId;
      `;
        const result = await request.query(updateQuery);
        if (result.rowsAffected[0] === 0) {
            return res.status(404).json({ success: false, message: 'Insertion Failed' });
        }

        const updatedUser = result.recordset[0];
        
        return res.status(200).json({
            success: true,
            message: 'Profile updated successfully',
            user: updatedUser
        });
    } catch (error) {
        console.error('Error updating user profile:', error);
        return res.status(500).json({ success: false, message: 'Internal server error' });
    }
});
  
// Edit Favorite Movies (Requires JWT token with userid)
router.put('/favoriteMovies', authenticateToken, async (req, res) => {
    const userId = req.userId;  // set by authenticateToken
    const { movieId, rank } = req.body; // rank determines the order of the movie in the list

    if (!movieId || isNaN(movieId)) {
        return res.status(400).json({ success: false, message: 'Invalid or missing movieId' });
    }
    if (!rank || isNaN(rank) || rank < 1 || rank > 4) {
        return res.status(400).json({ success: false, message: 'Invalid or missing rank' });
    }

    try {
        // Check if the movie already exists in the user's favorites
        const checkQuery = `
            SELECT * FROM UserFavorites WHERE UserID = @userId AND MovieID = @movieId
        `;
        const checkRequest = new sql.Request();
        checkRequest.input('userId', sql.Int, userId);
        checkRequest.input('movieId', sql.Int, movieId);
        const checkResult = await checkRequest.query(checkQuery);
        
        // if it exists, check rank, if rank is the same, return. if rank is not the same, delete previous entry and insert new one
        if (checkResult.recordset.length > 0) {
            if (checkResult.recordset[0].Rank === rank) {
                return res.status(200).json({ success: true, message: 'Movie already exists in favorites with the same rank' });
            } else {
                // Delete the existing entry
                const deleteRequest = new sql.Request();
                deleteRequest.input('userId', sql.Int, userId);
                deleteRequest.input('movieId', sql.Int, movieId);
                await deleteRequest.query(`DELETE FROM UserFavorites WHERE UserID = @userId AND MovieID = @movieId`);
            }
        }

        // Check if the rank is already taken by another movie
        const checkRankRequest = new sql.Request();
        checkRankRequest.input('userId', sql.Int, userId);
        checkRankRequest.input('rank', sql.Int, rank);
        const checkRankResult = await checkRankRequest.query(`SELECT * FROM UserFavorites WHERE UserID = @userId AND Rank = @rank`);

        // If rank is taken, delete the existing entry
        if (checkRankResult.recordset.length > 0) {
            const deleteRankRequest = new sql.Request();
            deleteRankRequest.input('userId', sql.Int, userId);
            deleteRankRequest.input('rank', sql.Int, rank);
            await deleteRankRequest.query(`DELETE FROM UserFavorites WHERE UserID = @userId AND Rank = @rank`);
        }

        const request = new sql.Request();
        request.input('userId', sql.Int, userId);
        request.input('movieId', sql.Int, movieId);
        request.input('rank', sql.Int, rank);

        const result = await request.query(`INSERT INTO UserFavorites(UserID, MovieID, Rank) VALUES (@userId, @movieId, @rank)`);

        if (result.rowsAffected[0] === 0) {
            return res.status(404).json({ success: false, message: 'Insertion Failed' });
        }

        return res.status(200).json({ success: true, message: 'Movie added to favorites' });
    } catch (error) {
        console.error('Error updating favorite movies:', error);
        return res.status(500).json({ success: false, message: 'Internal server error' });
    }
});

// Request User Type Change (Requires JWT token with userid)
router.put('/userType', authenticateToken, async (req, res) => {
    const userId = req.userId;
    const { userType, message } = req.body;

    const allowedUserTypes = ['Admin', 'User', 'Critic'];
    if (!userType || !allowedUserTypes.includes(userType)) {
        return res.status(400).json({ success: false, message: 'Invalid or missing new user type' });
    }

    try {
        const userReq = new sql.Request();
        userReq.input('userId', sql.Int, userId);
        const userResult = await userReq.query(`SELECT UserType, Username FROM Users WHERE UserID = @userId`);

        if (userResult.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'User not found' });
        }

        const currentType = userResult.recordset[0].UserType;

        if (currentType === userType) {
            return res.status(400).json({ success: false, message: 'You already have this user type' });
        }

        const rank = { 'User': 1, 'Critic': 2, 'Admin': 3 };

        if (rank[userType] > rank[currentType]) {
            // Requesting promotion — insert request into UserTypeChangeRequests table
            const notiType = userType === 'Admin' ? 'AdminReq' : 'CriticReq';

            const insertReq = new sql.Request();
            insertReq.input('userId', sql.Int, userId);
            insertReq.input('notiType', sql.VarChar(20), notiType);
            insertReq.input('message', sql.Text, message || `User ${userResult.recordset[0].Username} requested a user type change to ${userType}`);
            await insertReq.query(`
                INSERT INTO Notifications (SenderID, ReceiverID, NotificationType, Message)
                SELECT 
                    @userId,
                    U.UserID,
                    @notiType,
                    @message
                    FROM Users U
                WHERE U.UserType = 'Admin'
            `);

            return res.status(200).json({ success: true, message: 'User type change request sent for approval' });
        } else {
            // Downgrade or lateral — update immediately
            const updateReq = new sql.Request();
            updateReq.input('userId', sql.Int, userId);
            updateReq.input('newType', sql.VarChar(20), userType);
            await updateReq.query(`UPDATE Users SET UserType = @newType WHERE UserID = @userId`);

            return res.status(200).json({ success: true, message: 'User type updated successfully' });
        }
    } catch (error) {
        console.error('Error handling user type change:', error);
        return res.status(500).json({ success: false, message: 'Internal server error' });
    }
});

// Get Current User Favorites (Requires JWT token with userid)
router.get('/favorites', authenticateToken, async (req, res) => {
    const userId = req.userId;  // set by authenticateToken
    
    try {
        const request = new sql.Request();
        request.input('userId', sql.Int, userId);
        const result = await request.query(`
            SELECT M.Title, M.MoviePosterLink, M.MovieID, UF.Rank
            FROM UserFavorites UF
            JOIN Movies M ON UF.MovieID = M.MovieID
            WHERE UF.UserID = @userId
            ORDER BY UF.Rank ASC
        `);

        if (result.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'No favorite movies found' });
        }

        const movies = await processMoviesWithDirectors(result.recordset);
    
        return res.status(200).json({
            success: true,
            favorites: movies
        });
    } catch (error) {
        console.error('Error fetching favorite movies:', error);
        return res.status(500).json({ success: false, message: 'Internal server error' });
    }
});

// Get IsFriend (Requires JWT token with userid)
router.get('/isFriend/:userid', authenticateToken, async(req, res) => {
    const userId = parseInt(req.params.userid, 10);
    const loggedInUserId = req.userId; 

    if (!userId || isNaN(userId)) {
        return res.status(400).json({ success: false, message: 'Invalid or missing userId' });
    }

    try{
        if (await isFriend(userId, loggedInUserId))
            return res.status(200).json({success: true, isFriend: true});
        else 
            return res.status(200).json({success: true, isFriend: false});
    }
    catch (error) {
        console.error('Error fetching isFriend:', error);
        return res.status(500).json({ success: false, message: 'Internal server error' });
    }
});

module.exports = router;
