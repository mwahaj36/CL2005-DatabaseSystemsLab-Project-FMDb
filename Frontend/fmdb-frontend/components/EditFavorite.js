import { useState, useEffect } from 'react';
import { Dialog } from '@headlessui/react';
import MovieCard from '@/components/MovieCard';

const EditFavorite = ({ movie, rank, token, onFavoriteUpdate }) => {
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [movieId, setMovieId] = useState('');
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [error, setError] = useState(null);
  const [success, setSuccess] = useState(null);

  // Initialize movieId when component mounts or movie changes
  useEffect(() => {
    setMovieId(movie?.movieid?.toString() || '');
  }, [movie]);

  const handleAddFavorite = async () => {
    if (!movieId) {
      setError('Please enter a Movie ID');
      return;
    }

    setIsSubmitting(true);
    setError(null);
    setSuccess(null);

    try {
      // Validate movie exists
      const movieExistRes = await fetch(`http://localhost:5000/movies/check/${movieId}`);
      if (!movieExistRes.ok) {
        throw new Error('Failed to validate movie');
      }
      
      const movieExistData = await movieExistRes.json();
      if (!movieExistData.exists) {
        throw new Error('Movie not found');
      }

      // Update favorite
      const response = await fetch('http://localhost:5000/users/favoriteMovies', {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`
        },
        body: JSON.stringify({
          movieId: parseInt(movieId),
          rank: rank
        })
      });

      // Check response content type
      const contentType = response.headers.get('content-type');
      if (!contentType || !contentType.includes('application/json')) {
        const text = await response.text();
        throw new Error(text || 'Failed to update favorites');
      }

      const data = await response.json();
      if (!response.ok) {
        throw new Error(data.message || 'Failed to update favorites');
      }

      // Fetch updated movie details
      const movieDetailsRes = await fetch(`http://localhost:5000/movies/details/${movieId}`);
      if (!movieDetailsRes.ok) {
        throw new Error('Failed to fetch movie details');
      }
      
      const movieData = await movieDetailsRes.json();
      setSuccess('Favorite updated successfully!');
      
      // Notify parent of update
      if (onFavoriteUpdate) {
        onFavoriteUpdate(rank, movieData);
      }

      // Close modal after delay
      setTimeout(() => {
        setIsModalOpen(false);
      }, 1500);
    } catch (err) {
      console.error('Error updating favorite:', err);
      setError(err.message || 'Failed to update favorite');
    } finally {
      setIsSubmitting(false);
    }
  };

  // Render movie card if we have a movie
  if (movie?.movieid) {
    return (
      <div className="flex flex-col items-center w-full h-full">
        {/* Using MovieCard component */}
        <div className="w-full">
          <MovieCard 
            movie={{
              movieid: movie.movieid,
              title: movie.title,
              movieposterlink: movie.movieposterlink,
              directors: movie.directors
            }}
          />
        </div>
        
        <button 
          onClick={() => setIsModalOpen(true)}
          className="mt-3 px-4 py-2 bg-purple text-white rounded-lg hover:bg-purple-dark transition-colors"
        >
          Change Movie
        </button>

        {/* Change Movie Modal */}
        <Dialog 
          open={isModalOpen} 
          onClose={() => {
            setIsModalOpen(false);
            setError(null);
            setSuccess(null);
          }} 
          className="relative z-50"
        >
          <div className="fixed inset-0 bg-black/30" aria-hidden="true" />
          <div className="fixed inset-0 flex items-center justify-center p-4">
            <Dialog.Panel className="w-full max-w-md rounded-xl bg-darkPurple p-6 text-white">
              <Dialog.Title className="text-2xl font-bold mb-4">
                Change Favorite Movie
              </Dialog.Title>
              
              {error && (
                <div className="mb-4 p-3 bg-red-100 text-red-700 rounded-lg">
                  {error}
                </div>
              )}
              
              {success && (
                <div className="mb-4 p-3 bg-green-100 text-green-700 rounded-lg">
                  {success}
                </div>
              )}

              <div className="space-y-4">
                <div>
                  <label className="block mb-2 text-purpleWhite">
                    Movie ID
                  </label>
                  <input
                    type="number"
                    value={movieId}
                    onChange={(e) => setMovieId(e.target.value)}
                    className="w-full p-3 bg-white text-darkPurple rounded-lg"
                    placeholder="Enter TMDB Movie ID"
                  />
                </div>
              </div>

              <div className="mt-6 flex justify-end space-x-3">
                <button
                  onClick={() => {
                    setIsModalOpen(false);
                    setError(null);
                    setSuccess(null);
                  }}
                  className="px-4 py-2 bg-gray-500 text-white rounded-lg hover:bg-gray-600"
                  disabled={isSubmitting}
                >
                  Cancel
                </button>
                <a
                href='/EditProfile'
                  onClick={handleAddFavorite}
                  className="px-4 py-2 bg-purple text-white rounded-lg hover:bg-purple-dark disabled:opacity-50"
                  disabled={isSubmitting}
                >
                  {isSubmitting ? 'Saving...' : 'Save Changes'}
                </a>
              </div>
            </Dialog.Panel>
          </div>
        </Dialog>
      </div>
    );
  }

  // Render add button if no movie exists for this rank
  return (
    <div className="flex flex-col items-center justify-center p-6 h-full bg-white bg-opacity-10 rounded-lg">
      <button 
        onClick={() => setIsModalOpen(true)}
        className="px-4 py-2 bg-purple text-white rounded-lg hover:bg-purple-dark transition-colors"
      >
        Add Favorite
      </button>

      {/* Add Movie Modal */}
      <Dialog 
        open={isModalOpen} 
        onClose={() => {
          setIsModalOpen(false);
          setError(null);
          setSuccess(null);
        }} 
        className="relative z-50"
      >
        <div className="fixed inset-0 bg-black/30" aria-hidden="true" />
        <div className="fixed inset-0 flex items-center justify-center p-4">
          <Dialog.Panel className="w-full max-w-md rounded-xl bg-darkPurple p-6 text-white">
            <Dialog.Title className="text-2xl font-bold mb-4">
              Add Favorite Movie
            </Dialog.Title>
            
            {error && (
              <div className="mb-4 p-3 bg-red-100 text-red-700 rounded-lg">
                {error}
              </div>
            )}
            
            {success && (
              <div className="mb-4 p-3 bg-green-100 text-green-700 rounded-lg">
                {success}
              </div>
            )}

            <div className="space-y-4">
              <div>
                <label className="block mb-2 text-purpleWhite">
                  Movie ID
                </label>
                <input
                  type="number"
                  value={movieId}
                  onChange={(e) => setMovieId(e.target.value)}
                  className="w-full p-3 bg-white text-darkPurple rounded-lg"
                  placeholder="Enter TMDB Movie ID"
                />
              </div>
            </div>

            <div className="mt-6 flex justify-end space-x-3">
              <button
                onClick={() => {
                  setIsModalOpen(false);
                  setError(null);
                  setSuccess(null);
                }}
                className="px-4 py-2 bg-gray-500 text-white rounded-lg hover:bg-gray-600"
                disabled={isSubmitting}
              >
                Cancel
              </button>
              <button
                onClick={handleAddFavorite}
                className="px-4 py-2 bg-purple text-white rounded-lg hover:bg-purple-dark disabled:opacity-50"
                disabled={isSubmitting}
              >
                {isSubmitting ? 'Saving...' : 'Add Movie'}
              </button>
            </div>
          </Dialog.Panel>
        </div>
      </Dialog>
    </div>
  );
};

export default EditFavorite;