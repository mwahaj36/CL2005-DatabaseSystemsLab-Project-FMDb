import React, { useState, useEffect } from 'react';
import Error from './Error';

const ActivityAndReviewSection = () => {
  const [likedReviews, setLikedReviews] = useState({});
  const [showError, setShowError] = useState(false);

  const handleLikeClick = (reviewId) => {
    setLikedReviews((prev) => ({
      ...prev,
      [reviewId]: !prev[reviewId],
    }));
  };

  const reviewsData = [
    { activityID: 'r1', rating: 9, reviewText: "An emotionally charged masterpiece.", movieTitle: "Past Lives", userType: 'verified critic' },
    { activityID: 'r2', rating: 7.5, reviewText: "Visually stunning, though a bit slow in pace.", movieTitle: "Blade Runner 2049", userType: 'regular' },
    { activityID: 'r3', rating: 10, reviewText: "Perfect blend of music and storytelling.", movieTitle: "La La Land", userType: 'regular' },
    { activityID: 'r4', rating: 8, reviewText: "A thrilling ride from start to end.", movieTitle: "Whiplash", userType: 'verified critic' },
    { activityID: 'r5', rating: 8.5, reviewText: "A fresh take on classic storytelling.", movieTitle: "Little Women", userType: 'regular' },
    { activityID: 'r10', rating: 9.8, reviewText: "Profound, powerful, and poetic.", movieTitle: "The Tree of Life", userType: 'verified critic' },
  ];

  useEffect(() => {
    if (reviewsData.length === 0) {
      setShowError(true);
    }
  }, []);

  const firstColReviews = reviewsData.slice(0, 3);

  const renderReviewCard = (review) => {
    const hasLiked = likedReviews[review.activityID];
    return (
      <div
        key={review.activityID}
        className="relative flex flex-col items-center w-full z-10 min-h-40 bg-black bg-opacity-60 p-4 rounded-xl shadow-md hover:scale-105 transition-transform duration-300"
      >
        <div className="flex flex-col md:flex-row items-center space-y-4 md:space-y-0 md:space-x-6 relative w-full">
          <div
            className={`font-bold text-darkPurple text-xl md:text-2xl px-5 py-8 rounded-xl shadow-inner ${
              review.userType === 'verified critic' ? 'bg-gold' : 'bg-purpleWhite'
            }`}
          >
            {review.rating % 1 === 0 && review.rating !== 10 ? `${review.rating}.0` : review.rating}
          </div>

          <div className="text-center md:text-left flex-1">
            <p className="text-white text-sm md:text-lg italic">{review.reviewText}</p>
            <p className="text-purpleWhite font-bold mt-2 text-xs md:text-sm">{review.movieTitle}</p>
          </div>

          <div className="absolute bottom-4 right-4 md:static">
            <button
              onClick={() => handleLikeClick(review.activityID)}
              className={`text-2xl md:text-3xl transition-transform duration-200 hover:scale-125 focus:outline-none ${
                hasLiked ? 'text-red-500' : 'text-white'
              }`}
            >
              <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 24 24" className="w-6 h-6">
                <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5
                         2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09
                         3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0
                         3.78-3.4 6.86-8.55 11.54L12 21.35z" />
              </svg>
            </button>
          </div>
        </div>
      </div>
    );
  };

  return (
    <section id="review-section" className="relative z-10 container px-4 md:px-6 mx-auto">
      <h2 className="text-purpleWhite text-xl md:text-5xl font-bold mb-6 text-center">Recent Reviews</h2>

      {showError && (
        <Error message="Oops! We couldn't load the reviews right now." onClose={() => setShowError(false)} />
      )}

      <div className="gap-6 md:gap-8">
        <div className="space-y-4 md:space-y-6">{firstColReviews.map(renderReviewCard)}</div>
      </div>
    </section>
  );
};

export default ActivityAndReviewSection;
