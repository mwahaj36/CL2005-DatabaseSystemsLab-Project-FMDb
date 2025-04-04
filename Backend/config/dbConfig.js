const sql = require('mssql');

// things to do on OWN machine: sql tcp/ip protocol is enabled in sql server configuration manager,
// ensure sql server browser is running and automatic start is enabled.
// In ssms, right click server, properties, security and ensure sql server and windows authentication mode is selected. if not added, add new login with below credentials by right clicking security and selecting new login. sa may or may not be disabled, u can change that too

// Database configuration
const dbConfig = {
    server: 'localhost\\SQLEXPRESS', // Replace with your server name or IP
    user: 'sa', // Replace with your SQL Server username
    password: '123', // Replace with your SQL Server password
    database: 'FMDb', // Replace with your database name
    options: {
        encrypt: true, // Use encryption if required
        trustServerCertificate: true // Use this if you're connecting to a local SQL Server
    }
};

// Function to connect to the database
const connectToDatabase = async () => {
    try {
        await sql.connect(dbConfig);
        console.log('Connected to the database!');
    } catch (err) {
        console.error('Database connection failed:', err.message);
        throw err;
    }
};

module.exports = { connectToDatabase, sql };
