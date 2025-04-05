-- Use the FMDb database
USE FMDb;
GO

-- Movies Table Constraints
ALTER TABLE Movies
ADD PRIMARY KEY (MovieID),
    CHECK (Type IN ('Movie', 'Series')),
    CHECK (IMDB_Rating BETWEEN 0 AND 10),
    CHECK (FMDB_Rating BETWEEN 0 AND 10);
GO

-- Users Table Constraints
ALTER TABLE Users
ADD PRIMARY KEY (UserID),
    UNIQUE (Username),
    UNIQUE (Email),
    CHECK (Gender IN ('Male', 'Female', 'Other')),
    CHECK (UserType IN ('User', 'Admin', 'Critique')),
    CHECK (Privacy IN ('Public', 'Private'));
GO

-- Friends Table Constraints
ALTER TABLE Friends
ADD PRIMARY KEY (User1ID, User2ID),
    CHECK (User1ID < User2ID),
    FOREIGN KEY (User1ID) REFERENCES Users(UserID),
    FOREIGN KEY (User2ID) REFERENCES Users(UserID);
GO

-- Favorites, Liked, Watchlist FK Constraints
ALTER TABLE UserFavorites
ADD PRIMARY KEY (UserID, MovieID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID);
GO

ALTER TABLE UserLikedMovies
ADD PRIMARY KEY (UserID, MovieID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID);
GO

ALTER TABLE UserWatchlist
ADD PRIMARY KEY (UserID, MovieID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID);
GO



-- Add PRIMARY KEY constraints for Actors tables
ALTER TABLE Actors
ADD PRIMARY KEY (ActorID);
GO

-- Add PRIMARY KEY constraints for Director tables
ALTER TABLE Directors
ADD PRIMARY KEY (DirectorID);
GO

-- Add PRIMARY KEY constraints for Writer tables
ALTER TABLE Writers
ADD PRIMARY KEY (WriterID);
GO


-- Movie People Constraints
ALTER TABLE MovieActors
ADD PRIMARY KEY (ActorID, MovieID),
    FOREIGN KEY (ActorID) REFERENCES Actors(ActorID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID);
GO

ALTER TABLE MovieDirectors
ADD PRIMARY KEY (DirectorID, MovieID),
    FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID);
GO

ALTER TABLE MovieWriters
ADD PRIMARY KEY (WriterID, MovieID),
    FOREIGN KEY (WriterID) REFERENCES Writers(WriterID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID);
GO


-- Genres table constraints
ALTER TABLE Genres
ADD CONSTRAINT PK_Genres PRIMARY KEY (GenreID);
GO

ALTER TABLE Genres
ADD CONSTRAINT UQ_GenreName UNIQUE (GenreName);
GO

-- Tags table constraints
ALTER TABLE Tags
ADD CONSTRAINT PK_Tags PRIMARY KEY (TagID);
GO

ALTER TABLE Tags
ADD CONSTRAINT UQ_TagName UNIQUE (TagName);
GO


ALTER TABLE MovieGenres
ADD PRIMARY KEY (GenreID, MovieID),
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID);
GO

ALTER TABLE MovieTags
ADD PRIMARY KEY (TagID, MovieID),
    FOREIGN KEY (TagID) REFERENCES Tags(TagID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID);
GO

-- Activity Table Constraints
ALTER TABLE Activity
ADD PRIMARY KEY (ActivityID),
    CHECK (Ratings BETWEEN 0 AND 10),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID);
GO

-- Reply Table Constraints
ALTER TABLE Reply
ADD PRIMARY KEY (ReplyID, ActivityID),
    FOREIGN KEY (ActivityID) REFERENCES Activity(ActivityID),
    FOREIGN KEY (ReplyID) REFERENCES Activity(ActivityID);
GO

