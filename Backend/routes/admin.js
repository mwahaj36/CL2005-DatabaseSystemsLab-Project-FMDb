const express = require('express');
const sql = require('mssql'); 
const { authenticateToken, jwt } = require('../middleware/authMiddleware'); 
const router = express.Router();

// Add a new movie (Admin Only)
router.post('/movie', authenticateToken, async (req, res) => {
    const { title, type, synopsis, releaseDate, movieLength, moviePosterLink, movieBackdropLink, language, imdbRating, fmdbRating, awards, boxOffice, mpaaRating, genres, keywords, actors, directors, writers } = req.body;

    const loggedInUserId = req.userId; // Extract user ID from the authenticated token

    try {
        const chkRequest = new sql.Request();
        // Check if the logged-in user is an admin
        const checkAdminQuery = `SELECT * FROM Users WHERE UserID = @loggedInUserId AND UserType = 'admin'`;
        chkRequest.input('loggedInUserId', sql.Int, loggedInUserId);
        const adminResult = await chkRequest.query(checkAdminQuery);

        if (adminResult.recordset.length === 0) {
            return res.status(403).send({ success: false, message: 'Only admins can add movies.' });
        }

        
        const request = new sql.Request();
        // Check if the movie with the same title and directors already exists
        const checkMovieQuery = `
            SELECT m.MovieID 
            FROM Movies m
            INNER JOIN MovieDirectors md ON m.MovieID = md.MovieID
            INNER JOIN Directors d ON md.DirectorID = d.DirectorID
            WHERE m.Title = @title AND d.DirectorName IN (${directors.map((_, i) => `@director${i}`).join(', ')})
        `;
        request.input('title', sql.VarChar(255), title);
        directors.forEach((director, index) => {
            request.input(`director${index}`, sql.VarChar(255), director);
        });
        const movieCheckResult = await request.query(checkMovieQuery);

        if (movieCheckResult.recordset.length > 0) {
            return res.status(400).send({ success: false, message: 'A movie with this title and one of the specified directors already exists.' });
        }

        // Insert the movie into the Movies table
        const insertMovieQuery = `
            INSERT INTO Movies (Title, Type, Synopsis, ReleaseDate, MovieLength, MoviePosterLink, MovieBackdropLink, Language, IMDB_Rating, FMDB_Rating, Awards, BoxOffice, MPAA_Rating)
            VALUES (@title, @type, @synopsis, @releaseDate, @movieLength, @moviePosterLink, @movieBackdropLink, @language, @imdbRating, @fmdbRating, @awards, @boxOffice, @mpaaRating)
            SELECT SCOPE_IDENTITY() AS MovieID
        `;
        const addRequest = new sql.Request();
        addRequest.input('title', sql.VarChar(255), title);
        addRequest.input('type', sql.VarChar(10), type);
        addRequest.input('synopsis', sql.Text, synopsis);
        addRequest.input('releaseDate', sql.Date, releaseDate);
        addRequest.input('movieLength', sql.VarChar(50), movieLength);
        addRequest.input('moviePosterLink', sql.VarChar(255), moviePosterLink);
        addRequest.input('movieBackdropLink', sql.VarChar(255), movieBackdropLink);
        addRequest.input('language', sql.VarChar(255), language);
        addRequest.input('imdbRating', sql.Decimal(3, 1), imdbRating);
        addRequest.input('fmdbRating', sql.Decimal(3, 1), fmdbRating || 1); // Default FMDB rating to 1
        addRequest.input('awards', sql.VarChar(255), awards);
        addRequest.input('boxOffice', sql.VarChar(50), boxOffice);
        addRequest.input('mpaaRating', sql.VarChar(10), mpaaRating);

        const movieResult = await addRequest.query(insertMovieQuery);
        const movieId = movieResult.recordset[0].MovieID;

        // Insert genres into MovieGenres table
        // Insert genres into MovieGenres table
        if (genres && genres.length > 0) {
            for (const genre of genres) {
            const genreRequest = new sql.Request();

            // Check if the genre exists
            const checkGenreQuery = `SELECT GenreID FROM Genres WHERE GenreName = @genreName`;
            genreRequest.input('genreName', sql.VarChar(50), genre);
            const genreResult = await genreRequest.query(checkGenreQuery);

            let genreId;
            if (genreResult.recordset.length === 0) {
                // Insert the genre if it doesn't exist
                const insertGenreQuery = `INSERT INTO Genres (GenreName) VALUES (@genreName); SELECT SCOPE_IDENTITY() AS GenreID`;
                const insertResult = await genreRequest.query(insertGenreQuery);
                genreId = insertResult.recordset[0].GenreID;
            } else {
                genreId = genreResult.recordset[0].GenreID;
            }

            // Insert the link into MovieGenres table
            const insertMovieGenreQuery = `
                INSERT INTO MovieGenres (GenreID, MovieID)
                VALUES (@genreId, @movieId)
            `;
            genreRequest.input('genreId', sql.Int, genreId);
            genreRequest.input('movieId', sql.Int, movieId);
            await genreRequest.query(insertMovieGenreQuery);
            }
        }

        // Insert keywords into MovieKeywords table
        if (keywords && keywords.length > 0) {
            for (const keyword of keywords) {
            const keywordRequest = new sql.Request();

            // Check if the keyword exists
            const checkKeywordQuery = `SELECT KeywordID FROM Keywords WHERE KeywordName = @keywordName`;
            keywordRequest.input('keywordName', sql.VarChar(50), keyword);
            const keywordResult = await keywordRequest.query(checkKeywordQuery);

            let keywordId;
            if (keywordResult.recordset.length === 0) {
                // Insert the keyword if it doesn't exist
                const insertKeywordQuery = `INSERT INTO Keywords (KeywordName) VALUES (@keywordName); SELECT SCOPE_IDENTITY() AS KeywordID`;
                const insertResult = await keywordRequest.query(insertKeywordQuery);
                keywordId = insertResult.recordset[0].KeywordID;
            } else {
                keywordId = keywordResult.recordset[0].KeywordID;
            }

            // Insert the link into MovieKeywords table
            const insertMovieKeywordQuery = `
                INSERT INTO MovieKeywords (KeywordID, MovieID)
                VALUES (@keywordId, @movieId)
            `;
            keywordRequest.input('keywordId', sql.Int, keywordId);
            keywordRequest.input('movieId', sql.Int, movieId);
            await keywordRequest.query(insertMovieKeywordQuery);
            }
        }

        // Insert actors into MovieActors table
        if (actors && actors.length > 0) {
            for (const actor of actors) {
            const actorRequest = new sql.Request();

            // Check if the actor exists
            const checkActorQuery = `SELECT ActorID FROM Actors WHERE ActorName = @actorName`;
            actorRequest.input('actorName', sql.VarChar(255), actor.name);
            const actorResult = await actorRequest.query(checkActorQuery);

            let actorId;
            if (actorResult.recordset.length === 0) {
                // Insert the actor if they don't exist
                const insertActorQuery = `INSERT INTO Actors (ActorName) VALUES (@actorName); SELECT SCOPE_IDENTITY() AS ActorID`;
                const insertResult = await actorRequest.query(insertActorQuery);
                actorId = insertResult.recordset[0].ActorID;
            } else {
                actorId = actorResult.recordset[0].ActorID;
            }

            // Insert the link into MovieActors table
            const insertMovieActorQuery = `
                INSERT INTO MovieActors (ActorID, MovieID, CharacterName)
                VALUES (@actorId, @movieId, @characterName)
            `;
            actorRequest.input('actorId', sql.Int, actorId);
            actorRequest.input('movieId', sql.Int, movieId);
            actorRequest.input('characterName', sql.VarChar(255), actor.character);
            await actorRequest.query(insertMovieActorQuery);
            }
        }

        // Insert directors into MovieDirectors table
        if (directors && directors.length > 0) {
            for (const director of directors) {
            const directorRequest = new sql.Request();

            // Check if the director exists
            const checkDirectorQuery = `SELECT DirectorID FROM Directors WHERE DirectorName = @directorName`;
            directorRequest.input('directorName', sql.VarChar(255), director);
            const directorResult = await directorRequest.query(checkDirectorQuery);

            let directorId;
            if (directorResult.recordset.length === 0) {
                // Insert the director if they don't exist
                const insertDirectorQuery = `INSERT INTO Directors (DirectorName) VALUES (@directorName); SELECT SCOPE_IDENTITY() AS DirectorID`;
                const insertResult = await directorRequest.query(insertDirectorQuery);
                directorId = insertResult.recordset[0].DirectorID;
            } else {
                directorId = directorResult.recordset[0].DirectorID;
            }

            // Insert the link into MovieDirectors table
            const insertMovieDirectorQuery = `
                INSERT INTO MovieDirectors (DirectorID, MovieID)
                VALUES (@directorId, @movieId)
            `;
            directorRequest.input('directorId', sql.Int, directorId);
            directorRequest.input('movieId', sql.Int, movieId);
            await directorRequest.query(insertMovieDirectorQuery);
            }
        }

        // Insert writers into MovieWriters table
        if (writers && writers.length > 0) {
            for (const writer of writers) {
            const writerRequest = new sql.Request();

            // Check if the writer exists
            const checkWriterQuery = `SELECT WriterID FROM Writers WHERE WriterName = @writerName`;
            writerRequest.input('writerName', sql.VarChar(255), writer);
            const writerResult = await writerRequest.query(checkWriterQuery);

            let writerId;
            if (writerResult.recordset.length === 0) {
                // Insert the writer if they don't exist
                const insertWriterQuery = `INSERT INTO Writers (WriterName) VALUES (@writerName); SELECT SCOPE_IDENTITY() AS WriterID`;
                const insertResult = await writerRequest.query(insertWriterQuery);
                writerId = insertResult.recordset[0].WriterID;
            } else {
                writerId = writerResult.recordset[0].WriterID;
            }

            // Insert the link into MovieWriters table
            const insertMovieWriterQuery = `
                INSERT INTO MovieWriters (WriterID, MovieID)
                VALUES (@writerId, @movieId)
            `;
            writerRequest.input('writerId', sql.Int, writerId);
            writerRequest.input('movieId', sql.Int, movieId);
            await writerRequest.query(insertMovieWriterQuery);
            }
        }

        res.status(201).send({ success: true, message: 'Movie added successfully.', movieId });
    } catch (err) {
        console.error('Error adding movie:', err.message);
        res.status(500).send({ success: false, message: 'Error adding movie.', error: err.message });
    }
});

// Delete User Account (Admin Only)
router.delete('/user/:userId', authenticateToken, async (req, res) => {
    let { userId } = req.params;
    if (!userId) {
        return res.status(400).send({ success: false, message: 'userId parameter is required.' });
    } 
    userId = parseInt(userId, 10);
    if (isNaN(userId)) {
        return res.status(400).send({ success: false, message: 'Invalid userId. It must be a number.' });
    }

    const loggedInUserId = req.userId; // Extract user ID from the authenticated token

    try {
        const request = new sql.Request();

        // Check if the logged-in user is an admin
        const checkAdminQuery = `SELECT * FROM Users WHERE UserID = @loggedInUserId AND UserType = 'admin'`;

        request.input('loggedInUserId', sql.Int, loggedInUserId);
        const adminResult = await request.query(checkAdminQuery);

        if (adminResult.recordset.length === 0) {
            return res.status(403).send({ success: false, message: 'Only admins can delete accounts.' });
        }

        // Check if the user exists
        const checkUserQuery = `SELECT * FROM Users WHERE UserID = @userId`;
        const userCheckRequest = new sql.Request();
        userCheckRequest.input('userId', sql.Int, userId);
        const userResult = await userCheckRequest.query(checkUserQuery);

        if (userResult.recordset.length === 0) {
            return res.status(404).send({ success: false, message: 'User not found.' });
        }

        // Delete the user's account
        const deleteUserQuery = `DELETE FROM Users WHERE UserID = @userId`;
        

        const delRequest = new sql.Request();
        delRequest.input('userId', sql.Int, userId);
        await delRequest.query(deleteUserQuery);
        
        res.send({ success: true, message: 'User account deleted successfully.' });
    } catch (err) {
        console.error('Error deleting user account:', err.message);
        res.status(500).send({ success: false, message: 'Error deleting user account.' });
    }
});

// Delete Movie (Admin Only)
router.delete('/movie/:movieId', authenticateToken, async (req, res) => {
    let { movieId } = req.params;
    if (!movieId) {
        return res.status(400).send({ success: false, message: 'movieId parameter is required.' });
    }
    movieId = parseInt(movieId, 10);
    if (isNaN(movieId)) {
        return res.status(400).send({ success: false, message: 'Invalid movieId. It must be a number.' });
    }

    const loggedInUserId = req.userId; // Extract user ID from the authenticated token

    try {
        const request = new sql.Request();

        // Check if the logged-in user is an admin
        const checkAdminQuery = `SELECT * FROM Users WHERE UserID = @loggedInUserId AND UserType = 'admin'`;

        request.input('loggedInUserId', sql.Int, loggedInUserId);
        const adminResult = await request.query(checkAdminQuery);

        if (adminResult.recordset.length === 0) {
            return res.status(403).send({ success: false, message: 'Only admins can delete movies.' });
        }

        // Check if the movie exists
        const checkMovieQuery = `SELECT * FROM Movies WHERE MovieID = @movieId`;
        const movieCheckRequest = new sql.Request();
        movieCheckRequest.input('movieId', sql.Int, movieId);
        const movieResult = await movieCheckRequest.query(checkMovieQuery);

        if (movieResult.recordset.length === 0) {
            return res.status(404).send({ success: false, message: 'Movie not found.' });
        }

        // Delete the movie
        const deleteMovieQuery = `DELETE FROM Movies WHERE MovieID = @movieId`;

        const delRequest = new sql.Request();
        delRequest.input('movieId', sql.Int, movieId);
        await delRequest.query(deleteMovieQuery);

        res.send({ success: true, message: 'Movie deleted successfully.' });
    } catch (err) {
        console.error('Error deleting movie:', err.message);
        res.status(500).send({ success: false, message: 'Error deleting movie.' });
    }
});

// Delete User Activity (Admin Only)
router.delete('/activity/:activityId', authenticateToken, async (req, res) => {
    let { activityId } = req.params;
    if (!activityId) {
        return res.status(400).send({ success: false, message: 'activityId parameter is required.' });
    }
    activityId = parseInt(activityId, 10);
    if (isNaN(activityId)) {
        return res.status(400).send({ success: false, message: 'Invalid activityId. It must be a number.' });
    }

    const loggedInUserId = req.userId; // Extract user ID from the authenticated token

    try {
        const request = new sql.Request();

        // Check if the logged-in user is an admin
        const checkAdminQuery = `SELECT * FROM Users WHERE UserID = @loggedInUserId AND UserType = 'admin'`;

        request.input('loggedInUserId', sql.Int, loggedInUserId);
        const adminResult = await request.query(checkAdminQuery);

        if (adminResult.recordset.length === 0) {
            return res.status(403).send({ success: false, message: 'Only admins can delete activities.' });
        }

        // Check if the activity exists
        const checkActivityQuery = `SELECT * FROM Activity WHERE ActivityID = @activityId`;
        const activityCheckRequest = new sql.Request();
        activityCheckRequest.input('activityId', sql.Int, activityId);
        const activityResult = await activityCheckRequest.query(checkActivityQuery);

        if (activityResult.recordset.length === 0) {
            return res.status(404).send({ success: false, message: 'Activity not found.' });
        }

        // Delete the activity
        const deleteActivityQuery = `DELETE FROM Activity WHERE ActivityID = @activityId`;

        const delRequest = new sql.Request();
        delRequest.input('activityId', sql.Int, activityId);
        await delRequest.query(deleteActivityQuery);

        res.send({ success: true, message: 'Activity deleted successfully.' });
    } catch (err) {
        console.error('Error deleting activity:', err.message);
        res.status(500).send({ success: false, message: 'Error deleting activity.' });
    }

});

module.exports = router;