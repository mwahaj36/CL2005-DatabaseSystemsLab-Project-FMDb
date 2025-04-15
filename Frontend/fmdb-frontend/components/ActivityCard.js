import React, { useState } from 'react';

const ActivityCard = ({ movieTitle, movieYear, moviePoster, onSave }) => {
  const [watchedBefore, setWatchedBefore] = useState(true);
  const [watchedDate, setWatchedDate] = useState(new Date().toISOString().split('T')[0]);
  const [review, setReview] = useState('');
  const [tags, setTags] = useState('');
  const [liked, setLiked] = useState(false);
  const [rating, setRating] = useState(0);

  const handleRating = (index) => {
    setRating(index + 1);
  };

  const handleSaveActivity = () => {
    const activityData = {
      movieTitle,
      year: movieYear,
      watchedBefore,
      watchedDate: watchedBefore ? watchedDate : null,
      review,
      tags: tags.split(',').map(tag => tag.trim()).filter(Boolean),
      liked,
      rating, // Already an integer from 1 to 10
    };
    console.log('Saved Activity:', activityData);
    if (onSave) {
      onSave(); // Close the overlay after saving
    }
  };

  return (
    <div className="bg-darkPurple text-white p-6 rounded-3xl shadow-lg flex gap-6 max-w-4xl mx-auto">
      {/* Movie Poster */}
      <img
        src={moviePoster}
        alt={movieTitle}
        className="h-72 rounded-md shadow-md"
      />

      {/* Movie Info & Form */}
      <div className="flex-1">
        {/* Title and Save Button */}
        <div className="flex items-center justify-between">
          <h2 className="text-2xl font-bold text-white">
            {movieTitle} <span className="text-purple text-lg font-normal">{movieYear}</span>
          </h2>
          <button
            onClick={handleSaveActivity}
            className="bg-purpleWhite hover:bg-purple hover:text-purple transition-colors duration-200 text-darkPurple hover:text-white font-semibold py-2 px-4 rounded-2xl shadow-md"
          >
            Save Activity
          </button>
        </div>

        {/* Watch Info */}
        <div className="flex items-center gap-4 mt-2">
          <label className="flex items-center gap-2">
            <input
              type="checkbox"
              checked={watchedBefore}
              onChange={() => setWatchedBefore(!watchedBefore)}
              className="w-4 h-4"
            />
            Watched on
            <input
              type="date"
              value={watchedDate}
              onChange={(e) => setWatchedDate(e.target.value)}
              className={`bg-purple text-white p-1 rounded-md border border-gray-500 ${watchedBefore ? '' : 'opacity-50 cursor-not-allowed'}`}
              disabled={!watchedBefore}
            />
          </label>
        </div>

        {/* Review */}
        <textarea
          className="bg-purpleWhite text-black mt-4 w-full p-3 rounded-md"
          placeholder="Add a review..."
          rows={4}
          value={review}
          onChange={(e) => setReview(e.target.value)}
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
                  onClick={() => handleRating(index)}
                  xmlns="http://www.w3.org/2000/svg"
                  fill={isSelected ? 'yellow' : 'none'}
                  viewBox="0 0 24 24"
                  stroke={isSelected ? 'none' : 'currentColor'}
                  strokeWidth={1}
                  className="w-6 h-6 cursor-pointer transition-all hover:scale-110"
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

          {/* Like */}
          <button
            onClick={() => setLiked(!liked)}
            className="text-3xl"
            title="Like"
          >
            <svg
              xmlns="http://www.w3.org/2000/svg"
              fill={liked ? 'red' : 'none'}
              viewBox="0 0 24 24"
              stroke={liked ? 'none' : 'currentColor'}
              strokeWidth={1}
              className="w-7 h-7 transition-all hover:scale-110"
            >
              <path
                strokeLinecap="round"
                strokeLinejoin="round"
                d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"
              />
            </svg>
          </button>
        </div>
      </div>
    </div>
  );
};

export default ActivityCard;
