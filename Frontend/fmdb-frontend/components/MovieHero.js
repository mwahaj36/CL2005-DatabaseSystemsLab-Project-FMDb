import React, { useState } from 'react';
import ActivityCard from './ActivityCard'; // adjust the path if needed
import Error from '@/components/Error'; // adjust the path as necessary

const MovieHero = ({ movieData }) => {
  const [showActivityCard, setShowActivityCard] = useState(false);
  const [errorMessage, setErrorMessage] = useState('');
  const [currentUser, setCurrentUser] = useState(null); // Mock user data
  const [user, setUser] = useState({
    name: 'Test User',
    watchlist: [],
  });

  const handleOverlayClick = (e) => {
    if (e.target.id === 'activity-overlay') {
      setShowActivityCard(false);
    }
  };

  const isInWatchlist = user.watchlist.includes(movieData.movieId);

  const handleWatchlistToggle = () => {
    if (!currentUser) {
      setErrorMessage("You must be logged in to add movies to your watchlist.");
      return;
    }
    
    setUser((prevUser) => ({
      ...prevUser,
      watchlist: isInWatchlist
        ? prevUser.watchlist.filter((id) => id !== movieData.movieId)
        : [...prevUser.watchlist, movieData.movieId]
    }));
  };

  const handleAddActivity = () => {
    if (!currentUser) {
      setErrorMessage("You must be logged in to add activity.");
      return;
    }
    setShowActivityCard(true);
  };

  // Format release date for display
  const formatReleaseDate = (dateString) => {
    if (!dateString) return 'N/A';
    const date = new Date(dateString);
    return isNaN(date) ? 'N/A' : date.toLocaleDateString('en-US', {
      year: 'numeric',
      month: 'long',
      day: 'numeric'
    });
  };

  // Format genres for display
  const formatGenres = (genres) => {
    return genres?.join(', ') || 'N/A';
  };

  return (
    <section id="hero" className="relative -mt-20">
      {errorMessage && <Error message={errorMessage} onClose={() => setErrorMessage('')} />}

      {showActivityCard && (
        <div
          id="activity-overlay"
          onClick={handleOverlayClick}
          className="fixed inset-0 z-50 bg-black bg-opacity-70 flex items-center justify-center p-4"
        >
          <ActivityCard
            movieTitle={movieData.title}
            movieId={movieData.movieId}
            movieYear={new Date(movieData.releaseDate).getFullYear()}
            moviePoster={movieData.moviePosterLink}
            onSave={() => setShowActivityCard(false)}
          />
        </div>
      )}

      <div className="relative z-10 mt-10 container flex flex-row px-6 mx-auto space-y-0 md:space-y-0">
        {/* Poster */}
        <div className="flex mt-24 flex-col items-center p-6 space-y-6 rounded-lg bg-veryLightGray md:w-1/3">
          <img
            src={movieData.moviePosterLink}
            className="-mt-14 shadow-lg shadow-xl rounded-lg transition-transform duration-300 hover:scale-105"
            alt={movieData.title}
          />
        </div>

        {/* Info Block */}
        <div className="flex flex-col mb-40 md:w-4/5">
          {/* Title, Year, and Log Button */}
          <div className="w-full flex items-end justify-between mt-20 flex-wrap gap-4">
            <div className="flex items-end space-x-4">
              <h1 className="text-white text-3xl font-bold md:text-6xl">{movieData.title}</h1>
              {movieData.releaseDate && (
                <h2 className="text-purpleWhite text-xl font-bold md:text-3xl">
                  {new Date(movieData.releaseDate).getFullYear()}
                </h2>
              )}
            </div>

            <div className="mt-6 flex space-x-5 justify-end">
              <button
                onClick={handleAddActivity}
                className="bg-purpleWhite hover:bg-purple hover:text-purple transition-colors duration-200 text-darkPurple hover:text-white font-semibold py-2 px-4 rounded-2xl shadow-md"
              >
                Add Activity
              </button>
              <button
                onClick={handleWatchlistToggle}
                className="bg-purpleWhite hover:bg-purple hover:text-purple transition-colors duration-200 text-darkPurple hover:text-white font-semibold py-2 px-4 rounded-2xl shadow-md"
              >
                {isInWatchlist ? 'Remove from Watchlist' : 'Add to Watchlist'}
              </button>
            </div>
          </div>

          {/* Synopsis */}
          <div className="mt-8 bg-black bg-opacity-40 p-6 rounded-xl shadow-xl">
            <p className="text-white text-sm md:text-xl leading-relaxed drop-shadow-xl">
              {movieData.synopsis}
            </p>
          </div>

          {/* Stats Boxes */}
          <div className="mt-8 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
            <div className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-xl p-4 shadow-lg flex flex-col items-center justify-center text-center">
              <p className="text-purpleWhite text-md md:text-lg font-semibold">IMDb Rating</p>
              <p className="text-white text-sm md:text-7xl font-bold">{movieData.imdbRating}</p>
            </div>
            <div className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-xl p-4 shadow-lg flex flex-col items-center justify-center text-center">
              <p className="text-purpleWhite text-md md:text-lg font-semibold">FMDb Rating</p>
              <p className="text-white text-sm md:text-7xl font-bold">{movieData.fmdbRating}</p>
            </div>
            <div className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-xl p-4 shadow-lg flex flex-col items-center justify-center text-center">
              <p className="text-purpleWhite text-md md:text-lg font-semibold">Box Office</p>
              <p className="text-white text-sm md:text-3xl font-bold">{movieData.boxOffice}</p>
            </div>
            <div className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-xl p-4 shadow-lg flex flex-col items-center justify-center text-center">
              <p className="text-purpleWhite text-md md:text-lg font-semibold">Awards</p>
              <p className="text-white text-sm md:text-xl font-bold leading-tight">
                {movieData.awards || 'N/A'}
              </p>
            </div>
          </div>

          {/* Extra Info */}
          <div className="mt-6 space-y-4 text-white text-sm md:text-lg">
            <div className="flex flex-col sm:flex-row justify-between gap-y-2 gap-x-6">
              <span>
                <span className="font-bold text-purpleWhite">Release Date:</span> 
                {formatReleaseDate(movieData.releaseDate)}
              </span>
              <span>
                <span className="font-bold text-purpleWhite">Genre:</span> 
                {formatGenres(movieData.genres)}
              </span>
              <span>
                <span className="font-bold text-purpleWhite">Length:</span> 
                {movieData.movieLength || 'N/A'}
              </span>
            </div>
            <div className="flex flex-col sm:flex-row justify-between gap-y-2 gap-x-6">
              <span>
                <span className="font-bold text-purpleWhite">Language:</span> 
                {movieData.language || 'N/A'}
              </span>
              <span>
                <span className="font-bold text-purpleWhite">Type:</span> 
                {movieData.type || 'N/A'}
              </span>
              <span>
                <span className="font-bold text-purpleWhite">MPAA Rating:</span> 
                {movieData.mpaaRating || 'N/A'}
              </span>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default MovieHero;