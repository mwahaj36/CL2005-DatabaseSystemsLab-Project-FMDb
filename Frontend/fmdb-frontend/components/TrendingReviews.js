import React, { useState, useEffect } from 'react';
import { useRouter }           from 'next/router';
import { useAuth }             from '@/context/AuthContext';
import ErrorPopup              from '@/components/Error';

const TrendingReviews = ({ reviewsData = [], user, movie = {} }) => {
  const router = useRouter();
  const { token } = useAuth();

  const [likedReviews, setLikedReviews]     = useState({});
  const [reviews,       setReviews]         = useState(reviewsData);
  const [error,         setError]           = useState(null);
  const [showErrorPopup, setShowErrorPopup] = useState(false);

  // 1) On mount: fetch isActivity? for each review via query params
  useEffect(() => {
    if (!user || !token) return;

    const fetchLikedStatus = async () => {
      const statusMap = {};

      for (let review of reviewsData) {
        try {
          const url = new URL('http://localhost:5000/activity/isLiked');
          url.searchParams.set('activityId', review.ActivityID);
          url.searchParams.set('userId',  user.userID);

          const res = await fetch(url, {
            method: 'GET',
            headers: { 'Authorization': `Bearer ${token}` }
          });
          if (!res.ok) throw new Error(`HTTP ${res.status}`);

          const { isActivity } = await res.json();
          statusMap[review.ActivityID] = !!isActivity;
        } catch (err) {
          console.error('isActivity error for', review.ActivityID, err);
          statusMap[review.ActivityID] = false;
        }
      }

      setLikedReviews(statusMap);
    };

    fetchLikedStatus();
  }, [reviewsData, user, token]);

  // 2) Go to the “See All Reviews” page
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

    const id    = review.ActivityID;
    const liked = !!likedReviews[id];

    // Optimistic UI
    setLikedReviews(prev => ({ ...prev, [id]: !liked }));
    setReviews(prev =>
      prev.map(r =>
        r.ActivityID === id
          ? {
              ...r,
              ActivityLikeCount: liked
                ? (r.ActivityLikeCount || 0) - 1
                : (r.ActivityLikeCount || 0) + 1
            }
          : r
      )
    );

    try {
      const res = await fetch(
        `http://localhost:5000/activity/like/${id}`,
        {
          method: liked ? 'DELETE' : 'POST',
          headers: { 'Authorization': `Bearer ${token}` }
        }
      );
      if (!res.ok) {
        const errData = await res.json();
        throw new Error(errData.message || 'Like toggle failed');
      }
    } catch (err) {
      console.error('Like toggle error:', err);
      // Rollback
      setLikedReviews(prev => ({ ...prev, [id]: liked }));
      setReviews(prev =>
        prev.map(r =>
          r.ActivityID === id
            ? {
                ...r,
                ActivityLikeCount: liked
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
          const hasLiked = !!likedReviews[review.ActivityID];
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

              {/* Like */}
              <div className="flex items-center space-x-2">
                <span className="text-white">{review.ActivityLikeCount || 0}</span>
                <button
                  onClick={() => handleLikeToggle(review)}
                  className={`text-2xl transition-transform duration-200 hover:scale-125 focus:outline-none ${
                    hasLiked ? 'text-red-500' : 'text-white'
                  }`}
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
