const express = require('express');
const sql = require('mssql'); // Import the mssql package for SQL Server
const app = express();
const port = 3000;


// Database configuration
const dbConfig = {
    server: 'localhost\\SQLEXPRESS', // Replace with your server name or IP
    user: 'sa', // Replace with your SQL Server username
    password: '123', // Replace with your SQL Server password
    port: 1433, // Default SQL Server port
    database: 'FMDB', // Replace with your database name
    options: {
        encrypt: true, // Use encryption if required
        trustServerCertificate: true // Use this if you're connecting to a local SQL Server
    }
};

app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});

// Connect to the database
sql.connect(dbConfig)
    .then(() => {
        console.log('Connected to the database!');
    })
    .catch(err => {
        console.error('Database connection failed:', err);
    });

// Example route to fetch data from the database
app.get('/data', async (req, res) => {
    try {
        const result = await sql.query('SELECT 22*22 AS Result'); // Example query
        res.json(result.recordset); // Send the query result as JSON
    } catch (err) {
        console.error('Error querying the database:', err);
        res.status(500).send('Error querying the database');
    }
});

