const express = require('express');
const sql = require('mssql'); 
const { authenticateToken, jwt } = require('../middleware/authMiddleware'); 
const router = express.Router();

// Function to process movies and fetch directors
async function processMoviesWithDirectors(recordset) {
    if (!recordset || recordset.length === 0) {
        return [];
    }

    // Extract movie IDs from the recordset
    const movieIds = recordset.map(row => row.MovieID).join(',');

    // Query to fetch directors for the movies
    const directorsQuery = `
        SELECT MD.MovieID, D.DirectorName
        FROM MovieDirectors MD
        JOIN Directors D ON MD.DirectorID = D.DirectorID
        WHERE MD.MovieID IN (${movieIds})
    `;
    const sqlRequest = new sql.Request();
    const directorsResult = await sqlRequest.query(directorsQuery);

    // Group directors by MovieID
    const directorsMap = {};
    directorsResult.recordset.forEach(row => {
        if (!directorsMap[row.MovieID]) {
            directorsMap[row.MovieID] = [];
        }
        directorsMap[row.MovieID].push(row.DirectorName);
    });

    // Map the directors back to the original recordset
    return recordset.map(row => ({
        movieid: row.MovieID,
        title: row.Title,
        movieposterlink: row.MoviePosterLink,
        directors: directorsMap[row.MovieID] || []
    }));
};

// Search movies by title
router.get('/search/:string', async (req, res) => {
});

// Get top 5 trending movies based on count of overall logged movies over the course of 7 days
router.get('/trending', async (req, res) => {
    const query = `
        SELECT t.MovieID, t.Title, t.MoviePosterLink
        FROM (SELECT TOP 5 M.MovieID, M.Title, M.MoviePosterLink, COUNT(A.IsLogged) as WatchCount
            FROM Movies M JOIN Activity A ON M.MovieID = A.MovieID
            WHERE A.IsLogged = 1 AND DATEDIFF(DAY, A.ActivityDateTime, GETDATE()) <= 7
            GROUP BY M.MovieID, M.Title, M.MoviePosterLink
            ORDER BY WatchCount DESC) t 
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
        
        
        const response = await processMoviesWithDirectors(result.recordset);
        res.json({ success: true, movies: response }); // Send the formatted JSON response
    } catch (error) {
        res.status(500).json({ message: 'Internal server error', error: error.message });
    }
});

// Get 5 Recent Movies from Friend Activities
router.get('/friends', authenticateToken, async (req, res) => {
    const userId = req.userId; // Extract userId from the token payload

    try {
        // Fetch the user's friends
        const friendsQuery = `
                SELECT User2ID FROM Friends WHERE User1ID = @CurrentUserID
                UNION
                SELECT User1ID FROM Friends WHERE User2ID = @CurrentUserID
        `;
        const friendsRequest = new sql.Request();
        friendsRequest.input('CurrentUserID', sql.Int, userId);
        const friendsResult = await friendsRequest.query(friendsQuery);

        if (friendsResult.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'No friends found' });
        }

        const friendIdsString = friendsResult.recordset.map(row => row.User2ID).join(', ');

        // Fetch the 5 most recent movies watched by friends
        const recentMoviesQuery = `
            SELECT TOP 5 M.MovieID, M.Title, M.MoviePosterLink
            FROM Activity A
            JOIN Users U ON A.UserID = U.UserID
            JOIN Movies M ON A.MovieID = M.MovieID
            WHERE A.UserID IN (${friendIdsString})
            ORDER BY A.ActivityDateTime DESC;
        `;
        const recentMoviesRequest = new sql.Request();
        const recentMoviesResult = await recentMoviesRequest.query(recentMoviesQuery);

        if (recentMoviesResult.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'No recent friend activities found' });
        }
        
        const response = await processMoviesWithDirectors(recentMoviesResult.recordset);
        res.json({ success: true, movies: response });
    } catch (error) {
        return res.status(500).json({ success: false, message: 'Internal server error', error: error.message });
    }
});

// Get 5 Recent Movies added to watchlist by friends
router.get('/friends/watchlist', authenticateToken, async (req, res) => {
    const userId = req.userId; // Extract userId from the token payload

    try {
        // Fetch the user's friends
        const friendsQuery = `
                SELECT User2ID FROM Friends WHERE User1ID = @CurrentUserID
                UNION
                SELECT User1ID FROM Friends WHERE User2ID = @CurrentUserID
        `;
        const friendsRequest = new sql.Request();
        friendsRequest.input('CurrentUserID', sql.Int, userId);
        const friendsResult = await friendsRequest.query(friendsQuery);

        if (friendsResult.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'No friends found' });
        }
        const friendIdsString = friendsResult.recordset.map(row => row.User2ID).join(', ');

        // Fetch the 5 most recent movies added to watchlist by friends
        const recentMoviesQuery = `
            SELECT TOP 5 M.MovieID, M.Title, M.MoviePosterLink
            FROM UserWatchlist UW
            JOIN Users U ON UW.UserID = U.UserID
            JOIN Movies M ON UW.MovieID = M.MovieID
            WHERE UW.UserID IN (${friendIdsString})
            ORDER BY UW.AddedAt DESC;
        `;
        const recentMoviesRequest = new sql.Request();
        const recentMoviesResult = await recentMoviesRequest.query(recentMoviesQuery);

        if (recentMoviesResult.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'No recent friend activities found' });
        }

        const response = await processMoviesWithDirectors(recentMoviesResult.recordset);
        res.json({ success: true, movies: response });
    } catch (error) {
        return res.status(500).json({ success: false, message: 'Internal server error', error: error.message });
    }
});

// Get 5 Recommendations based on user's log history via keyword + genre matching
router.get('/recommended', authenticateToken, async (req, res) => {
    const userId = req.userId; // Extract userId from the token payload

    try {
        // Fetch 1 movie from users's 3 most recent logged movies to get keywords
        const recentMoviesQuery = `
            SELECT TOP 1 *
            FROM (
                SELECT TOP 3 M.MovieID, M.Title
                FROM Activity A
                JOIN Movies M ON A.MovieID = M.MovieID
                WHERE A.UserID = @CurrentUserID AND A.IsLogged = 1
                ORDER BY A.ActivityDateTime DESC
            ) AS TopThree
            ORDER BY NEWID();
        `;
        const recentMoviesRequest = new sql.Request();
        recentMoviesRequest.input('CurrentUserID', sql.Int, userId);
        const recentMoviesResult = await recentMoviesRequest.query(recentMoviesQuery);

        
        if (recentMoviesResult.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'No logged movies found' });
        }

        // Fetch the logged movie's keywords
        const keywordsQuery = `
            SELECT MK.KeywordID 
            FROM MovieKeywords MK 
            WHERE MK.MovieID = @MovieID
        `;
        const keywordsRequest = new sql.Request();
        keywordsRequest.input('MovieID', sql.Int, recentMoviesResult.recordset[0].MovieID);
        const keywordsResult = await keywordsRequest.query(keywordsQuery);

        const keywordIdsString = keywordsResult.recordset.map(row => row.KeywordID).join(', ');

        // Fetch the logged movie's genres
        const genresQuery = `
            SELECT MG.GenreID 
            FROM MovieGenres MG 
            WHERE MG.MovieID = @MovieID
        `;
        const genresRequest = new sql.Request();
        genresRequest.input('MovieID', sql.Int, recentMoviesResult.recordset[0].MovieID);
        const genresResult = await genresRequest.query(genresQuery);

        const genreIdsString = genresResult.recordset.map(row => row.GenreID).join(', ');

        // Fetch recommendations based on keywords
        let recommendationsQuery = `
            SELECT TOP 5 M.MovieID, M.Title, M.MoviePosterLink
            FROM Movies M 
            JOIN MovieKeywords MK ON M.MovieID = MK.MovieID
            WHERE MK.KeywordID IN (${keywordIdsString}) AND M.MovieID != @MovieID
            ORDER BY NEWID();
        `;
        const recommendationsRequest = new sql.Request();
        recommendationsRequest.input('MovieID', sql.Int, recentMoviesResult.recordset[0].MovieID);
        let recommendationsResult = await recommendationsRequest.query(recommendationsQuery);

        // If fewer than 5 movies are found, fetch additional movies based on genres
        if (recommendationsResult.recordset.length < 5) {
            const missingCount = 5 - recommendationsResult.recordset.length;
            const genreRecommendationsQuery = `
                SELECT TOP ${missingCount} M.MovieID, M.Title, M.MoviePosterLink
                FROM Movies M 
                JOIN MovieGenres MG ON M.MovieID = MG.MovieID
                WHERE MG.GenreID IN (${genreIdsString}) 
                AND M.MovieID NOT IN (${recommendationsResult.recordset.map(row => row.MovieID).join(', ') || '-1'}, @MovieID)
                ORDER BY NEWID();
            `;
            const genreRecommendationsRequest = new sql.Request();
            genreRecommendationsRequest.input('MovieID', sql.Int, recentMoviesResult.recordset[0].MovieID);
            const genreRecommendationsResult = await genreRecommendationsRequest.query(genreRecommendationsQuery);

            // Combine keyword-based and genre-based recommendations
            recommendationsResult.recordset.push(...genreRecommendationsResult.recordset);
        }

        if (recommendationsResult.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'No recommendations found' });
        }

        const response = await processMoviesWithDirectors(recommendationsResult.recordset);
        res.status(200).json({ success: true, recommendedOn: recentMoviesResult.recordset[0].Title , movies: response });
    } catch (error) {
        return res.status(500).json({ success: false, message: 'Internal server error', error: error.message });
    }
});

// Get Top 5 Movies based on Critics movie ratings on last 7 days
router.get('/critics', async (req, res) => {
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
