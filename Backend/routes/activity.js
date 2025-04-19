const express = require('express');
const sql = require('mssql'); 
const { authenticateToken, jwt } = require('../middleware/authMiddleware'); 
const { processMoviesWithDirectors } = require('../utils/processMovies');
const router = express.Router();

// Submit an activity [NOT REPLY] (requires JWT token containing userId)
router.post('/submit', authenticateToken, async (req, res) => {
    const { movieId, review, ratings, isLogged } = req.body;
    const userId = req.userId; // Extract userId from the token payload

    try {
        // Validate input
        if (!movieId || !isLogged) {
            return res.status(400).json({ success: false, message: 'Give movieId and isLogged u buffoon' });
        }

        // Check if the movie exists in the database
        const checkMovieQuery = 'SELECT MovieID FROM Movies WHERE MovieID = @movieId';
        const movieRequest = new sql.Request();
        movieRequest.input('movieId', sql.Int, movieId);
        const movieCheckResult = await movieRequest.query(checkMovieQuery);

        if (movieCheckResult.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'Movie not found' });
        }

        // Insert the activity into the database
        const columns = ['UserID', 'MovieID', 'IsLogged', 'IsReply'];
        const values = ['@userId', '@movieId', '@isLogged', '0'];
        
        const insertRequest = new sql.Request();
        
        insertRequest.input('userId', sql.Int, userId);
        insertRequest.input('movieId', sql.Int, movieId);
        insertRequest.input('isLogged', sql.Bit, isLogged);
        
        // Optional: Review
        if (review !== undefined && review !== null) {
          columns.push('Review');
          values.push('@review');
          insertRequest.input('review', sql.NVarChar, review);
        }
        
        // Optional: Ratings
        if (ratings !== undefined && ratings !== null) {
          columns.push('Ratings');
          values.push('@ratings');
          insertRequest.input('ratings', sql.Int, ratings);
        }
        
        // Final query
        const insertActivityQuery = `
          INSERT INTO Activity (${columns.join(', ')})
          VALUES (${values.join(', ')})
        `;

        await insertRequest.query(insertActivityQuery);
        return res.status(200).json({ success: true, message: 'Review submitted successfully' });

    } catch (error) {
        return res.status(500).json({ success: false, message: 'Internal server error', error: error.message });
    }

});

// Submit a reply to a review (requires JWT token containing userId)
router.post('/reply', authenticateToken, async (req, res) => {
    const { activityId, reply } = req.body;
    const userId = req.userId; // Extract userId from the token payload

    try {
        // Validate input
        if (!activityId || !reply) {
            return res.status(400).json({ success: false, message: 'Invalid input data' });
        }

        // Check if the review exists in the database
        const checkReviewQuery = 'SELECT * FROM Activity WHERE ActivityID = @activityId';
        const reviewRequest = new sql.Request();
        reviewRequest.input('activityId', sql.Int, activityId);
        const reviewCheckResult = await reviewRequest.query(checkReviewQuery);

        if (reviewCheckResult.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'Activity not found' });
        }

        // Insert the reply into the database
        const insertReplyQuery = `
            INSERT INTO Activity (UserID, MovieID, Review, Ratings, IsLogged, IsReply)
            VALUES (@userId, @movieId, @reply, NULL, 0, 1)
            SELECT SCOPE_IDENTITY() AS UserId;
        `;
        const insertRequest = new sql.Request();
        insertRequest.input('userId', sql.Int, userId);
        insertRequest.input('movieId', sql.Int, reviewCheckResult.recordset[0].MovieID); // Use the MovieID from the original review
        insertRequest.input('reply', sql.NVarChar, reply);

        const insertResult = await insertRequest.query(insertReplyQuery);

        // Link the reply to the original review
        const linkReplyQuery = `
            INSERT INTO Reply (ActivityID, ReplyID)
            VALUES (@activityId, @replyId)
        `;
        const linkRequest = new sql.Request();
        linkRequest.input('activityId', sql.Int, activityId);
        linkRequest.input('replyId', sql.Int, insertResult.recordset[0].UserId); // Use the ID of the inserted reply

        await linkRequest.query(linkReplyQuery);

        res.status(200).json({ success: true, message: 'Reply submitted successfully' });
    } catch (error) {
        return res.status(500).json({ success: false, message: 'Internal server error', error: error.message });
    }
});

// Get ALL reviews/activities of a movie along with replies (movieid will be passed as a URL parameter)
router.get('/all/:movieid', async (req, res) => {
    const movieid = parseInt(req.params.movieid, 10);

    if (isNaN(movieid)) {
        return res.status(400).json({ success: false, message: 'Invalid Movie ID' });
    }

    try {
        // Check if the movie exists in the database
        const checkMovieQuery = 'SELECT MovieID FROM Movies WHERE MovieID = @movieid';
        const request = new sql.Request();
        request.input('movieid', sql.Int, movieid);
        const movieCheckResult = await request.query(checkMovieQuery);

        if (movieCheckResult.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'Movie not found' });
        }

        // Fetch reviews for the movie
        const getReviewsQuery = `
            SELECT 
                a.ActivityID,
                a.Review AS ReviewText, 
                u.Username, 
                a.Ratings, 
                a.IsLogged, 
                a.ActivityDateTime, 
                (SELECT COUNT(*) FROM ActivityLikes WHERE ActivityID = a.ActivityID) AS ActivityLikeCount
            FROM 
                Activity a
            JOIN 
                Movies m ON a.MovieID = m.MovieID
            JOIN 
                Users u ON a.UserID = u.UserID
            WHERE 
                a.MovieID = @movieid AND a.IsReply = 0
        `;

        const reviewsRequest = new sql.Request();
        reviewsRequest.input('movieid', sql.Int, movieid);
        const reviewsResult = await reviewsRequest.query(getReviewsQuery);

        const reviews = reviewsResult.recordset;

        // Fetch replies for each review
        for (const review of reviews) {
            const getRepliesQuery = `
                SELECT 
                    a.ActivityID,
                    a.Review AS ReviewText, 
                    u.Username, 
                    a.Ratings, 
                    a.IsLogged, 
                    a.ActivityDateTime, 
                    (SELECT COUNT(*) FROM ActivityLikes WHERE ActivityID = a.ActivityID) AS ActivityLikeCount
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

        // Fetch some movie deets
        const movieDeetsQuery = `
            SELECT MovieBackdropLink, Title, MovieID, ReleaseDate  
            FROM Movies 
            WHERE MovieID = @movieid
        `;
        const movieDeetsRequest = new sql.Request();
        movieDeetsRequest.input('movieid', sql.Int, movieid);
        const deetsResult = await movieDeetsRequest.query(movieDeetsQuery);
        const movieDetails = await processMoviesWithDirectors(deetsResult.recordset);

        return res.json({ success: true, movie: movieDetails[0], reviews: reviews });
    } catch (error) {
        return res.status(500).json({ success: false, message: 'Internal server error', error: error.message });
    }
});

// Get Top 5 reviews of a movie (movieid will be passed as a URL parameter)
router.get('/top/:movieid', async (req, res) => {
    const movieid = parseInt(req.params.movieid, 10);

    if (isNaN(movieid)) {
        return res.status(400).json({ success: false, message: 'Invalid Movie ID' });
    }

    const query = `
        WITH Activities AS (
            SELECT TOP 10 U.Username, A.ActivityDateTime, A.ActivityID, A.Ratings, COUNT(AL.UserID) AS ActivityLikeCount
            FROM Activity A
            JOIN Movies M ON M.MovieID = A.MovieID
            JOIN Users U ON U.UserID = A.UserID
            LEFT JOIN ActivityLikes AL ON A.ActivityID = AL.ActivityID
            WHERE A.IsReply = 0 AND A.Ratings IS NOT NULL AND A.Review IS NOT NULL AND M.MovieID = @movieid 
            GROUP BY M.Title, M.MoviePosterLink, M.ReleaseDate, A.ActivityDateTime, U.Username, A.Ratings, A.ActivityID
            ORDER BY ActivityLikeCount DESC
        )
        SELECT AC.ActivityDateTime, AC.Username, AC.Ratings, AC.ActivityID, AC.ActivityLikeCount, A.Review
        FROM Activities AC JOIN Activity A ON AC.ActivityID = A.ActivityID
    `;

    try {
        const request = new sql.Request();
        request.input('movieid', sql.Int, movieid);
        const result = await request.query(query);

        res.json({ success: true, topReviews: result.recordset });
    } catch (error) {
        res.status(500).json({ success: false, message: 'Internal server error', error: error.message });
    }
});

// Get Replies of a specific review (activityid will be passed as a URL parameter)
router.get('/replies/:activityid', async (req, res) => {
    const activityid = parseInt(req.params.activityid, 10);

    if (isNaN(activityid)) {
        return res.status(400).json({ success: false, message: 'Invalid Activity ID' });
    }

    try {
        // Check if the review exists in the database
        const checkReviewQuery = 'SELECT ActivityID FROM Activity WHERE ActivityID = @activityid';
        const request = new sql.Request();
        request.input('activityid', sql.Int, activityid);
        const reviewCheckResult = await request.query(checkReviewQuery);

        if (reviewCheckResult.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'Review not found' });
        }

        // Fetch replies for the review
        const getRepliesQuery = `
            SELECT 
                a.ActivityID,
                a.Review AS ReviewText, 
                u.Username, 
                a.Ratings, 
                a.IsLogged, 
                a.ActivityDateTime, 
                (SELECT COUNT(*) FROM ActivityLikes WHERE ActivityID = a.ActivityID) AS LikeCount
            FROM 
                Reply r
            JOIN 
                Activity a ON r.ReplyID = a.ActivityID
            JOIN 
                Users u ON a.UserID = u.UserID
            WHERE 
                r.ActivityID = @activityid
        `;

        const repliesRequest = new sql.Request();
        repliesRequest.input('activityid', sql.Int, activityid);
        const repliesResult = await repliesRequest.query(getRepliesQuery);

        return res.status(200).json({ success: true, replies: repliesResult.recordset });
    } catch (error) {
        return res.status(500).json({ success: false, message: 'Internal server error', error: error.message });
    }
});

// Like a review (requires JWT token containing userId and reviewId in request body)
router.post('/like/:reviewId', authenticateToken, async (req, res) => {
    const reviewId = req.params.reviewId;
    const userId = req.userId; // Extract userId from the token payload

    try {
        // Check if the review exists in the database
        const checkReviewQuery = 'SELECT ActivityID FROM Activity WHERE ActivityID = @reviewId';
        const reviewRequest = new sql.Request();
        reviewRequest.input('reviewId', sql.Int, reviewId);
        const reviewCheckResult = await reviewRequest.query(checkReviewQuery);

        if (reviewCheckResult.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'Review not found' });
        }

        // Check if the user has already liked the review
        const checkLikeQuery = 'SELECT * FROM ActivityLikes WHERE ActivityID = @reviewId AND UserID = @userId';
        const likeCheckRequest = new sql.Request();
        likeCheckRequest.input('reviewId', sql.Int, reviewId);
        likeCheckRequest.input('userId', sql.Int, userId);
        const likeCheckResult = await likeCheckRequest.query(checkLikeQuery);

        if (likeCheckResult.recordset.length === 1) {
            return res.status(400).json({ success: false, message: 'You have already liked this review' });
        }

        // Insert the like into the database
        const insertLikeQuery = 'INSERT INTO ActivityLikes (ActivityID, UserID) VALUES (@reviewId, @userId)';
        const insertLikeRequest = new sql.Request();
        insertLikeRequest.input('reviewId', sql.Int, reviewId);
        insertLikeRequest.input('userId', sql.Int, userId);

        await insertLikeRequest.query(insertLikeQuery);
        res.status(200).json({ success: true, message: 'Review liked successfully' });
    } catch (error) {
        return res.status(500).json({ success: false, message: 'Internal server error', error: error.message });
    }
});

// Unlike a review (requires JWT token containing userId and reviewId in request body)
router.delete('/like/:reviewId', authenticateToken, async (req, res) => {
    const reviewId = req.params.reviewId;
    const userId = req.userId; // Extract userId from the token payload

    try {
        // Check if the review exists in the database
        const checkReviewQuery = 'SELECT * FROM ActivityLikes WHERE ActivityID = @reviewId AND UserID = @userId';
        const reviewRequest = new sql.Request();
        reviewRequest.input('reviewId', sql.Int, reviewId);
        reviewRequest.input('userId', sql.Int, userId);
        const reviewCheckResult = await reviewRequest.query(checkReviewQuery);

        if (reviewCheckResult.recordset.length === 0) {
            return res.status(404).json({ success: false, message: 'Review not liked' });
        }

        // Delete the like from the database
        const deleteLikeQuery = 'DELETE FROM ActivityLikes WHERE ActivityID = @reviewId AND UserID = @userId';
        const deleteLikeRequest = new sql.Request();
        deleteLikeRequest.input('reviewId', sql.Int, reviewId);
        deleteLikeRequest.input('userId', sql.Int, userId);

        await deleteLikeRequest.query(deleteLikeQuery);
        res.status(200).json({ success: true, message: 'Review unliked successfully' });
    } catch (error) {
        return res.status(500).json({ success: false, message: 'Internal server error', error: error.message });
    }
});

// Delete User Activity (CurrentUser or Admin) (requires JWT token containing userId and activityId in request params)
router.delete('/:activityId', authenticateToken, async (req, res) => {
    let { activityId } = req.params;
    if (!activityId) {
        return res.status(400).send({ success: false, message: 'activityId parameter is required.' });
    }
    activityId = parseInt(activityId, 10);
    if (isNaN(activityId)) {
        return res.status(400).send({ success: false, message: 'Invalid activityId. It must be a number.' });
    }

    const loggedInUserId = req.userId; // Extract user ID from the authenticated token

    try {
        // Check if the activity exists
        const checkActivityQuery = `SELECT * FROM Activity WHERE ActivityID = @activityId`;
        const activityCheckRequest = new sql.Request();
        activityCheckRequest.input('activityId', sql.Int, activityId);
        const activityResult = await activityCheckRequest.query(checkActivityQuery);

        if (activityResult.recordset.length === 0) {
            return res.status(404).send({ success: false, message: 'Activity not found.' });
        }
        
        // Check if the logged-in user is an admin or if they are the owner of the activity
        const checkAdminOrOwnerQuery = `
            SELECT *
            FROM Users U
            JOIN Activity A ON A.UserID = U.UserID
            WHERE (U.UserID = @loggedInUserId AND U.UserType = 'admin') 
                OR (A.ActivityID = @activityId AND A.UserID = @loggedInUserId)
        `;

        const request = new sql.Request();
        request.input('loggedInUserId', sql.Int, loggedInUserId);
        request.input('activityId', sql.Int, activityId);
        const adminOrOwnerResult = await request.query(checkAdminOrOwnerQuery);

        if (adminOrOwnerResult.recordset.length === 0) {
            return res.status(403).send({ success: false, message: 'You do not have permission to delete this activity.' });
        }

        // Delete the activity
        const deleteActivityQuery = `DELETE FROM Activity WHERE ActivityID = @activityId`;

        const delRequest = new sql.Request();
        delRequest.input('activityId', sql.Int, activityId);
        await delRequest.query(deleteActivityQuery);

        res.send({ success: true, message: 'Activity deleted successfully.' });
    } catch (err) {
        console.error('Error deleting activity:', err.message);
        res.status(500).send({ success: false, message: 'Error deleting activity.' });
    }

});

// Check if Activity is Deletable (CurrentUser or Admin) (requires JWT token containing userId and activityId in request params)
router.get('/isDeletable/:activityId', authenticateToken, async (req, res) => {
    let { activityId } = req.params;
    if (!activityId) {
        return res.status(400).send({ success: false, message: 'activityId parameter is required.' });
    }
    activityId = parseInt(activityId, 10);
    if (isNaN(activityId)) {
        return res.status(400).send({ success: false, message: 'Invalid activityId. It must be a number.' });
    }

    const loggedInUserId = req.userId; // Extract user ID from the authenticated token

    try {
        // Check if the activity exists
        const checkActivityQuery = `SELECT * FROM Activity WHERE ActivityID = @activityId`;
        const activityCheckRequest = new sql.Request();
        activityCheckRequest.input('activityId', sql.Int, activityId);
        const activityResult = await activityCheckRequest.query(checkActivityQuery);

        if (activityResult.recordset.length === 0) {
            return res.status(404).send({ success: false, message: 'Activity not found.' });
        }
        
        // Check if the logged-in user is an admin or if they are the owner of the activity
        const checkAdminOrOwnerQuery = `
            SELECT *
            FROM Users U
            JOIN Activity A ON A.UserID = U.UserID
            WHERE (U.UserID = @loggedInUserId AND U.UserType = 'admin') 
                OR (A.ActivityID = @activityId AND A.UserID = @loggedInUserId)
        `;

        const request = new sql.Request();
        request.input('loggedInUserId', sql.Int, loggedInUserId);
        request.input('activityId', sql.Int, activityId);
        const adminOrOwnerResult = await request.query(checkAdminOrOwnerQuery);

        if (adminOrOwnerResult.recordset.length === 0) {
            return res.status(403).send({ success: false, isDeletable: false});
        }

        res.send({ success: true, isDeletable: true });
    } catch (err) {
        console.error('Error:', err.message);
        res.status(500).send({ success: false, message: 'Error' });
    }

});

// Get IsLiked status of a Activity (requires activityId and userId in query parameters)
router.get('/isLiked', async (req, res) => {
    const { activityId, userId } = req.query; // Extract from query parameters

    if (activityId === undefined || userId === undefined) {
        return res.status(400).json({ success: false, message: 'activityId and userId are required in the query parameters' });
    }
    
    if (!Number.isInteger(parseInt(activityId, 10)) || !Number.isInteger(parseInt(userId, 10))) {
        return res.status(400).json({ success: false, message: 'activityId and userId must be integers' });
    }

    try {
        // Check if the user has liked the activity
        const checkActivityQuery = 'SELECT * FROM ActivityLikes WHERE ActivityID = @activityId AND UserID = @userId';
        const activityRequest = new sql.Request();
        activityRequest.input('activityId', sql.Int, parseInt(activityId, 10));
        activityRequest.input('userId', sql.Int, parseInt(userId, 10));
        const activityCheckResult = await activityRequest.query(checkActivityQuery);

        if (activityCheckResult.recordset.length === 0) {
            return res.status(200).json({ success: true, isLiked: false });
        } else {
            return res.status(200).json({ success: true, isLiked: true });
        }
    } catch (error) {
        return res.status(500).json({ success: false, message: 'Internal server error', error: error.message });
    }
});

// Get IsActivity status of a movie (requires movieId and userId in query parameters)
router.get('/isActivity', async (req, res) => {
    const { movieId, userId } = req.query;

    if (!movieId || !userId) {
        return res.status(400).json({ success: false, message: 'movieId and userId are required in the query parameters' });
    }
    // Validate that movieId and userId are integers
    if (!Number.isInteger(parseInt(movieId, 10)) || !Number.isInteger(parseInt(userId, 10))) {
        return res.status(400).json({ success: false, message: 'movieId and userId must be integers' });
    }

    try {
        // Check if the movie is in the user's activity
        const checkActivityQuery = 'SELECT * FROM Activity WHERE MovieID = @movieId AND UserID = @userId';
        const activityRequest = new sql.Request();
        activityRequest.input('movieId', sql.Int, parseInt(movieId, 10));
        activityRequest.input('userId', sql.Int, parseInt(userId, 10));
        const activityCheckResult = await activityRequest.query(checkActivityQuery);

        if (activityCheckResult.recordset.length === 0) {
            return res.status(200).json({ success: true, isActivity: false });
        } else {
            return res.status(200).json({ success: true, isActivity: true });
        }
    } catch (error) {
        return res.status(500).json({ success: false, message: 'Internal server error', error: error.message });
    }
});

module.exports = router;
