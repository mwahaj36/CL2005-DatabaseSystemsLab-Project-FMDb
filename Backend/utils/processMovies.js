const sql = require('mssql'); // Assuming you are using mssql package for SQL Server

// Function to process movies and fetch directors
async function processMoviesWithDirectors(recordset) {
    if (!recordset || recordset.length === 0) {
        return [];
    }

    // Extract movie IDs from the recordset
    const movieIds = recordset.map(row => row.MovieID).join(',');

    // Query to fetch directors for the movies
    const directorsQuery = `
        SELECT MD.MovieID, D.DirectorName
        FROM MovieDirectors MD
        JOIN Directors D ON MD.DirectorID = D.DirectorID
        WHERE MD.MovieID IN (${movieIds})
    `;
    const sqlRequest = new sql.Request();
    const directorsResult = await sqlRequest.query(directorsQuery);

    // Group directors by MovieID
    const directorsMap = {};
    directorsResult.recordset.forEach(row => {
        if (!directorsMap[row.MovieID]) {
            directorsMap[row.MovieID] = [];
        }
        directorsMap[row.MovieID].push(row.DirectorName);
    });

    // Map the directors back to the original recordset
    return recordset.map(row => ({
        movieid: row.MovieID,
        title: row.Title,
        movieposterlink: row.MoviePosterLink,
        moviebackdroplink: row.MovieBackdropLink,
        releaseDate: row.ReleaseDate,
        directors: directorsMap[row.MovieID] || []
    }));
};

module.exports = {
    processMoviesWithDirectors
};