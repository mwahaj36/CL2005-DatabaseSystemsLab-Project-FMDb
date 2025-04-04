const express = require('express');
const router = express.Router();

// Add a movie to watchlist
router.post('/', async (req, res) => {
    // Add movie to user's watchlist
});

// Get user's watchlist
router.get('/:userId', async (req, res) => {
    // Retrieve watchlist of a specific user
});

// Remove movie from watchlist
router.delete('/:userId/:movieId', async (req, res) => {
    // Remove a movie from watchlist
});

module.exports = router;
