const express = require('express');
const { connectToDatabase } = require('./config/dbConfig'); // Import database connection
const app = express();
const port = 5000;

app.use(express.json()); // Middleware to parse JSON request bodies
app.use(express.urlencoded({ extended: true })); // For parsing application/x-www-form-urlencoded

// Connect to the database
connectToDatabase().catch(err => {
    console.error('Failed to initialize the server due to database connection issues.');
    process.exit(1); // Exit the application if the database connection fails
});

// Import and use routes
const authRoutes = require('./routes/auth');
const dataRoutes = require('./routes/data');
const defaultRoutes = require('./routes/default');
const userRoutes = require('./routes/users');
const movieRoutes = require('./routes/movies');
const activityRoutes = require('./routes/activity');
const watchlistRoutes = require('./routes/watchlist');
const notificationRoutes = require('./routes/notification'); // Import notification routes
const messageRoutes = require('./routes/message'); // Import message routes

app.use('/auth', authRoutes); // Routes for authentication
app.use('/data', dataRoutes); // Routes for data-related operations
app.use('/', defaultRoutes); // Use default route
app.use('/users', userRoutes); // Routes for user-related operations
app.use('/movies', movieRoutes); // Routes for movie-related operations
app.use('/activity', activityRoutes); // Routes for activity-related operations
app.use('/watchlist', watchlistRoutes); // Routes for watchlist-related operations
app.use('/notification', notificationRoutes); // Routes for notification-related operations
app.use('/message', messageRoutes); // Routes for message-related operations

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});