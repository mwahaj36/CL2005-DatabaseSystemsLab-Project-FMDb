import React, { useState, useEffect } from 'react';
import ActivityCard from './ActivityCard';
import Error from '@/components/Error';
import { useAuth } from '@/context/AuthContext';

const MovieHero = ({ movieData }) => {
  const [showActivityCard, setShowActivityCard] = useState(false);
  const [errorMessage, setErrorMessage] = useState('');
  const [isInWatchlist, setIsInWatchlist] = useState(false);
  const [loadingWatchlist, setLoadingWatchlist] = useState(true);
  const { user: currentUser, token } = useAuth();

  useEffect(() => {
    const checkWatchlistStatus = async () => {
      if (!currentUser || !movieData?.movieId) {
        setLoadingWatchlist(false);
        return;
      }

      try {
        const response = await fetch(
          `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/watchlist/isWatchlist/${movieData.movieId}`,
          {
            headers: {
              Authorization: `Bearer ${token}`,
            },
          }
        );

        if (!response.ok) {
          throw new Error('Failed to fetch watchlist status');
        }

        const data = await response.json();
        setIsInWatchlist(data.isWatchlist);
      } catch (error) {
        console.error('Error checking watchlist:', error);
        setErrorMessage('Failed to check watchlist status');
      } finally {
        setLoadingWatchlist(false);
      }
    };

    checkWatchlistStatus();
  }, [currentUser, movieData?.movieId, token]);

  const handleOverlayClick = (e) => {
    if (e.target.id === 'activity-overlay') {
      setShowActivityCard(false);
    }
  };

  const handleWatchlistToggle = async () => {
    if (!currentUser) {
      setErrorMessage('You must be logged in to manage your watchlist.');
      return;
    }

    try {
      setLoadingWatchlist(true);
      const method = isInWatchlist ? 'DELETE' : 'POST';
      const response = await fetch(
        `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/watchlist/${movieData.movieId}`,
        {
          method,
          headers: {
            Authorization: `Bearer ${token}`,
            'Content-Type': 'application/json',
          },
        }
      );

      if (!response.ok) {
        throw new Error(
          `Failed to ${isInWatchlist ? 'remove from' : 'add to'} watchlist`
        );
      }

      const data = await response.json();
      if (data.success) {
        setIsInWatchlist(!isInWatchlist);
      } else {
        throw new Error(data.message || 'Operation failed');
      }
    } catch (error) {
      console.error('Watchlist error:', error);
      setErrorMessage(error.message || 'Failed to update watchlist');
    } finally {
      setLoadingWatchlist(false);
    }
  };

  const handleAddActivity = () => {
    if (!currentUser) {
      setErrorMessage('You must be logged in to add activity.');
      return;
    }
    setShowActivityCard(true);
  };

  const formatReleaseDate = (dateString) => {
    if (!dateString) return 'N/A';
    const date = new Date(dateString);
    return isNaN(date)
      ? 'N/A'
      : date.toLocaleDateString('en-US', {
          year: 'numeric',
          month: 'long',
          day: 'numeric',
        });
  };

  const handleSave = () => {
    setShowActivityCard(false);
  };

  const handleDiscard = () => {
    setShowActivityCard(false);
  };

  const formatGenres = (genres) => {
    return genres?.join(', ') || 'N/A';
  };

  return (
    <section id="hero" className="relative -mt-20">
      {errorMessage && (
        <Error message={errorMessage} onClose={() => setErrorMessage('')} />
      )}

      {showActivityCard && (
        <div
          id="activity-overlay"
          onClick={handleOverlayClick}
          className="fixed inset-0 z-50 bg-black bg-opacity-70 flex items-center justify-center p-4"
        >
          <ActivityCard
            movieTitle={movieData.title}
            movieId={movieData.movieId}
            movieYear={
              movieData.releaseDate && !isNaN(new Date(movieData.releaseDate))
                ? new Date(movieData.releaseDate).getFullYear()
                : null
            }
            moviePoster={movieData.moviePosterLink}
            onSave={handleSave}
            onDiscard={handleDiscard}
          />
        </div>
      )}

      <div className="relative z-10 mt-10 container flex flex-col md:flex-row px-4 md:px-6 mx-auto space-y-6 md:space-y-0">
        {/* Poster */}
        <div className="flex flex-col items-center p-4 space-y-4 rounded-lg bg-veryLightGray md:w-1/3">
          <img
            src={movieData.moviePosterLink}
            className="w-full max-w-xs md:max-w-none shadow-lg rounded-lg transition-transform duration-300 hover:scale-105"
            alt={movieData.title}
          />
        </div>

        {/* Info Block */}
        <div className="flex flex-col md:w-2/3 space-y-6">
          {/* Title, Year, and Buttons */}
          <div className="flex flex-col md:flex-row items-start md:items-end justify-between space-y-4 md:space-y-0">
            <div className="flex flex-col md:flex-row items-start md:items-end space-y-2 md:space-y-0 md:space-x-4">
              <h1 className="text-white text-2xl md:text-4xl font-bold">
                {movieData.title}
              </h1>
              {movieData.releaseDate && (
                <h2 className="text-purpleWhite text-lg md:text-2xl font-bold">
                  {new Date(movieData.releaseDate).getFullYear()}
                </h2>
              )}
            </div>

            <div className="flex space-x-3">
              <button
                onClick={handleAddActivity}
                className="bg-purpleWhite hover:bg-purple hover:text-purple transition-colors duration-200 text-darkPurple hover:text-white font-semibold py-2 px-3 rounded-lg shadow-md text-sm"
              >
                Add Activity
              </button>
              <button
                onClick={handleWatchlistToggle}
                disabled={loadingWatchlist}
                className={`bg-purpleWhite hover:bg-purple hover:text-purple transition-colors duration-200 text-darkPurple hover:text-white font-semibold py-2 px-3 rounded-lg shadow-md text-sm ${
                  loadingWatchlist ? 'opacity-70 cursor-not-allowed' : ''
                }`}
              >
                {loadingWatchlist
                  ? 'Loading...'
                  : isInWatchlist
                  ? 'Remove from Watchlist'
                  : 'Add to Watchlist'}
              </button>
            </div>
          </div>

          {/* Synopsis */}
          <div className="bg-black bg-opacity-40 p-4 rounded-lg shadow-lg">
            <p className="text-white text-sm md:text-base leading-relaxed">
              {movieData.synopsis}
            </p>
          </div>

          {/* Stats Boxes */}
          <div className="grid grid-cols-2 sm:grid-cols-4 gap-4">
            <div className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-lg p-3 shadow-md flex flex-col items-center justify-center text-center">
              <p className="text-purpleWhite text-sm md:text-base font-semibold">
                IMDb Rating
              </p>
              <p className="text-white text-lg md:text-2xl font-bold">
                {movieData.imdbRating}
              </p>
            </div>
            <div className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-lg p-3 shadow-md flex flex-col items-center justify-center text-center">
              <p className="text-purpleWhite text-sm md:text-base font-semibold">
                FMDb Rating
              </p>
              <p className="text-white text-lg md:text-2xl font-bold">
                {movieData.fmdbRating}
              </p>
            </div>
            <div className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-lg p-3 shadow-md flex flex-col items-center justify-center text-center">
              <p className="text-purpleWhite text-sm md:text-base font-semibold">
                Box Office
              </p>
              <p className="text-white text-lg md:text-xl font-bold">
                {movieData.boxOffice}
              </p>
            </div>
            <div className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-lg p-3 shadow-md flex flex-col items-center justify-center text-center">
              <p className="text-purpleWhite text-sm md:text-base font-semibold">
                Awards
              </p>
              <p className="text-white text-sm md:text-base font-bold">
                {movieData.awards || 'N/A'}
              </p>
            </div>
          </div>

          {/* Extra Info */}
          <div className="space-y-2 text-white text-sm md:text-base">
            <div className="flex flex-wrap justify-between gap-y-2">
              <span>
                <span className="font-bold text-purpleWhite">Release Date:</span>{' '}
                {formatReleaseDate(movieData.releaseDate)}
              </span>
              <span>
                <span className="font-bold text-purpleWhite">Genre:</span>{' '}
                {formatGenres(movieData.genres)}
              </span>
              <span>
                <span className="font-bold text-purpleWhite">Length:</span>{' '}
                {movieData.movieLength || 'N/A'}
              </span>
            </div>
            <div className="flex flex-wrap justify-between gap-y-2">
              <span>
                <span className="font-bold text-purpleWhite">Language:</span>{' '}
                {movieData.language || 'N/A'}
              </span>
              <span>
                <span className="font-bold text-purpleWhite">Type:</span>{' '}
                {movieData.type || 'N/A'}
              </span>
              <span>
                <span className="font-bold text-purpleWhite">MPAA Rating:</span>{' '}
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