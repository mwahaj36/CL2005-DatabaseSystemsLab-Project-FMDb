-- Create FMDb database if it doesn't exist
IF NOT EXISTS (
    SELECT
        name
    FROM
        sys.databases
    WHERE
        name = N'FMDb'
) 
BEGIN 
	CREATE DATABASE FMDb;
	PRINT 'Database FMDb created successfully.';
END 
ELSE 
BEGIN 
	PRINT 'Database FMDb already exists. Deleting it and creating it again.';
	ALTER DATABASE FMDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE FMDb;
    CREATE DATABASE FMDb;
	PRINT 'Database FMDb created successfully.';
END

GO 

-- Using FMDB 
USE FMDb;

GO
-- Movies Table
CREATE TABLE
    Movies (
        MovieID INT IDENTITY (1, 1) PRIMARY KEY,
        Title VARCHAR(255),
        Type VARCHAR(10) CHECK (Type IN ('Movie', 'Series')) NOT NULL,
        Synopsis TEXT,
        ReleaseDate DATE,
        MovieLength VARCHAR(50),
        MoviePosterLink VARCHAR(255),
        MovieBackdropLink VARCHAR(255),
        Language VARCHAR(255),
        IMDB_Rating DECIMAL(2, 1) CHECK (IMDB_Rating BETWEEN 1 AND 10),
        FMDB_Rating DECIMAL(2, 1) DEFAULT 1 CHECK (FMDB_Rating BETWEEN 1 AND 10),
        Awards VARCHAR(255),
        BoxOffice VARCHAR(50),
        MPAA_Rating VARCHAR(10),

    );
GO
-- Users Table
CREATE TABLE
    Users (
        UserID INT IDENTITY (1, 1) PRIMARY KEY,
        FullName VARCHAR(255),
        Username VARCHAR(50) UNIQUE,
        PasswordHash VARCHAR(255),
        Email VARCHAR(255) UNIQUE,
        Gender VARCHAR(10) CHECK (Gender IN ('Male', 'Female', 'Other')) NOT NULL,
        DateOfBirth DATE,
        Bio TEXT,
        UserType VARCHAR(10) CHECK (UserType IN ('User', 'Admin', 'Critique')) NOT NULL,
        Privacy VARCHAR(10) NOT NULL,

        -- Table-level CHECK constraint below all columns
        CONSTRAINT CK_Users_PrivacyRules CHECK (
            Privacy IN ('Public', 'Private') 
            AND NOT (UserType = 'Critique' AND Privacy = 'Private')
        )
    );

GO 
-- Friends Table
CREATE TABLE
    Friends (
        User1ID INT NOT NULL,
        User2ID INT NOT NULL,
        PRIMARY KEY (User1ID, User2ID),
        CONSTRAINT CK_Friends_Order CHECK (User1ID < User2ID),
        FOREIGN KEY (User1ID) REFERENCES Users (UserID) ,
        FOREIGN KEY (User2ID) REFERENCES Users (UserID) 
    );

GO

CREATE TRIGGER trg_DeleteUser_Friends
ON Users
AFTER DELETE
AS
BEGIN
    DELETE FROM Friends WHERE User1ID IN (SELECT UserID FROM DELETED)
    DELETE FROM Friends WHERE User2ID IN (SELECT UserID FROM DELETED)
END

GO 
-- UserFavorites, UserLikedMovies, UserWatchlist
CREATE TABLE
    UserFavorites (
        UserID INT NOT NULL,
        MovieID INT NOT NULL,
        Rank INT CHECK (Rank > 0),
        PRIMARY KEY (UserID, MovieID),
        FOREIGN KEY (UserID) REFERENCES Users (UserID) ON DELETE CASCADE,
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID) ON DELETE CASCADE
    );

GO
CREATE TABLE
    UserLikedMovies (
        UserID INT NOT NULL,
        MovieID INT NOT NULL,
        LikedAt DATETIME DEFAULT GETDATE(),
        PRIMARY KEY (UserID, MovieID),
        FOREIGN KEY (UserID) REFERENCES Users (UserID) ON DELETE CASCADE,
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID) ON DELETE CASCADE
    );

GO
CREATE TABLE
    UserWatchlist (
        UserID INT NOT NULL,
        MovieID INT NOT NULL,
        PRIMARY KEY (UserID, MovieID),
        AddedAt DATETIME DEFAULT GETDATE(),
        FOREIGN KEY (UserID) REFERENCES Users (UserID) ON DELETE CASCADE,
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID) ON DELETE CASCADE
    );

GO
-- Movie People Tables
CREATE TABLE
    Actors (
        ActorID INT IDENTITY (1, 1) PRIMARY KEY,
        ActorName VARCHAR(255)
    );

GO
CREATE TABLE
    MovieActors (
        ActorID INT NOT NULL,
        MovieID INT NOT NULL,
        CharacterName VARCHAR(255),
        PRIMARY KEY (ActorID, MovieID),
        FOREIGN KEY (ActorID) REFERENCES Actors (ActorID) ON DELETE CASCADE,
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID) ON DELETE CASCADE
    );

GO
CREATE TABLE
    Directors (
        DirectorID INT IDENTITY (1, 1) PRIMARY KEY,
        DirectorName VARCHAR(255)
    );

GO
CREATE TABLE
    MovieDirectors (
        DirectorID INT NOT NULL,
        MovieID INT NOT NULL,
        PRIMARY KEY (DirectorID, MovieID),
        FOREIGN KEY (DirectorID) REFERENCES Directors (DirectorID) ON DELETE CASCADE,
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID) ON DELETE CASCADE
    );

GO
CREATE TABLE
    Writers (
        WriterID INT IDENTITY (1, 1) PRIMARY KEY,
        WriterName VARCHAR(255)
    );

GO
CREATE TABLE
    MovieWriters (
        WriterID INT NOT NULL,
        MovieID INT NOT NULL,
        PRIMARY KEY (WriterID, MovieID),
        FOREIGN KEY (WriterID) REFERENCES Writers (WriterID) ON DELETE CASCADE,
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID) ON DELETE CASCADE
    );


GO
-- Genres and Tags
CREATE TABLE
    Genres (
        GenreID INT IDENTITY (1, 1) PRIMARY KEY,
        GenreName VARCHAR(50) UNIQUE
    );

GO
CREATE TABLE
    Keywords (
        KeywordID INT IDENTITY (1, 1) PRIMARY KEY,
        KeywordName VARCHAR(50) UNIQUE
    );

GO
CREATE TABLE
    MovieKeywords (
        KeywordID INT NOT NULL,
        MovieID INT NOT NULL,
        PRIMARY KEY (KeywordID, MovieID),
        FOREIGN KEY (KeywordID) REFERENCES Keywords (KeywordID) ON DELETE CASCADE,
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID) ON DELETE CASCADE
    );

GO
CREATE TABLE
    MovieGenres (
        GenreID INT NOT NULL,
        MovieID INT NOT NULL,
        PRIMARY KEY (GenreID, MovieID),
        FOREIGN KEY (GenreID) REFERENCES Genres (GenreID) ON DELETE CASCADE,
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID) ON DELETE CASCADE
    );


GO
-- Activity and Reply
CREATE TABLE
    Activity (
        ActivityID INT IDENTITY (1, 1) PRIMARY KEY,
        ActivityDateTime DATETIME DEFAULT CURRENT_TIMESTAMP,
        IsLogged BIT NOT NULL,
        UserID INT NOT NULL,
        MovieID INT NOT NULL,
        Ratings INT CHECK (Ratings BETWEEN 1 AND 10),
        Review TEXT,
        IsReply BIT,
        FOREIGN KEY (UserID) REFERENCES Users (UserID) ,
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID)
    );

GO


CREATE TABLE
    Reply (
        ActivityID INT NOT NULL,
        ReplyID INT NOT NULL,
        PRIMARY KEY (ReplyID, ActivityID),
        FOREIGN KEY (ActivityID) REFERENCES Activity (ActivityID) ,
        FOREIGN KEY (ReplyID) REFERENCES Activity (ActivityID) 
    );

GO

CREATE TRIGGER trg_DeleteActivity_Replies
ON Activity
AFTER DELETE
AS
BEGIN
    -- Step 1: Delete reply relationships (Reply table) where the original post is deleted
    DELETE FROM Reply
    WHERE ActivityID IN (SELECT ActivityID FROM DELETED)

    -- Step 2: Delete reply relationships where the reply itself is deleted
    DELETE FROM Reply
    WHERE ReplyID IN (SELECT ActivityID FROM DELETED)
END

GO

CREATE TABLE
    ActivityLikes (
        ActivityID INT NOT NULL,
        UserID INT NOT NULL,
        LikedAt DATETIME DEFAULT GETDATE(),
        PRIMARY KEY (UserID, ActivityID),
        FOREIGN KEY (ActivityID) REFERENCES Activity (ActivityID) ON Delete Cascade ,
        FOREIGN KEY (UserID) REFERENCES Users (UserID) ON Delete Cascade ,
    );

GO

-- Trigger to update the average rating of a movie
CREATE TRIGGER trg_UpdateMovieRating
ON Activity
AFTER INSERT, UPDATE, DELETE
AS
BEGIN

    -- Update the average rating for movies affected by INSERT or UPDATE
    UPDATE Movies
    SET FMDB_Rating = (
        SELECT AVG(CAST(Ratings AS FLOAT))
        FROM Activity
        WHERE MovieID = inserted.MovieID AND Ratings IS NOT NULL
    )
    FROM Movies
    INNER JOIN inserted ON Movies.MovieID = inserted.MovieID;

    -- Update the average rating for movies affected by DELETE
    UPDATE Movies
    SET FMDB_Rating = (
        SELECT AVG(CAST(Ratings AS FLOAT))
        FROM Activity
        WHERE MovieID = deleted.MovieID AND Ratings IS NOT NULL
    )
    FROM Movies
    INNER JOIN deleted ON Movies.MovieID = deleted.MovieID;
END;


GO
CREATE TABLE Notifications (
    NotificationID INT IDENTITY (1, 1) PRIMARY KEY,
    SenderID INT NOT NULL,
    ReceiverID INT NOT NULL,
    Message TEXT,
    NotificationType VARCHAR(225) CHECK (NotificationType IN ('AdminReq', 'CritiqueReq', 'FriendReq', 'General')) NOT NULL,
    SentAt DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (SenderID) REFERENCES Users(UserID) ,
    FOREIGN KEY (ReceiverID) REFERENCES Users(UserID) 
);
 GO 

 CREATE TRIGGER trg_DeleteUser_Notifications
ON Users
AFTER DELETE
AS
BEGIN
    DELETE FROM Notifications WHERE SenderID IN (SELECT UserID FROM DELETED)
    DELETE FROM Notifications WHERE ReceiverID IN (SELECT UserID FROM DELETED)
END



GO
CREATE VIEW v_Leaderboard AS
WITH ActivityStats AS (
    SELECT 
        UserID,
        COUNT(*) AS ActivityCount,
        COUNT(CASE WHEN IsLogged = 1 THEN 1 END) AS MoviesWatchedCount,
        COUNT(CASE WHEN IsLogged = 1 THEN 1 END) * 2 +
        COUNT(CASE WHEN IsLogged = 0 THEN 1 END) AS Score
    FROM Activity
    WHERE ActivityDateTime >= DATEADD(DAY, -7, GETDATE())
    GROUP BY UserID
),
RankedUsers AS (
    SELECT 
        UserID,
        ActivityCount,
        MoviesWatchedCount,
        Score,
        ROW_NUMBER() OVER (ORDER BY Score DESC) AS Rank
    FROM ActivityStats
)
SELECT * FROM RankedUsers;