const express = require('express');
const router = express.Router();

// Submit a review
router.post('/', async (req, res) => {
    // Save review and rating in the database
});

// Get reviews of a movie
router.get('/:movieId', async (req, res) => {
    // Fetch all reviews for a given movie
});

// Like a review
router.post('/like/:reviewId', async (req, res) => {
    // Increment like count of a review
});

module.exports = router;
