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

