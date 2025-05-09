const express = require('express');
const { connectToDatabase } = require('./config/dbConfig'); // Import database connection
const app = express();
const cors = require('cors'); // Import CORS middleware
require('dotenv').config(); // Load environment variables from .env file
const port = parseInt(process.env.PORT, 10); // Convert environment variable to integer or default to 5000

app.use(cors({
  origin: process.env.FRONTEND_URL, // Allow your frontend URL
  methods: ['GET', 'POST', 'PUT', 'DELETE'], // Allow all HTTP methods
  allowedHeaders: ['Content-Type', 'Authorization'], // Allow Content-Type and Authorization headers
  credentials: true // Allow cookies and credentials
}));

app.use(express.json()); // Middleware to parse JSON request bodies
app.use(express.urlencoded({ extended: true })); // For parsing application/x-www-form-urlencoded

// Connect to the database
connectToDatabase().catch(err => {
    console.error('Failed to initialize the server due to database connection issues.');
    process.exit(1); // Exit the application if the database connection fails
});
app.get('/', (req, res) => {
  res.send('Backend server is running 🚀');
});

// Import and use routes
const authRoutes = require('./routes/auth');
const userRoutes = require('./routes/users');
const movieRoutes = require('./routes/movies');
const activityRoutes = require('./routes/activity');
const watchlistRoutes = require('./routes/watchlist');
const notificationRoutes = require('./routes/notification'); // Import notification routes
const messageRoutes = require('./routes/message'); // Import message routes
const adminRoutes = require('./routes/admin'); // Import admin routes
const criticRoutes = require('./routes/critic'); // Import critic routes

app.use('/auth', authRoutes); // Routes for authentication
app.use('/users', userRoutes); // Routes for user-related operations
app.use('/movies', movieRoutes); // Routes for movie-related operations
app.use('/activity', activityRoutes); // Routes for activity-related operations
app.use('/watchlist', watchlistRoutes); // Routes for watchlist-related operations
app.use('/notification', notificationRoutes); // Routes for notification-related operations
app.use('/message', messageRoutes); // Routes for message-related operations
app.use('/admin', adminRoutes); // Routes for admin-related operations
app.use('/critic', criticRoutes); // Routes for critic-related operations

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});