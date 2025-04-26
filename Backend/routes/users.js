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
    const { userId } = req.body;
    const loggedInUserId = req.userId;

    if (!userId || isNaN(userId)) {
        return res.status(400).json({ success: false, message: 'Invalid or missing userId' });
    }

    if (loggedInUserId === userId) {
        return res.status(400).json({ success: false, message: 'You cannot unfriend yourself' });
    }
    
    try {
        // Check if the user exists
        const userCheckRequest = new sql.Request();
        userCheckRequest.input('userId', sql.Int, userId);
        const userCheckResult = await userCheckRequest.query(`SELECT * FROM Users WHERE UserID = @userId`);

        if (userCheckResult.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'User not found' });
        }

        // Check if users are friends
        if (!(await isFriend(loggedInUserId, userId))) {
            return res.status(400).json({ success: false, message: 'You are not friends with this user' });
        }

        // Delete friendship 
        const [u1, u2] = loggedInUserId < userId  // u1 is the smaller ID
            ? [loggedInUserId, userId]
            : [userId, loggedInUserId];

        const deleteRequest = new sql.Request();
        deleteRequest.input('user1', sql.Int, u1);
        deleteRequest.input('user2', sql.Int, u2);
        await deleteRequest.query(`
            DELETE FROM Friends
            WHERE User1ID = @user1 AND User2ID = @user2
        `);

        // Message the poor sod
        const result = await sql.query(`SELECT Username FROM Users WHERE UserID = ${loggedInUserId}`)

        const message = `User ${result.recordset[0].Username} has removed you from their friends list`;
        const insertRequest = new sql.Request();
        insertRequest.input('senderId', sql.Int, loggedInUserId);
        insertRequest.input('receiverId', sql.Int, userId);
        insertRequest.input('message', sql.Text, message);

        await insertRequest.query(`INSERT INTO Notifications (SenderId, ReceiverId, Message, NotificationType) VALUES (@senderId, @receiverId, @message, 'General')`)

        res.status(200).json({ success: true, message: 'Friend removed successfully' });
    } catch (error) {
        console.error('Error removing friend:', error);
        res.status(500).json({ success: false, message: 'Internal server error' });
    }
});

// Get total page# of all users (ranked by activity)
router.get('/pageCount', async (req, res) => {
    const pageSize = 25; // Users per page

    try {
        const result = await sql.query(`
            SELECT COUNT(*) AS TotalCount
            FROM Users 
        `);
        const totalCount = result.recordset[0].TotalCount;
        const totalPages = Math.ceil(totalCount / pageSize);

        res.json({ success: true, totalPages });
    } catch (error) {
        console.error('Error fetching total user page count:', error);
        res.status(500).json({ message: 'Internal server error'});
    }
});

// Get paginated users ranked by logged movies
router.get('/page', async (req, res) => {
    const page = parseInt(req.query.page, 10) || 1;
    const pageSize = 25;
    const offset = (page - 1) * pageSize;

    if (page < 1) {
        return res.status(400).json({ success: false, message: 'Page number must be >= 1' });
    }

    try {
        const request = new sql.Request();
        request.input('offset', sql.Int, offset);
        request.input('pageSize', sql.Int, pageSize);

        const result = await request.query(`
            SELECT U.UserID, U.FullName, U.Username, U.Gender, U.UserType, U.Privacy
            FROM Users U
            JOIN Activity A ON U.UserID = A.UserID
            GROUP BY U.UserID, U.FullName, U.Username, U.Gender, U.UserType, U.Privacy
            ORDER BY COUNT(A.IsLogged) DESC
            OFFSET @offset ROWS FETCH NEXT @pageSize ROWS ONLY;
        `);

        if (result.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'No users found for the given page' });
        }

        res.json({ success: true, users: result.recordset });
    } catch (error) {
        console.error('Error fetching paginated users:', error);
        res.status(500).json({ success: false, message: 'Internal server error'});
    }
});

// Search users by username or fullname (Simple search)
router.get('/search/:string', async (req, res) => {
    const searchString = req.params.string;

    try {
        const query = `
            SELECT TOP 10 U.UserID, U.FullName, U.Username, U.Gender, U.UserType, U.Privacy
            FROM Users U
            JOIN Activity A ON U.UserID = A.UserID
            WHERE LOWER(U.FullName) LIKE LOWER(@searchString) OR LOWER(U.Username) LIKE LOWER(@searchString)
			GROUP BY U.UserID, U.FullName, U.Username, U.Gender, U.UserType, U.Privacy
            ORDER BY COUNT(A.IsLogged) DESC;
        `;

        const request = new sql.Request();
        request.input('searchString', sql.VarChar, `%${searchString}%`); 

        const result = await request.query(query);

        if (result.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'No users found' });
        }

        res.json({ success: true, users: result.recordset });
    } catch (error) {
        console.error('Error searching users:', error);
        res.status(500).json({ success: false, message: 'Internal server error'});
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

// Get user's liked movies public ver. (Works if account is public)
router.get('/likedMovies/public/:userid', async (req, res) => {
    let { userid } = req.params;
    userid = parseInt(userid, 10);

    if (!userid || isNaN(userid)) {
        return res.status(400).json({ success: false, message: 'Invalid or missing userId' });
    }

    try {
        // Step 1: Check if user exists and is public
        const userCheckReq = new sql.Request();
        userCheckReq.input('userid', sql.Int, userid);

        const userRes = await userCheckReq.query(`SELECT Privacy FROM Users WHERE UserID = @userid`);

        if (userRes.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'User not found' });
        }

        const { Privacy } = userRes.recordset[0];
        if (Privacy !== 'Public') {
            return res.status(403).json({ success: false, message: 'User profile is private' });
        }

        // Step 2: Fetch the liked movies
        const likedMoviesReq = new sql.Request();
        likedMoviesReq.input('userid', sql.Int, userid);

        const likedMovieRes = await likedMoviesReq.query(`
            SELECT 
                M.MovieID,
                M.Title,
                M.MoviePosterLink
            FROM UserLikedMovies ULM
            JOIN Movies M ON ULM.MovieID = M.MovieID
            WHERE ULM.UserID = @userid
        `);
        const movies = await processMoviesWithDirectors(likedMovieRes.recordset);
        return res.status(200).json({
            success: true,
            likedMovies: movies
        });

    } catch (error) {
        console.error('Error fetching public liked movies:', error);
        return res.status(500).json({ success: false, message: 'Internal server error' });
    }
});

// Get user's liked movies logged in ver. (Works if account is public or if JWT token is passed and the userid is a friend of the logged-in user)
router.get('/likedMovies/:userid', authenticateToken, async (req, res) => {
    let { userid } = req.params;
    userid = parseInt(userid, 10);
    currentUserId = req.userId; // Extract user ID from the authenticated token

    if (!userid || isNaN(userid)) {
        return res.status(400).json({ success: false, message: 'Invalid or missing userId' });
    }

    try {
        // Step 1: Check if user exists and is public
        const userCheckReq = new sql.Request();
        userCheckReq.input('userid', sql.Int, userid);

        const userRes = await userCheckReq.query(`SELECT Privacy FROM Users WHERE UserID = @userid`);

        if (userRes.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'User not found' });
        }

        const { Privacy } = userRes.recordset[0];
        if (Privacy !== 'Public' && !await isFriend(currentUserId, userid)) {
            return res.status(403).json({ success: false, message: 'User profile is private' });
        }

        // Step 2: Fetch the liked movies
        const likedMoviesReq = new sql.Request();
        likedMoviesReq.input('userid', sql.Int, userid);

        const likedMovieRes = await likedMoviesReq.query(`
            SELECT 
                M.MovieID,
                M.Title,
                M.MoviePosterLink
            FROM UserLikedMovies ULM
            JOIN Movies M ON ULM.MovieID = M.MovieID
            WHERE ULM.UserID = @userid
        `);
        const movies = await processMoviesWithDirectors(likedMovieRes.recordset);
        return res.status(200).json({
            success: true,
            likedMovies: movies
        });

    } catch (error) {
        console.error('Error fetching liked movies:', error);
        return res.status(500).json({ success: false, message: 'Internal server error' });
    }
});

// Get user's loggedMovies public ver. (Works if account is public)
router.get('/loggedMovies/public/:userid', async (req, res) => {
    let { userid } = req.params;
    userid = parseInt(userid, 10);

    if (!userid || isNaN(userid)) {
        return res.status(400).json({ success: false, message: 'Invalid or missing userId' });
    }

    try {
        // Step 1: Check if user exists and is public
        const userCheckReq = new sql.Request();
        userCheckReq.input('userid', sql.Int, userid);

        const userRes = await userCheckReq.query(`SELECT Privacy FROM Users WHERE UserID = @userid`);

        if (userRes.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'User not found' });
        }

        const { Privacy } = userRes.recordset[0];
        if (Privacy !== 'Public') {
            return res.status(403).json({ success: false, message: 'User profile is private' });
        }

        // Step 2: Fetch the loggedMovies
        const loggedMoviesReq = new sql.Request();
        loggedMoviesReq.input('userid', sql.Int, userid);

        const loggedMoviesRes = await loggedMoviesReq.query(`
            SELECT 
                M.MovieID,
                M.Title,
                M.MoviePosterLink,
                A.ActivityDateTime AS AddedAt
            FROM Activity A
            JOIN Movies M ON A.MovieID = M.MovieID
            WHERE A.UserID = @userid AND A.IsLogged = 1
            ORDER BY A.ActivityDateTime DESC
        `);
        const movies = await processMoviesWithDirectors(loggedMoviesRes.recordset);
        return res.status(200).json({
            success: true,
            loggedMovies: movies
        });

    } catch (error) {
        console.error('Error fetching public loggedMovies:', error);
        return res.status(500).json({ success: false, message: 'Internal server error' });
    }
});

// Get user's loggedMovies logged in ver. (Works if account is public or if JWT token is passed and the userid is a friend of the logged-in user)
router.get('/loggedMovies/:userid', authenticateToken, async (req, res) => {
    let { userid } = req.params;
    userid = parseInt(userid, 10);
    currentUserId = req.userId; // Extract user ID from the authenticated token

    if (!userid || isNaN(userid)) {
        return res.status(400).json({ success: false, message: 'Invalid or missing userId' });
    }

    try {
        // Step 1: Check if user exists and is public
        const userCheckReq = new sql.Request();
        userCheckReq.input('userid', sql.Int, userid);

        const userRes = await userCheckReq.query(`SELECT Privacy FROM Users WHERE UserID = @userid`);

        if (userRes.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'User not found' });
        }

        const { Privacy } = userRes.recordset[0];
        if (Privacy !== 'Public' && !await isFriend(currentUserId, userid)) {
            return res.status(403).json({ success: false, message: 'User profile is private' });
        }

        // Step 2: Fetch the loggedMovies
        const loggedMoviesReq = new sql.Request();
        loggedMoviesReq.input('userid', sql.Int, userid);

        const loggedMoviesRes = await loggedMoviesReq.query(`
            SELECT 
                M.MovieID,
                M.Title,
                M.MoviePosterLink,
                A.ActivityDateTime AS AddedAt
            FROM Activity A
            JOIN Movies M ON A.MovieID = M.MovieID
            WHERE A.UserID = @userid AND A.IsLogged = 1
            ORDER BY A.ActivityDateTime DESC
        `);
        const movies = await processMoviesWithDirectors(loggedMoviesRes.recordset);
        return res.status(200).json({
            success: true,
            loggedMovies: movies
        });

    } catch (error) {
        console.error('Error fetching loggedMovies:', error);
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
