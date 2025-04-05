const express = require('express');
const router = express.Router();

// Submit a review (requires JWT token containing userId)
router.post('/submit', async (req, res) => {
    // Extract userId from JWT token and save review and rating in the database
});

// Get reviews of a movie (movieid will be passed as a URL parameter)
router.get('/:movieid', async (req, res) => {
    const { movieid } = req.params;
    // Fetch all reviews for a given movie using movieid from the URL parameter
});

// Like a review (requires JWT token containing userId and reviewId in request body)
router.post('/like', async (req, res) => {
    // Extract userId from JWT token and increment like count of a review using reviewId from request body
});

module.exports = router;
