const express = require('express');
const sql = require('mssql'); 
const { authenticateToken, jwt } = require('../middleware/authMiddleware'); 
const router = express.Router();

// Submit a review (requires JWT token containing userId)
router.post('/submit', async (req, res) => {
    // Extract userId from JWT token and save review and rating in the database
});

// Get ALL reviews of a movie (movieid will be passed as a URL query parameter)
router.get('', async (req, res) => {
    let movieid;

    try {
        movieid = parseInt(req.query.movieid, 10);

        // Check if movieid is provided
        if (!req.query.movieid) {
            return res.status(400).json({ message: 'Movie ID is required' });
        }

        // Validate movieid (ensure it's a valid number)
        if (isNaN(movieid)) {
            throw new Error('Invalid Movie ID');
        }
    } catch (error) {
        return res.status(400).json({ message: error.message });
    }

    // Check if the movie exists in the database
    const checkMovieQuery = 'SELECT MovieID FROM Movies WHERE MovieID = @movieid';
    try {
        const request = new sql.Request();
        request.input('movieid', sql.Int, movieid);
        const movieCheckResult = await request.query(checkMovieQuery);

        if (movieCheckResult.recordset.length === 0) {
            return res.status(404).json({ message: 'Movie not found' });
        }
    } catch (error) {
        return res.status(500).json({ message: 'Internal server error', error: error.message });
    }

    const getReviewsQuery = `
        SELECT 
            a.ActivityID,
            a.Review AS ReviewText, 
            u.Username, 
            a.Ratings, 
            a.IsWatched, 
            a.ActivityDateTime, 
            (SELECT COUNT(*) FROM ActivityLikes WHERE ActivityID = a.ActivityID) AS LikeCount
        FROM 
            Activity a
        JOIN 
            Movies m ON a.MovieID = m.MovieID
        JOIN 
            Users u ON a.UserID = u.UserID
        WHERE 
            a.MovieID = @movieid AND a.IsReply = 0
    `;

    try {
        const request = new sql.Request();
        request.input('movieid', sql.Int, movieid);
        const reviewsResult = await request.query(getReviewsQuery);

        const reviews = reviewsResult.recordset;

        for (const review of reviews) {
            const getRepliesQuery = `
                SELECT 
                    a.ActivityID,
                    a.Review AS ReviewText, 
                    u.Username, 
                    a.Ratings, 
                    a.IsWatched, 
                    a.ActivityDateTime, 
                    (SELECT COUNT(*) FROM ActivityLikes WHERE ActivityID = a.ActivityID) AS LikeCount
                FROM 
                    Reply r
                JOIN 
                    Activity a ON r.ReplyID = a.ActivityID
                JOIN 
                    Users u ON a.UserID = u.UserID
                WHERE 
                    r.ActivityID = @parentActivityID
            `;

            const replyRequest = new sql.Request();
            replyRequest.input('parentActivityID', sql.Int, review.ActivityID);
            const repliesResult = await replyRequest.query(getRepliesQuery);

            review.Replies = repliesResult.recordset;
        }

        return res.status(200).json(reviews);
    } catch (error) {
        return res.status(500).json({ message: 'Internal server error', error: error.message });
    }
});

// Like a review (requires JWT token containing userId and reviewId in request body)
router.post('/like', async (req, res) => {
    // Extract userId from JWT token and increment like count of a review using reviewId from request body
});

module.exports = router;
