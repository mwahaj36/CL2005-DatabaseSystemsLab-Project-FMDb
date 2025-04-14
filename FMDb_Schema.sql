-- Create FMDb database if it doesn't exist
IF NOT EXISTS (
    SELECT
        name
    FROM
        sys.databases
    WHERE
        name = N'FMDb'
) BEGIN CREATE DATABASE FMDb;

PRINT 'Database FMDb created successfully.';

END ELSE BEGIN PRINT 'Database FMDb already exists.';

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
        IMDB_Rating DECIMAL(2, 1) CHECK (IMDB_Rating BETWEEN 0 AND 10),
        FMDB_Rating DECIMAL(2, 1) DEFAULT 0 CHECK (FMDB_Rating BETWEEN 0 AND 10),
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
        Privacy VARCHAR(10) CHECK (Privacy IN ('Public', 'Private')) NOT NULL
    );

GO
-- Friends Table
CREATE TABLE
    Friends (
        User1ID INT NOT NULL,
        User2ID INT NOT NULL,
        PRIMARY KEY (User1ID, User2ID),
        CONSTRAINT CK_Friends_Order CHECK (User1ID < User2ID),
        FOREIGN KEY (User1ID) REFERENCES Users (UserID),
        FOREIGN KEY (User2ID) REFERENCES Users (UserID)
    );

GO
-- UserFavorites, UserLikedMovies, UserWatchlist
CREATE TABLE
    UserFavorites (
        UserID INT NOT NULL,
        MovieID INT NOT NULL,
        PRIMARY KEY (UserID, MovieID),
        FOREIGN KEY (UserID) REFERENCES Users (UserID),
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID)
    );

GO
CREATE TABLE
    UserLikedMovies (
        UserID INT NOT NULL,
        MovieID INT NOT NULL,
        PRIMARY KEY (UserID, MovieID),
        FOREIGN KEY (UserID) REFERENCES Users (UserID),
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID)
    );

GO
CREATE TABLE
    UserWatchlist (
        UserID INT NOT NULL,
        MovieID INT NOT NULL,
        PRIMARY KEY (UserID, MovieID),
        FOREIGN KEY (UserID) REFERENCES Users (UserID),
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID)
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
        FOREIGN KEY (ActorID) REFERENCES Actors (ActorID),
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID)
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
        FOREIGN KEY (DirectorID) REFERENCES Directors (DirectorID),
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID)
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
        FOREIGN KEY (WriterID) REFERENCES Writers (WriterID),
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID)
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
        FOREIGN KEY (KeywordID) REFERENCES Keywords (KeywordID),
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID)
    );

GO
CREATE TABLE
    MovieGenres (
        GenreID INT NOT NULL,
        MovieID INT NOT NULL,
        PRIMARY KEY (GenreID, MovieID),
        FOREIGN KEY (GenreID) REFERENCES Genres (GenreID),
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID)
    );


GO
-- Activity and Reply
CREATE TABLE
    Activity (
        ActivityID INT IDENTITY (1, 1) PRIMARY KEY,
        ActivityDateTime DATETIME DEFAULT CURRENT_TIMESTAMP,
        IsWatched BIT NOT NULL,
        UserID INT NOT NULL,
        MovieID INT NOT NULL,
        Ratings INT CHECK (Ratings BETWEEN 1 AND 10),
        Review TEXT,
        IsReply BIT,
        ReplyID INT,
        FOREIGN KEY (UserID) REFERENCES Users (UserID),
        FOREIGN KEY (MovieID) REFERENCES Movies (MovieID)
    );

GO
CREATE TABLE
    Reply (
        ActivityID INT NOT NULL,
        ReplyID INT NOT NULL,
        PRIMARY KEY (ReplyID, ActivityID),
        FOREIGN KEY (ActivityID) REFERENCES Activity (ActivityID),
        FOREIGN KEY (ReplyID) REFERENCES Activity (ActivityID)
    );

GO

CREATE TABLE
    ActivityLikes (
        ActivityID INT NOT NULL,
        UserID INT NOT NULL,
        PRIMARY KEY (UserID, ActivityID),
        FOREIGN KEY (ActivityID) REFERENCES Activity (ActivityID),
        FOREIGN KEY (UserID) REFERENCES Users (UserID)
    );

GO






-- -- Drop Query 

-- use FMDB
-- GO
-- -- Drop tables in the correct order to prevent foreign key constraint issues
-- DROP TABLE IF EXISTS Reply;
-- DROP TABLE IF EXISTS Activity;
-- DROP TABLE IF EXISTS UserWatchlist;
-- DROP TABLE IF EXISTS UserLikedMovies;
-- DROP TABLE IF EXISTS UserFavorites;
-- DROP TABLE IF EXISTS Friends;
-- DROP TABLE IF EXISTS MovieWriters;
-- DROP TABLE IF EXISTS Writers;
-- DROP TABLE IF EXISTS MovieDirectors;
-- DROP TABLE IF EXISTS Directors;
-- DROP TABLE IF EXISTS MovieActors;
-- DROP TABLE IF EXISTS Actors;
-- DROP TABLE IF EXISTS MovieKeywords;
-- DROP TABLE IF EXISTS Keywords;
-- DROP TABLE IF EXISTS MovieGenres;
-- DROP TABLE IF EXISTS Genres;
-- DROP TABLE IF EXISTS Users;
-- DROP TABLE IF EXISTS Movies;
-- go 


-- use master 
-- go 

-- ALTER DATABASE FMDB SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
-- GO

-- drop database FMDB