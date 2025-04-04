-- Create FMDb database if it doesn't exist
IF NOT EXISTS (
    SELECT name 
    FROM sys.databases 
    WHERE name = N'FMDb'
)
BEGIN
    CREATE DATABASE FMDb;
    PRINT 'Database FMDb created successfully.';
END
ELSE
BEGIN
    PRINT 'Database FMDb already exists.';
END
GO

-- Use the FMDb database
USE FMDb;
GO

-- Movies Table
CREATE TABLE Movies (
    MovieID INT IDENTITY (1,1),
    Title VARCHAR(255),
    Type VARCHAR(10) NOT NULL,
    Synopsis TEXT,
    ReleaseDate DATE,
    MovieLength TIME,
    MoviePosterLink VARCHAR(255),
    MovieBackdropLink VARCHAR(255),
    Language VARCHAR(50),
    IMDB_Rating DECIMAL(2,1),
    FMDB_Rating DECIMAL(2,1),
    Awards VARCHAR(255),
    BoxOffice BIGINT,
    MPAA_Rating VARCHAR(10),
    Keywords VARCHAR(255)
);
GO

-- Users Table
CREATE TABLE Users (
    UserID INT IDENTITY (1,1),
    FullName VARCHAR(255),
    Username VARCHAR(50),
    PasswordHash VARCHAR(255),
    Email VARCHAR(255),
    Gender VARCHAR(10) NOT NULL,
    DateOfBirth DATE,
    Bio TEXT,
    UserType VARCHAR(10) NOT NULL,
    Privacy VARCHAR(10) NOT NULL
);
GO

-- Friends Table
CREATE TABLE Friends (
    User1ID INT NOT NULL,
    User2ID INT NOT NULL
);
GO

-- UserFavorites Table
CREATE TABLE UserFavorites (
    UserID INT NOT NULL,
    MovieID INT NOT NULL
);
GO

-- UserLikedMovies Table
CREATE TABLE UserLikedMovies (
    UserID INT NOT NULL,
    MovieID INT NOT NULL
);
GO

-- UserWatchlist Table
CREATE TABLE UserWatchlist (
    UserID INT NOT NULL,
    MovieID INT NOT NULL
);
GO

-- Actors Table
CREATE TABLE Actors (
    ActorID INT IDENTITY (1,1),
    ActorName VARCHAR(255)
);
GO

CREATE TABLE MovieActors (
    ActorID INT NOT NULL,
    MovieID INT NOT NULL,
    CharacterName VARCHAR(255)
);
GO

-- Directors Table
CREATE TABLE Directors (
    DirectorID INT IDENTITY (1,1),
    DirectorName VARCHAR(255)
);
GO

CREATE TABLE MovieDirectors (
    DirectorID INT NOT NULL,
    MovieID INT NOT NULL
);
GO

-- Writers Table
CREATE TABLE Writers (
    WriterID INT IDENTITY (1,1),
    WriterName VARCHAR(255)
);
GO

CREATE TABLE MovieWriters (
    WriterID INT NOT NULL,
    MovieID INT NOT NULL
);
GO

-- Producers Table
CREATE TABLE Producers (
    ProducerID INT IDENTITY (1,1),
    ProducerName VARCHAR(255)
);
GO

CREATE TABLE MovieProducers (
    ProducerID INT NOT NULL,
    MovieID INT NOT NULL
);
GO

-- Genres and Tags
CREATE TABLE Genres (
    GenreID INT IDENTITY (1,1),
    GenreName VARCHAR(50)
);
GO

CREATE TABLE Tags (
    TagID INT IDENTITY (1,1),
    TagName VARCHAR(50)
);
GO

CREATE TABLE MovieGenres (
    GenreID INT NOT NULL,
    MovieID INT NOT NULL
);
GO

CREATE TABLE MovieTags (
    TagID INT NOT NULL,
    MovieID INT NOT NULL
);
GO

-- Activity and Reply
CREATE TABLE Activity (
    ActivityID INT IDENTITY (1,1),
    ActivityDateTime DATETIME DEFAULT CURRENT_TIMESTAMP,
    IsWatched BIT NOT NULL,
    UserID INT NOT NULL,
    MovieID INT NOT NULL,
    Ratings DECIMAL(2,1),
    Review TEXT,
    IsReply BIT,
    ReplyID INT
);
GO

CREATE TABLE Reply (
    ActivityID INT NOT NULL,
    ReplyID INT IDENTITY (1,1) NOT NULL
);
GO
