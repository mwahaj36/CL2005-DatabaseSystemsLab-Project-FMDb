const express = require('express');
const sql = require('mssql'); 
const { authenticateToken, jwt } = require('../middleware/authMiddleware'); 
const router = express.Router();

// Add a movie to watchlist (Requires JWT token with userid)
router.post('/:movieId', authenticateToken, async (req, res) => {
    let { movieId } = req.params;
    if (!movieId) {
        return res.status(400).send({ success: false, message: 'movieId parameter is required.' });
    }
    movieId = parseInt(movieId, 10);
    if (isNaN(movieId)) {
        return res.status(400).send({ success: false, message: 'Invalid movieId. It must be a number.' });
    }

    const userId = req.userId; // Extract user ID from the authenticated token

    const query = `INSERT INTO UserWatchlist (UserID, MovieID) VALUES (@userId, @movieId)`;
    try {
        const request = new sql.Request();
        request.input('userId', sql.Int, userId);
        request.input('movieId', sql.Int, movieId);

        await request.query(query);
        res.status(201).send({ success: true, message: 'Movie added to watchlist successfully.' });
    } catch (error) {
        console.error('Unexpected error:', error);
        res.status(500).send({ success: false, message: 'An error occurred while adding the movie to the watchlist.' });
    }
});

router.get('/public/:userid', async (req, res) => {
    let { userid } = req.params;
    



});

// Get user's watchlist logged in ver. (Works if account is public or if JWT token is passed and the userid is a friend of the logged-in user)
router.get('/:userid', authenticateToken, async (req, res) => {
    let { userid } = req.params;
    if (!userid) {
        return res.status(400).send({ success: false, message: 'userid parameter is required.' });
    } 
    userId = parseInt(userId, 10);
    if (isNaN(userId)) {
        return res.status(400).send({ success: false, message: 'Invalid userId. It must be a number.' });
    }

    const loggedInUserId = req.userId; // Extract user ID from the authenticated token

    try {
        const request = new sql.Request();

        // Check if the account is public or if the logged-in user is a friend
        const visibilityQuery = `
            SELECT 
                CASE 
                    WHEN u.IsPublic = 1 THEN 1
                    WHEN EXISTS (
                        SELECT 1 
                        FROM UserFriends uf 
                        WHERE uf.UserID = @userid AND uf.FriendID = @loggedInUserId
                    ) THEN 1
                    ELSE 0
                END AS HasAccess
            FROM Users u
            WHERE u.UserID = @userid
        `;

        request.input('userid', sql.Int, userid);
        request.input('loggedInUserId', sql.Int, loggedInUserId);

        const visibilityResult = await request.query(visibilityQuery);
        const hasAccess = visibilityResult.recordset[0]?.HasAccess;

        if (!hasAccess) {
            return res.status(403).send({ success: false, message: 'Access denied to this user\'s watchlist.' });
        }

        // Fetch the user's watchlist
        const watchlistQuery = `
            SELECT m.MovieID, m.Title, m.Genre, m.ReleaseDate
            FROM UserWatchlist uw
            INNER JOIN Movies m ON uw.MovieID = m.MovieID
            WHERE uw.UserID = @userid
        `;

        const watchlistResult = await request.query(watchlistQuery);
        res.status(200).send({ success: true, watchlist: watchlistResult.recordset });
    } catch (error) {
        console.error('Unexpected error:', error);
        res.status(500).send({ success: false, message: 'An error occurred while fetching the watchlist.' });
    }
});

// Remove movie from watchlist (Requires JWT token with userid)
router.delete('/:movieid', authenticateToken, async (req, res) => {
    let { movieid } = req.params;
    if (!movieid) {
        return res.status(400).send({ success: false, message: 'movieId parameter is required.' });
    }
    movieid = parseInt(movieid, 10);
    if (isNaN(movieid)) {
        return res.status(400).send({ success: false, message: 'Invalid movieId. It must be a number.' });
    }

    const userId = req.userId; // Extract user ID from the authenticated token

    const query = `DELETE FROM UserWatchlist WHERE UserID = @userId AND MovieID = @movieId`;
    try {
        const request = new sql.Request();
        request.input('userId', sql.Int, userId);
        request.input('movieId', sql.Int, movieid);

        await request.query(query);
        res.status(200).send({ success: true, message: 'Movie removed from watchlist successfully.' });
    } catch (error) {
        console.error('Unexpected error:', error);
        res.status(500).send({ success: false, message: 'An error occurred while removing the movie from the watchlist.' });
    }
});

module.exports = router;
