import { useState, useEffect } from 'react';
import MovieCard from '@/components/MovieCard';
import MovieSearchSelect from '@/components/MovieSearchSelect';

const EditFavorite = ({ movie, rank, token, onFavoriteUpdate }) => {
  const [showSearchDropdown, setShowSearchDropdown] = useState(false);
  const [selectedMovie, setSelectedMovie] = useState(null);
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [error, setError] = useState(null);
  const [success, setSuccess] = useState(null);

  useEffect(() => {
    if (movie?.movieid) {
      setSelectedMovie({
        movieid: movie.movieid,
        title: movie.title,
        movieposterlink: movie.movieposterlink,
        directors: movie.directors
      });
    } else {
      setSelectedMovie(null);
    }
  }, [movie]);

  const handleAddFavorite = async (movie) => {
    if (!movie?.movieid) {
      setError('Please select a valid movie');
      return;
    }

    setIsSubmitting(true);
    setError(null);
    setSuccess(null);

    try {
      const movieExistRes = await fetch(`https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/movies/check/${movie.movieid}`);
      if (!movieExistRes.ok) {
        throw new Error('Failed to validate movie');
      }
      
      const movieExistData = await movieExistRes.json();
      if (!movieExistData.exists) {
        throw new Error('Movie not found');
      }

      const response = await fetch('https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/favoriteMovies', {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`
        },
        body: JSON.stringify({
          movieId: parseInt(movie.movieid),
          rank: rank
        })
      });

      if (!response.ok) {
        const data = await response.json();
        throw new Error(data.message || 'Failed to update favorites');
      }

      setSelectedMovie(movie);
      setSuccess('Favorite updated successfully!');
      
      if (onFavoriteUpdate) {
        onFavoriteUpdate(rank, movie);
      }
    } catch (err) {
      console.error('Error updating favorite:', err);
      setError(err.message || 'Failed to update favorite');
    } finally {
      setIsSubmitting(false);
      setShowSearchDropdown(false);
    }
  };

  if (selectedMovie?.movieid) {
    return (
      <div className="flex flex-col items-center w-full h-full p-4 sm:p-6">
        <div className="w-full">
          <MovieCard 
            movie={selectedMovie}
          />
        </div>
        
        <div className="mt-3 flex flex-col items-center">
          <button 
            onClick={() => setShowSearchDropdown(true)}
            className="px-4 py-2 bg-purple text-white rounded-lg hover:bg-purple-dark transition-colors w-full sm:w-auto"
            disabled={isSubmitting}
          >
            Change Movie
          </button>
          
          {isSubmitting && (
            <span className="mt-2 text-white text-sm">Saving...</span>
          )}
          {success && (
            <span className="mt-2 text-green-400 text-sm">{success}</span>
          )}
          {error && (
            <span className="mt-2 text-red-400 text-sm">{error}</span>
          )}
        </div>

        {showSearchDropdown && (
          <MovieSearchSelect
            onSelect={handleAddFavorite}
            onClose={() => setShowSearchDropdown(false)}
          />
        )}
      </div>
    );
  }

  return (
    <div className="flex flex-col items-center justify-center p-4 sm:p-6 h-full bg-white bg-opacity-10 rounded-lg">
      <button 
        onClick={() => setShowSearchDropdown(true)}
        className="px-4 py-2 bg-purple text-white rounded-lg hover:bg-purple-dark transition-colors w-full sm:w-auto"
        disabled={isSubmitting}
      >
        {isSubmitting ? 'Saving...' : 'Add Favorite'}
      </button>
      
      {success && (
        <span className="mt-2 text-green-400 text-sm">{success}</span>
      )}
      {error && (
        <span className="mt-2 text-red-400 text-sm">{error}</span>
      )}

      {showSearchDropdown && (
        <MovieSearchSelect
          onSelect={handleAddFavorite}
          onClose={() => setShowSearchDropdown(false)}
        />
      )}
    </div>
  );
};

export default EditFavorite;
