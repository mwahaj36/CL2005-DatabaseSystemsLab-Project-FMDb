const express = require('express');
const router = express.Router();

// Add a movie to watchlist (Requires JWT token with userid)
router.post('/', async (req, res) => {
    // Add movie to the logged-in user's watchlist
});

// Get user's watchlist (Works if account is public or if JWT token is passed and the userid is a friend of the logged-in user)
router.get('/:userid', async (req, res) => {
    // Retrieve watchlist of a specific user
});

// Remove movie from watchlist (Requires JWT token with userid)
router.delete('/:movieid', async (req, res) => {
    // Remove a movie from the logged-in user's watchlist
});

module.exports = router;
