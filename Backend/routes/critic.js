const express = require('express');
const sql = require('mssql'); 
const { authenticateToken, jwt } = require('../middleware/authMiddleware'); 
const router = express.Router();
const { processMoviesWithDirectors } = require('../utils/processMovies'); // Assuming you have a utility function to process movies

// Get Top 5 Movies based on Critics movie ratings on last 7 days
router.get('/movies', async (req, res) => {
    const query = `
        SELECT TOP 5 M.MovieID, M.Title, M.MoviePosterLink, AVG(A.Ratings) AS AverageRating
        FROM Movies M
        JOIN Activity A ON M.MovieID = A.MovieID
        JOIN Users U ON U.UserID = A.UserID
        WHERE DATEDIFF(DAY, A.ActivityDateTime, GETDATE()) <= 7 AND U.UserType = 'Critic'
        GROUP BY M.MovieID, M.Title, M.MoviePosterLink
        ORDER BY AverageRating DESC;
    `;

    try {
        const request = new sql.Request();
        const result = await request.query(query);

        if (result.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'No movies found' });
        }

        const response = await processMoviesWithDirectors(result.recordset);
        res.json({ success: true, movies: response });
    } catch (error) {
        res.status(500).json({ message: 'Internal server error', error: error.message });
    }
});

// Get Top 10 Reviews with Ratings of Critics which are not replies and are sorted by activityLikes on last 7 days
router.get('/reviews', async (req, res) => {
    const query = `
        WITH Activities AS (
            SELECT TOP 10 M.Title, M.MoviePosterLink, M.ReleaseDate, U.Username, A.ActivityDateTime, A.ActivityID, A.Ratings, COUNT(AL.UserID) AS ActivityLikes
            FROM Activity A
            JOIN Movies M ON M.MovieID = A.MovieID
            JOIN Users U ON U.UserID = A.UserID
            JOIN ActivityLikes AL ON A.ActivityID = AL.ActivityID
            WHERE U.UserType = 'Critic' AND A.IsReply = 0 AND A.Ratings IS NOT NULL AND A.Review IS NOT NULL AND DATEDIFF(DAY, A.ActivityDateTime, GETDATE()) <= 7 
            GROUP BY M.Title, M.MoviePosterLink, M.ReleaseDate, A.ActivityDateTime, U.Username, A.Ratings, A.ActivityID
            ORDER BY ActivityLikes DESC
        )
        SELECT AC.Title, AC.MoviePosterLink, AC.ReleaseDate, AC.ActivityDateTime, AC.Username, AC.Ratings, AC.ActivityLikes, A.Review
        FROM Activities AC JOIN Activity A ON AC.ActivityID = A.ActivityID
    `;

    try {
        const request = new sql.Request();
        const result = await request.query(query);

        res.json({ success: true, reviews: result.recordset });
    } catch (error) {
        res.status(500).json({ message: 'Internal server error', error: error.message });
    }
});


module.exports = router;