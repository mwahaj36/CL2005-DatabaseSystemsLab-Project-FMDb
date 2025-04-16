const jwt = require('jsonwebtoken');
require('dotenv').config(); // Load environment variables from .env file

const authenticateToken = (req, res, next) => {
    const token = req.headers['authorization']?.split(' ')[1];
    if (!token) return res.status(401).json({ message: 'Access token is missing' });

    jwt.verify(token, process.env.JWT_SECRET, (err, user) => {
        if (err) return res.status(403).json({ message: 'Invalid token' });

        req.user = user; // Attach the decoded token payload to the request
        req.userId = user.userId; // Specifically attach the userId to the request
        next();
    });
};

module.exports = {
    authenticateToken,
    jwt
};
