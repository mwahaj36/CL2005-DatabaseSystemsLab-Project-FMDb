const express = require('express');
const sql = require('mssql');
const router = express.Router();

// Example route to fetch data from the database
router.get('/', async (req, res) => {
    try {
        const result = await sql.query('SELECT 22*22 AS Result'); // Example query
        res.json(result.recordset); // Send the query result as JSON
    } catch (err) {
        console.error('Error querying the database:', err.message);
        res.status(500).send('Error querying the database');
    }
});

module.exports = router;
