const sql = require('mssql'); 
const { processMoviesWithDirectors } = require('./processMovies');


async function getUserBaseStats(userId) {
    const baseStatsQuery = `
        SELECT
            (SELECT COUNT(DISTINCT MovieID) FROM Activity WHERE UserID = @userId) AS uniqueMoviesWatched,
            (SELECT COUNT(MovieID) FROM Activity WHERE UserID = @userId AND IsLogged = 1) AS loggedMoviesCount,
            (SELECT COUNT(*) FROM UserLikedMovies WHERE UserID = @userId) AS likedMoviesCount,
            (SELECT TOP 1 M.MovieBackdropLink
             FROM UserFavorites UF
             JOIN Movies M ON UF.MovieID = M.MovieID
             WHERE UF.UserID = @userId
             ORDER BY UF.Rank ASC) AS firstFavoriteBackdrop
    `;

    try {
        const statsRequest = new sql.Request();
        statsRequest.input('userId', sql.Int, userId);
        const statsResult = await statsRequest.query(baseStatsQuery);
        
        // Return the first row of results
        return statsResult.recordset[0] || {
            uniqueMoviesWatched: 0,
            loggedMoviesCount: 0,
            likedMoviesCount: 0,
            firstFavoriteBackdrop: null
        };
    } catch (error) {
        console.error('Error fetching user stats:', error);
        throw error; 
    }
}

async function getUserExtraStats(userId) {
    const extraQuery = `
        -- 0. Favorite movies (top 5)
        SELECT M.Title, M.MoviePosterLink, M.MovieID
        FROM UserFavorites UF
        JOIN Movies M ON UF.MovieID = M.MovieID
        WHERE UF.UserID = @userId
        ORDER BY UF.Rank ASC

        -- 1. Recent activities (top 5)
        SELECT TOP 5 * FROM Activity 
        WHERE UserID = @userId AND Ratings IS NOT NULL AND Review IS NOT NULL 
        ORDER BY ActivityDateTime DESC

        -- 2. Unique movies watched this year (distinct MovieID)
        SELECT COUNT(DISTINCT MovieID) AS MoviesWatched
        FROM Activity
        WHERE UserID = @userId
        AND DATEDIFF(YEAR, ActivityDateTime, GETDATE()) = 0
        
        -- 3. Movies logged this year (IsLogged = 1)
        SELECT COUNT(MovieID) AS MoviesLogged
        FROM Activity
        WHERE UserID = @userId
        AND IsLogged = 1
        AND DATEDIFF(YEAR, ActivityDateTime, GETDATE()) = 0
        
        -- 4. Total likes received on your activities this year
        SELECT COUNT(*) AS ActivityLikesReceived
        FROM ActivityLikes al
        JOIN Activity a ON al.ActivityID = a.ActivityID
        WHERE a.UserID = @userId
        AND DATEDIFF(YEAR, al.LikedAt, GETDATE()) = 0
        
        -- 5. Total reviews you wrote this year
        SELECT COUNT(*) ReviewsWritten
        FROM Activity
        WHERE UserID = @userId
        AND Review IS NOT NULL
        AND DATEDIFF(YEAR, ActivityDateTime, GETDATE()) = 0
        
        -- 6. Total activity entries this year
        SELECT COUNT(*) ActivitiesCount
        FROM Activity
        WHERE UserID = @userId
        AND DATEDIFF(YEAR, ActivityDateTime, GETDATE()) = 0
        
        -- 7. Your most‑watched director this year
        SELECT TOP 1 d.DirectorName
        FROM Activity a
        JOIN MovieDirectors md ON a.MovieID = md.MovieID
        JOIN Directors d      ON md.DirectorID = d.DirectorID
        WHERE a.UserID = @userId
        AND a.IsLogged = 1
        AND DATEDIFF(YEAR, a.ActivityDateTime, GETDATE()) = 0
        GROUP BY d.DirectorName
        ORDER BY COUNT(*) DESC
        
        -- 8. Your most‑watched actor this year
        SELECT TOP 1 ac.ActorName
        FROM Activity a
        JOIN MovieActors ma ON a.MovieID = ma.MovieID
        JOIN Actors ac       ON ma.ActorID = ac.ActorID
        WHERE a.UserID = @userId
        AND a.IsLogged = 1
        AND DATEDIFF(YEAR, a.ActivityDateTime, GETDATE()) = 0
        GROUP BY ac.ActorName
        ORDER BY COUNT(*) DESC
        
        -- 9. Your most‑logged movie this year
        SELECT TOP 1 m.Title
        FROM Activity a
        JOIN Movies m ON a.MovieID = m.MovieID
        WHERE a.UserID = @userId
        AND a.IsLogged = 1
        AND DATEDIFF(YEAR, a.ActivityDateTime, GETDATE()) = 0
        GROUP BY m.Title
        ORDER BY COUNT(*) DESC
        
        -- 10. Your top genre this year
        SELECT TOP 1 g.GenreName
        FROM Activity a
        JOIN MovieGenres mg ON a.MovieID = mg.MovieID
        JOIN Genres g        ON mg.GenreID = g.GenreID
        WHERE a.UserID = @userId
        AND a.IsLogged = 1
        AND DATEDIFF(YEAR, a.ActivityDateTime, GETDATE()) = 0
        GROUP BY g.GenreName
        ORDER BY COUNT(*) DESC
        
        -- 11. Top 5 keywords this year, comma‑separated (SQL Server 2017+)
        SELECT TOP 5 k.KeywordName
        FROM Activity a
        JOIN MovieKeywords mk ON a.MovieID = mk.MovieID
        JOIN Keywords k       ON mk.KeywordID = k.KeywordID
        WHERE a.UserID = @userId
            AND a.IsLogged = 1
            AND DATEDIFF(YEAR, a.ActivityDateTime, GETDATE()) = 0
        GROUP BY k.KeywordName
        ORDER BY COUNT(*) DESC
    `;
    try{
        const extraRequest = new sql.Request();
        extraRequest.input('userId', sql.Int, userId);
        const extraResult = await extraRequest.query(extraQuery);

        // 1) Destructure the 12 recordsets:
        const [
            favMoviesRaw,
            recentActivitiesRaw,
            watchedRaw,
            loggedRaw,
            likesRaw,
            reviewsRaw,
            activitiesRaw,
            directorRaw,
            actorRaw,
            loggedMovieRaw,
            genreRaw,
            keywordsRaw
        ] = extraResult.recordsets;

        // 2) Pull out scalar values (or default to 0 / null)
        const favoriteMovies     = await processMoviesWithDirectors(favMoviesRaw);
        const recentActivities   = recentActivitiesRaw; 
        const moviesWatched      = watchedRaw[0]?.MoviesWatched      ?? 0;
        const moviesLogged       = loggedRaw[0]?.MoviesLogged       ?? 0;
        const activityLikes      = likesRaw[0]?.ActivityLikesReceived ?? 0;
        const reviewsWritten     = reviewsRaw[0]?.ReviewsWritten    ?? 0;
        const activitiesCount    = activitiesRaw[0]?.ActivitiesCount ?? 0;
        const mostWatchedDirector= directorRaw[0]?.DirectorName     ?? null;
        const mostWatchedActor   = actorRaw[0]?.ActorName           ?? null;
        const mostLoggedMovie    = loggedMovieRaw[0]?.Title         ?? null;
        const topGenre           = genreRaw[0]?.GenreName           ?? null;
        const topKeywords        = keywordsRaw.map(r => r.KeywordName);

        return {
            favoriteMovies,
            recentActivities,
            yearlyStats: {
                moviesWatched,
                moviesLogged,
                activityLikes,
                reviewsWritten,
                activitiesCount,
                mostWatchedDirector,
                mostWatchedActor,
                mostLoggedMovie,
                topGenre,
                topKeywords
            }
        };
    } catch (error) {
        console.error('Error fetching user extra stats:', error);
        throw error; 
    }
}

async function isFriend(loggedInUserId, otherUserId) {
    // ensure the smaller ID goes into User1ID
    const [u1, u2] = loggedInUserId < otherUserId
      ? [loggedInUserId, otherUserId]
      : [otherUserId, loggedInUserId];
  
    try {
      const request = new sql.Request();
      request.input('u1', sql.Int, u1);
      request.input('u2', sql.Int, u2);
  
      const result = await request.query(`
        SELECT COUNT(*) AS cnt
        FROM Friends
        WHERE User1ID = @u1
          AND User2ID = @u2
      `);
  
      return result.recordset[0].cnt > 0;
    } catch (err) {
      console.error('isFriend error:', err);
      throw err; // Rethrow the error to be handled by the calling function
    }
  }

module.exports = {
    getUserBaseStats,
    getUserExtraStats,
    isFriend
};