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


