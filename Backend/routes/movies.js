const express = require('express');
const sql = require('mssql'); 
const { authenticateToken, jwt } = require('../middleware/authMiddleware'); 
const router = express.Router();

// Search movies by title
router.get('/search/:string', async (req, res) => {
});

// Get top 5 trending movies based on count of logged movies
router.get('/trending', async (req, res) => {
    const query = `
        SELECT t.MovieID, t.Title, t.MoviePosterLink, d.DirectorName
        FROM (SELECT TOP 5 M.MovieID, M.Title, M.MoviePosterLink, COUNT(A.IsWatched) as WatchCount
            FROM Movies M JOIN Activity A ON M.MovieID = A.MovieID
            WHERE A.IsWatched = 1 AND DATEDIFF(DAY, A.ActivityDateTime, GETDATE()) <= 7
            GROUP BY M.MovieID, M.Title, M.MoviePosterLink
            ORDER BY WatchCount DESC) t 
        join MovieDirectors md on t.MovieID = md.MovieID join Directors d on md.DirectorID = d.DirectorID 
    `;

    try {
        const request = new sql.Request();
        const result = await request.query(query);

        // if no movies found due to incomplete data in activities, fill remaining with random movies
        if (result.recordset.length < 5) {
            const missingCount = 5 - result.recordset.length;
            const randomQuery = `
                SELECT TOP ${missingCount} MovieID, Title, MoviePosterLink
                FROM Movies
                WHERE MovieID NOT IN (${result.recordset.length > 0 ? result.recordset.map(row => `'${row.MovieID}'`).join(',') : '-1'})
                ORDER BY NEWID()
            `;  // newid() is a random function in SQL Server to get random rows

            const randomResult = await request.query(randomQuery);
            result.recordset.push(...randomResult.recordset);
        } 
        
        // Process the result to group directors for each movie
        const movies = {};
        result.recordset.forEach(row => {
            if (!movies[row.MovieID]) {
                movies[row.MovieID] = {
                    movieid: row.MovieID,
                    title: row.Title,
                    movieposterlink: row.MoviePosterLink,
                    directors: []
                };
            }
            movies[row.MovieID].directors.push(row.DirectorName);
        });

        // Convert the movies object to an array
        const response = Object.values(movies);
        res.json(response); // Send the formatted JSON response
    } catch (error) {
        res.status(500).json({ message: 'Internal server error', error: error.message });
    }
});

// Log a movie or TV show
router.post('/log', async (req, res) => {
    try {
        const token = req.headers.authorization?.split(' ')[1];
        if (!token) {
            return res.status(401).json({ message: 'Authorization token missing' });
        }

        const decoded = jwt.verify(token, 'your_jwt_secret'); // Replace 'your_jwt_secret' with your actual secret
        const userId = decoded.userId;

        // Add movie to logged list with user rating and review
        // Use userId to associate the logged movie with the user
    } catch (error) {
        res.status(401).json({ message: 'Invalid or expired token' });
    }
});

router.get('/logged/:userId', async (req, res) => {
    try {
        const token = req.headers.authorization?.split(' ')[1];
        const targetUserId = req.params.userId;

        let loggedInUserId = null;
        if (token) {
            try {
                const decoded = jwt.verify(token, 'your_jwt_secret'); // Replace 'your_jwt_secret' with your actual secret
                loggedInUserId = decoded.userId;
            } catch (error) {
                return res.status(401).json({ message: 'Invalid or expired token' });
            }
        }

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
    } catch (error) {
        res.status(500).json({ message: 'Internal server error', error: error.message });
    }
});

module.exports = router;
