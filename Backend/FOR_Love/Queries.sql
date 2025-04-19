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
