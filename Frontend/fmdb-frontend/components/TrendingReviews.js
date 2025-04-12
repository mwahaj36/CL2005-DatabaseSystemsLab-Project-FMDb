// components/TrendingReviews.js

import React from 'react';

const TrendingReviews = ({ reviewsData }) => {
  // Check if there are no reviews
  if (!reviewsData || reviewsData.length === 0) {
    return <p className="text-white text-3xl">No reviews...<br></br> Just like Inception without the dreams!</p>;
  }

  return (
    <div>
      <h2 className="text-purpleWhite text-2xl md:text-3xl font-bold mb-4">Trending Reviews</h2>
      <div className="space-y-6">
        {reviewsData.map((review, index) => (
          <div key={index} className="flex  items-center min-h-40 bg-black bg-opacity-60 p-4 rounded-3xl shadow-md hover:scale-105 transition-transform duration-300">
            <div className="flex items-center space-x-6 relative">
              {/* Conditionally render the rating card based on usertype */}
              <div className={`font-bold text-darkPurple text-xl md:text-2xl px-5 py-8 rounded-xl shadow-inner ${review.usertype === 'Verified Critic' ? 'bg-gold' : 'bg-purpleWhite'}`}>
                {review.rating % 1 === 0 ? `${review.rating}.0` : review.rating}
              </div>
              <div className="text-center md:text-left">
                <p className="text-white text-md md:text-lg italic">{review.text}</p>
                <p className="text-purpleWhite font-bold mt-2 text-sm">{review.username}</p>
              </div>
              <div className="absolute bottom-4 right-4">
                <button className="text-purpleWhite hover:text-pink-500 text-2xl md:text-3xl transition-transform duration-200 hover:scale-125 focus:outline-none">
                  <i className="fas fa-heart"></i>
                </button>
              </div>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
};

export default TrendingReviews;
