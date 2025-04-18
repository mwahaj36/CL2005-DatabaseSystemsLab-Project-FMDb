import React, { useState, useContext } from 'react';
import { useAuth } from '@/context/AuthContext'; // Adjust the import path as needed

const ActivityCard = ({ movieTitle, movieYear, moviePoster, movieId, onSave, onDiscard }) => {
  const [watchedBefore, setWatchedBefore] = useState(true);
  const [watchedDate, setWatchedDate] = useState(new Date().toISOString().split('T')[0]);
  const [review, setReview] = useState('');
  const [tags, setTags] = useState('');
  const [liked, setLiked] = useState(false);
  const [rating, setRating] = useState(0);
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [error, setError] = useState(null);
  
  const { token } = useAuth();

  const handleRating = (index) => {
    setRating(index + 1);
  };

  const handleSaveActivity = async () => {
    if (!token) {
      setError('You need to be logged in to save activities');
      return;
    }

    setIsSubmitting(true);
    setError(null);

    try {
      const activityData = {
        movieId,
        review,
        ratings: rating,
        isLogged: watchedBefore
      };

      const response = await fetch('http://localhost:5000/activity/submit', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`
        },
        body: JSON.stringify(activityData)
      });

      if (!response.ok) {
        const errorData = await response.json();
        throw new Error(errorData.message || 'Failed to save activity');
      }

      const result = await response.json();
      console.log('Activity saved:', result);

      // Call the onSave callback if provided
      if (onSave) {
        onSave({
          ...activityData,
          movieTitle,
          year: movieYear,
          liked,
          watchedDate: watchedBefore ? watchedDate : null
        });
      }
    } catch (err) {
      console.error('Error saving activity:', err);
      setError(err.message);
    } finally {
      setIsSubmitting(false);
    }
  };

  return (
    <div className="bg-darkPurple text-white p-6 rounded-xl shadow-lg relative max-w-4xl mx-auto">
      {/* Close (discard) button */}
      <button
        onClick={onDiscard}
        className="absolute top-4 right-4 text-white text-2xl font-bold hover:scale-110 transition"
        title="Discard"
        disabled={isSubmitting}
      >
        &times;
      </button>

      <div className="flex gap-6 flex-col md:flex-row">
        {/* Poster */}
        <img
          src={moviePoster}
          alt={movieTitle}
          className="h-72 rounded-xl shadow-md object-cover"
        />

        {/* Form content */}
        <div className="flex-1 flex flex-col justify-between">
          <h2 className="text-2xl font-bold">
            {movieTitle}{' '}
            <span className="text-purple text-lg font-normal">{movieYear}</span>
          </h2>

          {/* Watched info */}
          <div className="flex items-Wcenter gap-4 mt-4">
            <label className="flex items-center gap-2">
              <input
                type="checkbox"
                checked={watchedBefore}
                onChange={() => setWatchedBefore(!watchedBefore)}
                className="w-4 h-4"
                disabled={isSubmitting}
              />
              Watched on
              <input
                type="date"
                value={watchedDate}
                onChange={(e) => setWatchedDate(e.target.value)}
                className={`bg-purple text-white p-1 rounded-xl border border-gray-500 ${
                  watchedBefore ? '' : 'opacity-50 cursor-not-allowed'
                }`}
                disabled={!watchedBefore || isSubmitting}
              />
            </label>
          </div>

          {/* Review */}
          <textarea
            className="bg-purpleWhite text-black mt-4 w-full p-3 rounded-xl"
            placeholder="Add a review..."
            rows={4}
            value={review}
            onChange={(e) => setReview(e.target.value)}
            disabled={isSubmitting}
          />

          {/* Tags + Rating + Like */}
          <div className="flex items-center justify-between mt-4 flex-wrap gap-4">
            {/* Rating */}
            <div className="flex items-center gap-1">
              <span className="text-sm mr-1 text-white">Rating</span>
              {[...Array(10)].map((_, index) => {
                const isSelected = index < rating;
                return (
                  <svg
                    key={index}
                    onClick={() => !isSubmitting && handleRating(index)}
                    xmlns="http://www.w3.org/2000/svg"
                    fill={isSelected ? 'yellow' : 'none'}
                    viewBox="0 0 24 24"
                    stroke={isSelected ? 'none' : 'currentColor'}
                    strokeWidth={1}
                    className={`w-6 h-6 cursor-pointer transition-all hover:scale-110 ${
                      isSubmitting ? 'opacity-50 cursor-not-allowed' : ''
                    }`}
                  >
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      d="M12 17.27L18.18 21l-1.64-7.03L22 9.24l-7.19-.61L12 2 9.19 8.63 2 9.24l5.46 4.73L5.82 21z"
                    />
                  </svg>
                );
              })}
            </div>

            {/* Like button */}
            <button
              onClick={() => !isSubmitting && setLiked(!liked)}
              className="text-3xl"
              title="Like"
              disabled={isSubmitting}
            >
              <svg
                xmlns="http://www.w3.org/2000/svg"
                fill={liked ? 'red' : 'none'}
                viewBox="0 0 24 24"
                stroke={liked ? 'none' : 'currentColor'}
                strokeWidth={1}
                className={`w-7 h-7 transition-all hover:scale-110 ${
                  isSubmitting ? 'opacity-50 cursor-not-allowed' : ''
                }`}
              >
                <path
                  strokeLinecap="round"
                  strokeLinejoin="round"
                  d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"
                />
              </svg>
            </button>
          </div>

          {/* Error message */}
          {error && (
            <div className="mt-4 text-red-400 text-sm">
              {error}
            </div>
          )}

          {/* Save button at bottom */}
          <button
            onClick={handleSaveActivity}
            disabled={isSubmitting}
            className={`mt-6 bg-purpleWhite hover:bg-purple hover:text-purple transition-colors duration-200 text-darkPurple hover:text-white font-semibold py-2 px-4 rounded-xl shadow-md w-full ${
              isSubmitting ? 'opacity-70 cursor-not-allowed' : ''
            }`}
          >
            {isSubmitting ? 'Saving...' : 'Save Activity'}
          </button>
        </div>
      </div>
    </div>
  );
};

export default ActivityCard;