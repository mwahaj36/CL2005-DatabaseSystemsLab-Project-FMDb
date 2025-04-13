import React, { useState, useContext } from 'react';
import { AuthContext } from '../context/AuthContext'; // Import the AuthContext

const TrendingReviews = ({ reviewsData, appendLikeToActivity }) => {
  const { user } = useContext(AuthContext); // Get the current logged-in user from the context
  const [likedReviews, setLikedReviews] = useState({});
  const [visibleReviews, setVisibleReviews] = useState(5); // Initially show 5 reviews

  if (!reviewsData || reviewsData.length === 0) {
    return (
      <p className="text-white text-3xl text-center">
        No reviews...<br />
        Just like Inception without the dreams!
      </p>
    );
  }

  const handleLikeClick = (reviewID) => {
    if (!user) {
      alert('Please log in to like a review!');
      return;
    }

    setLikedReviews((prevState) => ({
      ...prevState,
      [reviewID]: !prevState[reviewID],
    }));

    // Append the like to the activity
    const activity = {
      activityID: `a00${Date.now()}`, // Generate unique activity ID
      movieID: reviewID,
      userID: user.userID,
      isReply: false, // not a reply
      rating: null,
      reviewText: "Liked this review",
      activityDateTime: new Date().toISOString(),
    };

    // Call the function passed from the parent to append this like
    appendLikeToActivity(activity);
  };

  const handleSeeAllClick = () => {
    setVisibleReviews(reviewsData.length); // Show all reviews
  };

  return (
    <div>
      <h2 className="text-purpleWhite text-2xl md:text-3xl font-bold mb-4 text-center">
        Trending Reviews
      </h2>
      <div className="space-y-6">
        {reviewsData.slice(0, visibleReviews).map((review) => {
          const hasLiked = likedReviews[review.activityID]; // Check if current review is liked by the user

          return (
            <div
              key={review.activityID}
              className="flex items-center min-h-40 bg-black bg-opacity-60 p-4 rounded-3xl shadow-md hover:scale-105 transition-transform duration-300"
            >
              <div className="flex items-center space-x-6 relative w-full">
                <div
                  className={`font-bold text-darkPurple text-xl md:text-2xl px-5 py-8 rounded-xl shadow-inner ${
                    review.userType === 'verified critic' ? 'bg-gold' : 'bg-purpleWhite'
                  }`}
                >
                  {review.rating % 1 === 0 && review.rating !== 10 ? `${review.rating}.0` : review.rating}
                </div>

                <div className="text-center md:text-left flex-1">
                  <p className="text-white text-md md:text-lg italic">{review.reviewText}</p>
                  <p className="text-purpleWhite font-bold mt-2 text-sm">{review.fullName}</p>
                </div>

                <div className="absolute bottom-4 right-4">
                  <button
                    onClick={() => handleLikeClick(review.activityID)}
                    className={`text-2xl md:text-3xl transition-transform duration-200 hover:scale-125 focus:outline-none ${
                      hasLiked ? 'text-red-500' : 'text-white'
                    }`}
                  >
                    {/* Heart SVG Icon */}
                    <svg
                      xmlns="http://www.w3.org/2000/svg"
                      viewBox="0 0 24 24"
                      fill="currentColor"
                      className="w-6 h-6"
                    >
                      <path
                        d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z"
                      />
                    </svg>
                  </button>
                </div>
              </div>
            </div>
          );
        })}
      </div>

      {/* "See All" Button */}
      {visibleReviews < reviewsData.length && (
        <div className="mt-6 text-center">
          <button
            onClick={handleSeeAllClick}
            className="bg-purple text-white py-2 px-4 rounded-full hover:bg-darkPurple transition-colors duration-200"
          >
            See All Reviews
          </button>
        </div>
      )}
    </div>
  );
};

export default TrendingReviews;
