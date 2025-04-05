const express = require('express');
const jwt = require('jsonwebtoken');
const router = express.Router();

// Search movies by title
router.get('/search/:string', async (req, res) => {
    // Query database using title, genre, or release year
});

// Get trending movies
router.get('/trending', async (req, res) => {
    // Fetch trending movies based on user activity
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
