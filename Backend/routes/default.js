const express = require('express');
const router = express.Router();

// Default route
router.get('', (req, res) => {
    res.send('Hello World! Now just use any route like /movie, /user, etc.'); // Example default route
});

module.exports = router;
