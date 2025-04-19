const express = require('express');
const sql = require('mssql'); 
const { authenticateToken, jwt } = require('../middleware/authMiddleware'); 
const { processMoviesWithDirectors } = require('../utils/processMovies');
const { isFriend } = require('../utils/userDetails');
const router = express.Router();

// Check to see if movie is in watchlist of current user (Requires JWT token with userid)
router.get('/isWatchlist/:movieId', authenticateToken, async (req, res) => {
    let { movieId } = req.params;
    if (!movieId) {
        return res.status(400).send({ success: false, message: 'movieId parameter is required.' });
    }
    movieId = parseInt(movieId, 10);
    if (isNaN(movieId)) {
        return res.status(400).send({ success: false, message: 'Invalid movieId. It must be a number.' });
    }

    const userId = req.userId; // Extract user ID from the authenticated token

    const query = `SELECT COUNT(*) AS Count FROM UserWatchlist WHERE UserID = @userId AND MovieID = @movieId`;
    try {
        const request = new sql.Request();
        request.input('userId', sql.Int, userId);
        request.input('movieId', sql.Int, movieId);

        const result = await request.query(query);

        res.status(200).send({ success: true, isWatchlist: result.recordset[0].Count > 0 });
    } catch (error) {
        console.error('Unexpected error:', error);
        res.status(500).send({ success: false, message: 'An error occurred while checking the watchlist.' });
    }
});

// Get user's watchlist public ver. (Works if account is public)
router.get('/public/:userid', async (req, res) => {
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

        // Step 2: Fetch the watchlist
        const watchlistReq = new sql.Request();
        watchlistReq.input('userid', sql.Int, userid);

        const watchlistRes = await watchlistReq.query(`
            SELECT 
                M.MovieID,
                M.Title,
                M.MoviePosterLink,
                UW.AddedAt
            FROM UserWatchlist UW
            JOIN Movies M ON UW.MovieID = M.MovieID
            WHERE UW.UserID = @userid
            ORDER BY UW.AddedAt DESC
        `);
        const movies = await processMoviesWithDirectors(watchlistRes.recordset);
        return res.status(200).json({
            success: true,
            watchlist: movies
        });

    } catch (error) {
        console.error('Error fetching public watchlist:', error);
        return res.status(500).json({ success: false, message: 'Internal server error' });
    }
});

// Get user's watchlist logged in ver. (Works if account is public or if JWT token is passed and the userid is a friend of the logged-in user)
router.get('/:userid', async (req, res) => {
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

        // Step 2: Fetch the watchlist
        const watchlistReq = new sql.Request();
        watchlistReq.input('userid', sql.Int, userid);

        const watchlistRes = await watchlistReq.query(`
            SELECT 
                M.MovieID,
                M.Title,
                M.MoviePosterLink,
                UW.AddedAt
            FROM UserWatchlist UW
            JOIN Movies M ON UW.MovieID = M.MovieID
            WHERE UW.UserID = @userid
            ORDER BY UW.AddedAt DESC
        `);
        const movies = await processMoviesWithDirectors(watchlistRes.recordset);
        return res.status(200).json({
            success: true,
            watchlist: movies
        });

    } catch (error) {
        console.error('Error fetching public watchlist:', error);
        return res.status(500).json({ success: false, message: 'Internal server error' });
    }
});

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
