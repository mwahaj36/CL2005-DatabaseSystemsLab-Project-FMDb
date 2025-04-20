import { useState } from 'react';
import { Dialog } from '@headlessui/react';
import Link from 'next/link';

const EditFavorite = ({ movie, rank, token, onFavoriteUpdate }) => {
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [movieId, setMovieId] = useState('');
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [error, setError] = useState(null);
  const [success, setSuccess] = useState(null);

  const handleAddFavorite = async () => {
    if (!movieId) {
      setError('Please enter a Movie ID');
      return;
    }

    setIsSubmitting(true);
    setError(null);
    setSuccess(null);

    try {
      const response = await fetch('http://localhost:5000/users/favoriteMovies', {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`
        },
        body: JSON.stringify({
          movieId: parseInt(movieId),
          rank: parseInt(rank)
        })
      });

      const data = await response.json();

      if (!response.ok) {
        throw new Error(data.message || 'Failed to update favorites');
      }

      // Fetch full movie data after successful update
      const movieDetailsRes = await fetch(`http://localhost:5000/movies/${movieId}`);
      const movieData = await movieDetailsRes.json();

      if (!movieDetailsRes.ok) {
        throw new Error(movieData.message || 'Failed to fetch movie details');
      }

      setSuccess('Favorite movie updated successfully!');
      
      if (onFavoriteUpdate) {
        onFavoriteUpdate(rank, movieData);
      }

      setTimeout(() => {
        setIsModalOpen(false);
        setSuccess(null);
      }, 1500);
    } catch (err) {
      setError(err.message);
    } finally {
      setIsSubmitting(false);
    }
  };

  // If no movie exists for this rank
  if (!movie || !movie.movieid) {
    return (
      <div className="flex flex-col items-center justify-center p-4 w-full h-full bg-white bg-opacity-10 rounded-lg">
        <button 
          onClick={() => setIsModalOpen(true)}
          className="px-4 py-2 bg-purple text-white rounded-lg hover:bg-purple-700 transition-colors"
        >
          Add Favorite
        </button>

        {/* Add Favorite Modal */}
        <Dialog open={isModalOpen} onClose={() => setIsModalOpen(false)} className="relative z-50">
          <div className="fixed inset-0 bg-black/30" aria-hidden="true" />
          <div className="fixed inset-0 flex items-center justify-center p-4">
            <Dialog.Panel className="w-full max-w-md rounded bg-darkPurple p-6 text-white">
              <Dialog.Title className="text-2xl font-bold mb-4">Add Favorite Movie (Rank #{rank})</Dialog.Title>
              
              {error && (
                <div className="mb-4 p-2 bg-red-100 text-red-700 rounded">
                  {error}
                </div>
              )}
              
              {success && (
                <div className="mb-4 p-2 bg-green-100 text-green-700 rounded">
                  {success}
                </div>
              )}

              <div className="space-y-4">
                <div>
                  <label className="block mb-1">Movie ID</label>
                  <input
                    type="number"
                    value={movieId}
                    onChange={(e) => setMovieId(e.target.value)}
                    className="w-full bg-white p-2 rounded text-darkPurple"
                    placeholder="Enter TMDB Movie ID"
                  />
                </div>
              </div>

              <div className="mt-6 flex justify-end space-x-3">
                <button
                  onClick={() => setIsModalOpen(false)}
                  className="px-4 py-2 bg-gray-500 rounded hover:bg-gray-600"
                  disabled={isSubmitting}
                >
                  Cancel
                </button>
                <button
                  onClick={handleAddFavorite}
                  className="px-4 py-2 bg-purple rounded hover:bg-purple-700 disabled:opacity-50"
                  disabled={isSubmitting}
                >
                  {isSubmitting ? 'Saving...' : 'Save'}
                </button>
              </div>
            </Dialog.Panel>
          </div>
        </Dialog>
      </div>
    );
  }

  // If a movie exists for this rank
  return (
    <div className="flex flex-col items-center p-4 w-full h-full">
      <div className="text-white text-lg font-bold mb-2">Rank #{rank}</div>
      
      <Link href={`/movie/${movie.movieid}`} passHref legacyBehavior>
        <a className="w-full flex flex-col items-center">
          <img
            src={movie.movieposterlink || '/placeholder-movie.jpg'}
            className=" object-cover shadow-lg rounded-lg transition-transform duration-300 hover:scale-105"
            alt={movie.title}
            onError={(e) => {
              e.target.onerror = null;
              e.target.src = '/placeholder-movie.jpg';
            }}
          />
        </a>
      </Link>
      
      <div className="text-center w-full px-2 mt-2 h-16 flex flex-col justify-center">
        <h5 className="text-lg font-bold text-white line-clamp-1" title={movie.title}>
          {movie.title}
        </h5>
        {movie.directors?.length > 0 && (
          <p className="text-gray-400 text-sm line-clamp-1" title={movie.directors.join(', ')}>
            {movie.directors.join(', ')}
          </p>
        )}
      </div>
      
      <button 
        onClick={() => {
          setMovieId(movie.movieid);
          setIsModalOpen(true);
        }}
        className="px-4 py-2 bg-darkPurple text-white rounded-lg hover:bg-purple transition-colors mt-2"
      >
        Change Movie
      </button>

      {/* Change Movie Modal */}
      <Dialog open={isModalOpen} onClose={() => setIsModalOpen(false)} className="relative z-50">
        <div className="fixed inset-0 bg-black/30" aria-hidden="true" />
        <div className="fixed inset-0 flex items-center justify-center p-4">
          <Dialog.Panel className="w-full max-w-md rounded bg-darkPurple p-6 text-white">
            <Dialog.Title className="text-2xl font-bold mb-4">Change Favorite Movie (Rank #{rank})</Dialog.Title>
            
            {error && (
              <div className="mb-4 p-2 bg-red-100 text-red-700 rounded">
                {error}
              </div>
            )}
            
            {success && (
              <div className="mb-4 p-2 bg-green-100 text-green-700 rounded">
                {success}
              </div>
            )}

            <div className="space-y-4">
              <div>
                <label className="block mb-1">Movie ID</label>
                <input
                  type="number"
                  value={movieId}
                  onChange={(e) => setMovieId(e.target.value)}
                  className="w-full bg-white p-2 rounded text-darkPurple"
                  placeholder="Enter TMDB Movie ID"
                />
              </div>
            </div>

            <div className="mt-6 flex justify-end space-x-3">
              <button
                onClick={() => setIsModalOpen(false)}
                className="px-4 py-2 bg-gray-500 rounded hover:bg-gray-600"
                disabled={isSubmitting}
              >
                Cancel
              </button>
              <button
                onClick={handleAddFavorite}
                className="px-4 py-2 bg-purple rounded hover:bg-purple-700 disabled:opacity-50"
                disabled={isSubmitting}
              >
                {isSubmitting ? 'Saving...' : 'Save'}
              </button>
            </div>
          </Dialog.Panel>
        </div>
      </Dialog>
    </div>
  );
};

export default EditFavorite;