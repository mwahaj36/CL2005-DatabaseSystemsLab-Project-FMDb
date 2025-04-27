const sql = require('mssql');
require('dotenv').config(); // Load environment variables from .env file

// Database configuration
const dbConfig = {
    server: process.env.DB_SERVER, // Azure SQL Server name (e.g., fmdb-server.database.windows.net)
    user: process.env.DB_USER, // SQL Server username
    password: process.env.DB_PASSWORD, // SQL Server password
    database: process.env.DB_NAME, // Database name
    port: 1433, // Azure SQL always uses port 1433
    options: {
        encrypt: true, // Encryption is REQUIRED for Azure SQL
        trustServerCertificate: false // In production, always false for Azure
    },
    connectionTimeout: 30000, // 30s to connect (optional but recommended)
    requestTimeout: 30000 // 30s timeout for queries (optional)
};

// Function to connect to the database
const connectToDatabase = async () => {
    try {
        // Check if a pool already exists (important in serverless functions / reloading servers)
        if (!sql.pool) {
            await sql.connect(dbConfig);
            console.log('Connected to Azure SQL Database!');
        }
    } catch (err) {
        console.error('Database connection failed:', err.message);
        throw err;
    }
};

module.exports = { connectToDatabase, sql };
