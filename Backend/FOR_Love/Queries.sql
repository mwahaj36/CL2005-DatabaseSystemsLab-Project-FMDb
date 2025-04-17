-- 5 most recent activities of a user’s friends 

DECLARE @CurrentUserID INT = 1; -- Replace with the actual user ID

SELECT TOP 5 A.ActivityID, A.ActivityDateTime, A.IsLogged, A.UserID, A.MovieID, A.Ratings, A.Review, A.IsReply
FROM Activity A
JOIN Users U ON A.UserID = U.UserID
JOIN Movies M ON A.MovieID = M.MovieID
WHERE A.UserID IN (
    SELECT User2ID FROM Friends WHERE User1ID = @CurrentUserID
    UNION
    SELECT User1ID FROM Friends WHERE User2ID = @CurrentUserID
)
ORDER BY A.ActivityDateTime DESC;



-- Count of unique MovieIDs in the Activity table for a specific user:

DECLARE @CurrentUserID INT = 1; -- Replace with the actual user ID

SELECT COUNT(DISTINCT MovieID) AS UniqueMoviesAdded
FROM Activity
WHERE UserID = @CurrentUserID;



-- count of movies logged by a specific user 

DECLARE @CurrentUserID INT = 1; -- Replace with the actual user ID

SELECT COUNT(MovieID) AS LoggedMoviesCount
FROM Activity
WHERE UserID = @CurrentUserID AND IsLogged = 1;



-- Count of movies a user has liked,

DECLARE @CurrentUserID INT = 1; -- Replace with the actual user ID

SELECT COUNT(*) AS LikedMoviesCount
FROM UserLikedMovies
WHERE UserID = @CurrentUserID;



--  First favorite movie backdrop of the user 

DECLARE @CurrentUserID INT = 1; -- Replace with the actual user ID

SELECT TOP 1 M.MovieBackdropLink
FROM UserFavorites UF
JOIN Movies M ON UF.MovieID = M.MovieID
WHERE UF.UserID = @CurrentUserID
ORDER BY UF.Rank ASC;


---------------------------------------------------------------------------------------------------------------

-- FOR LOVE (you can directly DELETE USER as it will work the same)


-- 1. Delete replies related to user's activities or replies

DECLARE @UserID INT = 4;


DELETE FROM Reply
WHERE ActivityID IN (SELECT ActivityID FROM Activity WHERE UserID = @UserID)
   OR ReplyID IN (SELECT ActivityID FROM Activity WHERE UserID = @UserID)

-- 2. Delete user's activities
DELETE FROM Activity WHERE UserID = @UserID


-- 3. Delete from Watchlist
DELETE FROM UserWatchlist WHERE UserID = @UserID

-- 4. Delete from UserFavorites
DELETE FROM UserFavorites WHERE UserID = @UserID

-- 5. Delete from UserLikedMovies
DELETE FROM UserLikedMovies WHERE UserID = @UserID

-- 6. Delete from Friends (both directions)
DELETE FROM Friends WHERE User1ID = @UserID OR User2ID = @UserID

-- 7. Delete from Notifications (sender/receiver)
DELETE FROM Notifications WHERE SenderID = @UserID OR ReceiverID = @UserID

-- 8. Now, finally delete the user
DELETE FROM Users WHERE UserID = @UserID



---------------------------------------------------------------------------------------------------------------

-- FOR LOVE (you can directly DELETE USER as it will work the same)


DECLARE @MovieID INT = 1 ;

-- 1. Delete from Watchlist
DELETE FROM UserWatchlist WHERE MovieID = @MovieID;

-- 2. Delete from UserFavorites
DELETE FROM UserFavorites WHERE MovieID = @MovieID;

-- 3. Delete from UserLikedMovies
DELETE FROM UserLikedMovies WHERE MovieID = @MovieID;


-- 5. Delete from MovieGenres
DELETE FROM MovieGenres WHERE MovieID = @MovieID;

-- 6. Delete from MovieActors
DELETE FROM MovieActors WHERE MovieID = @MovieID;

-- 7. Delete from MovieDirectors
DELETE FROM MovieDirectors WHERE MovieID = @MovieID;

-- 8. Delete from MovieWriters
DELETE FROM MovieWriters WHERE MovieID = @MovieID;

-- 9. Delete from MovieKeywords
DELETE FROM MovieKeywords WHERE MovieID = @MovieID;

-- 10. Finally, delete the Movie
DELETE FROM Movies WHERE MovieID = @MovieID;



---------------------------------------------------------------------------------------------------------------
-- Delete a movie by its ID:

DELETE FROM Movies
WHERE MovieID = 1;

-- Delete all movies of a certain type (e.g., Series):

DELETE FROM Movies
WHERE Type = 'Series';

-- Delete movies released before a certain date:

DELETE FROM Movies
WHERE ReleaseDate < '2000-01-01';

--Delete movies with low ratings (e.g., FMDB rating < 3):

DELETE FROM Movies
WHERE FMDB_Rating < 3;

-- Delete movies with a specific keyword:

DELETE FROM Movies
WHERE MovieID IN (
    SELECT MovieID
    FROM MovieKeywords mk
    INNER JOIN Keywords k ON mk.KeywordID = k.KeywordID
    WHERE k.KeywordName = 'Horror'
);

-- Delete movies with a specific Genre:

DELETE FROM Movies
WHERE MovieID IN (
    SELECT MovieID
    FROM MovieGenres mg
    INNER JOIN Genres g ON mg.GenreID = g.GenreID
    WHERE g.GenreName = 'Comedy'
);


-- Delete movies with a specific Actors

DELETE FROM Movies
WHERE MovieID IN (
    SELECT MovieID
    FROM MovieActors ma
    INNER JOIN Actors a ON ma.ActorID = a.ActorID
    WHERE a.ActorName = 'Tom Hanks'
);

-- Delete movies with a specific Director ;

DELETE FROM Movies
WHERE MovieID IN (
    SELECT MovieID
    FROM MovieDirectors md
    INNER JOIN Directors d ON md.DirectorID = d.DirectorID
    WHERE d.DirectorName = 'Christopher Nolan'
);


-- Delete movies with a specific Writer:

 DELETE FROM Movies
WHERE MovieID IN (
    SELECT MovieID
    FROM MovieWriters mw
    INNER JOIN Writers w ON mw.WriterID = w.WriterID
    WHERE w.WriterName = 'Quentin Tarantino'
);
