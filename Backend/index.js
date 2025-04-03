const express = require('express');
const sql = require('mssql'); // Import the mssql package for SQL Server
const app = express();
const port = 3000;


// Database configuration
const dbConfig = {
    server: 'localhost\\SQLEXPRESS', // Replace with your server name or IP
    // things to do on OWN machine: ensure browser is running and automatic start is enabled
    // sql tcp/ip protocol is enabled in sql server configuration manager and in properties/ipaddress under IPAII tcp port is 1433
    // in ssms, right click server, properties, security and ensure sql server and windows authentication mode is selected. if not added, add new login with below credentials by right clicking security and selecting new login. sa may or may not be disabled, u can change that too
    // idk if its required, but firewall pe incoming connections mei 1433 port allow karo via rule.
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

