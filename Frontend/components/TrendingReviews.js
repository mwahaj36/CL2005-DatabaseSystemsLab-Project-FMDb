import React, { useState, useEffect } from 'react';
import { useRouter } from 'next/router';
import { useAuth } from '@/context/AuthContext';
import ErrorPopup from '@/components/Error';
const API_URL = process.env.NEXT_PUBLIC_API_URL;
const TrendingReviews = ({ reviewsData = [], user, movie = {} }) => {
  const router = useRouter();
  const { token } = useAuth();

  const [likedReviews, setLikedReviews] = useState({});
  const [deletableReviews, setDeletableReviews] = useState({});
  const [reviews, setReviews] = useState(reviewsData);
  const [error, setError] = useState(null);
  const [showErrorPopup, setShowErrorPopup] = useState(false);

  const checkDeletableStatus = async (activityId) => {
    if (!user || !token) return false;
    
    try {
      const response = await fetch(`${API_URL}/activity/isDeletable/${activityId}`, {
        headers: { 'Authorization': `Bearer ${token}` }
      });
      const data = await response.json();
      return data.success && data.isDeletable;
    } catch (err) {
      console.error('Error checking deletable status:', err);
      return false;
    }
  };

  // 1) On mount: fetch isLiked and deletable status for each review
  useEffect(() => {
    if (!user || !token) return;

    const fetchStatuses = async () => {
      const likedStatusMap = {};
      const deletableStatusMap = {};

      for (let review of reviewsData) {
        try {
          // Check like status
          const likeUrl = new URL('${API_URL}/activity/isLiked');
          likeUrl.searchParams.set('activityId', review.ActivityID);
          likeUrl.searchParams.set('userId', user.userID);

          const likeRes = await fetch(likeUrl, {
            method: 'GET',
            headers: { 'Authorization': `Bearer ${token}` }
          });
          if (!likeRes.ok) throw new Error(`HTTP ${likeRes.status}`);
          const { isLiked } = await likeRes.json();
          likedStatusMap[review.ActivityID] = isLiked;

          // Check deletable status
          deletableStatusMap[review.ActivityID] = await checkDeletableStatus(review.ActivityID);
        } catch (err) {
          console.error('Status check error for', review.ActivityID, err);
          likedStatusMap[review.ActivityID] = false;
          deletableStatusMap[review.ActivityID] = false;
        }
      }

      setLikedReviews(likedStatusMap);
      setDeletableReviews(deletableStatusMap);
    };

    fetchStatuses();
  }, [reviewsData, user, token]);

  // 2) Go to the "See All Reviews" page
  const handleSeeAllClick = () => {
    const movieId = movie.movieId || movie.MovieID;
    if (movieId) router.push(`/reviews/${movieId}`);
  };

  const closeErrorPopup = () => {
    setShowErrorPopup(false);
    setError(null);
  };

  // 3) Toggle like/unlike
  const handleLikeToggle = async (review) => {
    if (!user || !token) {
      setError('You must be logged in to like reviews');
      setShowErrorPopup(true);
      return;
    }

    const id = review.ActivityID;
    const isLiked = !!likedReviews[id];

    // Optimistic UI update
    setLikedReviews(prev => ({ ...prev, [id]: !isLiked }));
    setReviews(prev =>
      prev.map(r =>
        r.ActivityID === id
          ? {
              ...r,
              ActivityLikeCount: isLiked
                ? (r.ActivityLikeCount || 0) - 1
                : (r.ActivityLikeCount || 0) + 1
            }
          : r
      )
    );

    try {
      const res = await fetch(
        `${API_URL}/activity/like/${id}`,
        {
          method: isLiked ? 'DELETE' : 'POST',
          headers: { 'Authorization': `Bearer ${token}` }
        }
      );
      
      if (!res.ok) {
        const errData = await res.json();
        throw new Error(errData.message || 'Like toggle failed');
      }

      // Confirm the action was successful
      const { success, message } = await res.json();
      if (!success) {
        throw new Error(message);
      }
    } catch (err) {
      console.error('Like toggle error:', err);
      // Rollback on error
      setLikedReviews(prev => ({ ...prev, [id]: isLiked }));
      setReviews(prev =>
        prev.map(r =>
          r.ActivityID === id
            ? {
                ...r,
                ActivityLikeCount: isLiked
                  ? (r.ActivityLikeCount || 0)
                  : Math.max(0, (r.ActivityLikeCount || 0) - 1)
              }
            : r
        )
      );
      setError(err.message);
      setShowErrorPopup(true);
    }
  };

  // 4) Handle delete review
  const handleDeleteReview = async (activityId) => {
    if (!user || !token) {
      setError("Please log in to delete a review!");
      setShowErrorPopup(true);
      return;
    }

    try {
      const response = await fetch(`${API_URL}/activity/${activityId}`, {
        method: 'DELETE',
        headers: { 'Authorization': `Bearer ${token}` }
      });

      if (!response.ok) {
        const errData = await response.json();
        throw new Error(errData.message || 'Failed to delete review');
      }

      const data = await response.json();
      if (!data.success) {
        throw new Error(data.message || 'Failed to delete review');
      }

      // Remove the deleted review from state
      setReviews(prev => prev.filter(review => review.ActivityID !== activityId));
    } catch (err) {
      console.error('Delete action failed:', err);
      setError(err.message);
      setShowErrorPopup(true);
    }
  };

  if (!reviews.length) {
    return (
      <div className="flex justify-center items-center h-40">
        <div className="text-white">No reviews yet. Be the first to review!</div>
      </div>
    );
  }

  return (
    <div>
      <h2 className="text-purpleWhite text-2xl md:text-3xl font-bold mb-4 text-center">
        Trending Reviews
      </h2>

      <div className="space-y-6">
        {reviews.map(review => {
          const isLiked = !!likedReviews[review.ActivityID];
          const isDeletable = !!deletableReviews[review.ActivityID];
          
          return (
            <div
              key={review.ActivityID}
              className="flex items-center min-h-40 bg-black bg-opacity-60 p-4 rounded-3xl shadow-md hover:scale-105 transition-transform duration-300"
            >
              {/* Rating */}
              <div className={`
                font-bold text-darkPurple text-xl md:text-2xl px-5 py-8 rounded-xl shadow-inner
                ${review.userType === 'verified critic' ? 'bg-gold' : 'bg-purpleWhite'}
              `}>
                {review.Ratings % 1 === 0
                  ? `${review.Ratings}.0`
                  : review.Ratings}
              </div>

              {/* Text */}
              <div className="ml-6 flex-1">
                <p className="text-white italic">{review.Review}</p>
                <p className="text-purpleWhite font-bold mt-2 text-sm">
                  {review.Username || 'Anonymous'}
                </p>
              </div>

              {/* Like and Delete */}
              <div className="flex items-center space-x-2">
                <span className="text-white">{review.ActivityLikeCount || 0}</span>
                <button
                  onClick={() => handleLikeToggle(review)}
                  className={`text-2xl transition-transform duration-200 hover:scale-125 focus:outline-none ${
                    isLiked ? 'text-red-500' : 'text-white'
                  }`}
                  aria-label={isLiked ? 'Unlike review' : 'Like review'}
                >
                  <svg xmlns="http://www.w3.org/2000/svg"
                       viewBox="0 0 24 24" fill="currentColor"
                       className="w-6 h-6">
                    <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 
                             2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 
                             3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 
                             3.78-3.4 6.86-8.55 11.54L12 21.35z" />
                  </svg>
                </button>
                
                {isDeletable && (
                  <button
                    onClick={() => handleDeleteReview(review.ActivityID)}
                    className="text-white hover:text-red-500 transition-colors duration-200"
                    title="Delete review"
                  >
                    <svg xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                    </svg>
                  </button>
                )}
              </div>
            </div>
          );
        })}
      </div>

      <div className="mt-6 text-center">
        <button
          onClick={handleSeeAllClick}
          className="bg-purple text-white py-2 px-4 rounded-full hover:bg-darkPurple transition-colors duration-200"
        >
          See All Reviews
        </button>
      </div>

      {showErrorPopup && (
        <ErrorPopup
          message={error || 'An unexpected error occurred'}
          onClose={closeErrorPopup}
        />
      )}
    </div>
  );
};

export default TrendingReviews;