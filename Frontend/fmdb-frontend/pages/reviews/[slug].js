import React, { useState, useEffect } from 'react';
import { useRouter } from 'next/router';
import Navbar from '../../components/Navbar';
import Footer from '../../components/Footer';
import { useAuth } from '@/context/AuthContext';

const AllReviewsPage = () => {
  const router = useRouter();
  const { slug } = router.query;
  const { user, token } = useAuth();
  const [movie, setMovie] = useState(null);
  const [reviews, setReviews] = useState([]);
  const [likedReviews, setLikedReviews] = useState({});
  const [newReply, setNewReply] = useState({});
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  const formatTimeAgo = (date) => {
    const diff = (new Date() - new Date(date)) / 1000;
    if (diff < 60) return 'just now';
    if (diff < 3600) return `${Math.floor(diff / 60)} min ago`;
    if (diff < 86400) return `${Math.floor(diff / 3600)} hour${Math.floor(diff / 3600) > 1 ? 's' : ''} ago`;
    if (diff < 604800) return `${Math.floor(diff / 86400)} day${Math.floor(diff / 86400) > 1 ? 's' : ''} ago`;
    return new Date(date).toLocaleDateString();
  };

  useEffect(() => {
    if (!slug) return;

    const fetchData = async () => {
      try {
        setLoading(true);
        setError(null);

        const res = await fetch(`http://localhost:5000/activity/all/${slug}`);
        const data = await res.json();

        if (!data.success) throw new Error(data.message || 'Failed to fetch reviews');

        setMovie({
          MovieID: slug,
          Backdrop: data.backdrop,
          Title: data.title || 'Unknown Title',
          ReleaseDate: data.releaseDate || '0000',
          Director: data.director || 'Unknown Director',
        });

        setReviews(data.reviews || []);

        // Check which reviews are liked by user
        if (user) {
          const likes = {};
          await Promise.all(
            (data.reviews || []).map(async (review) => {
              try {
                const response = await fetch('http://localhost:5000/activity/isActivity', {
                  method: 'POST',
                  headers: {
                    'Content-Type': 'application/json',
                    'Authorization': `Bearer ${token}`
                  },
                  body: JSON.stringify({
                    movieId: slug,
                    userId: user.userID,
                    activityID: review.ActivityID
                  })
                });

                if (response.ok) {
                  const likeData = await response.json();
                  likes[review.ActivityID] = likeData.isActivity;
                }
              } catch (err) {
                console.error(`Error checking like for review ${review.ActivityID}:`, err);
              }
            })
          );
          setLikedReviews(likes);
        }
      } catch (err) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };

    fetchData();
  }, [slug, user, token]);

const handleLikeClick = async (reviewID) => {
    if (!user || !token) {
      setError("Please log in to like a review!");
      return;
    }

    const isLike = !likedReviews[reviewID];

    try {
      // Optimistic update
      setLikedReviews(prev => ({ ...prev, [reviewID]: isLike }));
      setReviews(prev =>
        prev.map(review =>
          review.ActivityID === reviewID
            ? {
                ...review,
                ActivityLikeCount: isLike
                  ? (review.ActivityLikeCount || 0) + 1
                  : Math.max(0, (review.ActivityLikeCount || 1) - 1)
              }
            : review
        )
      );

      let response;
      if (isLike) {
        response = await fetch('http://localhost:5000/activity/like', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
            'Authorization': `Bearer ${token}`
          },
          body: JSON.stringify({
            activityID: reviewID,
            userID: user.userID
          })
        });
      } else {
        response = await fetch(`http://localhost:5000/activity/like/${reviewID}`, {
          method: 'DELETE',
          headers: {
            'Authorization': `Bearer ${token}`
          }
        });
      }

      // Check if response is JSON
      const contentType = response.headers.get('content-type');
      if (!contentType || !contentType.includes('application/json')) {
        const text = await response.text();
        throw new Error(`Unexpected response: ${text.substring(0, 100)}`);
      }

      const data = await response.json();
      if (!data.success) {
        throw new Error(data.message || 'Like action failed');
      }
    } catch (err) {
      console.error('Like action failed:', err);
      // Rollback
      setLikedReviews(prev => ({ ...prev, [reviewID]: !isLike }));
      setReviews(prev =>
        prev.map(review =>
          review.ActivityID === reviewID
            ? {
                ...review,
                ActivityLikeCount: isLike
                  ? Math.max(0, (review.ActivityLikeCount || 1) - 1)
                  : (review.ActivityLikeCount || 0) + 1
              }
            : review
        )
      );
      setError(err.message);
    }
  };

  const handleReplyChange = (reviewID, e) => {
    setNewReply(prev => ({
      ...prev,
      [reviewID]: e.target.value,
    }));
  };

  const handleReplySubmit = async (reviewID) => {
    if (!user || !token) {
      setError('Please log in to submit a reply!');
      return;
    }

    const replyText = newReply[reviewID]?.trim();
    if (!replyText) return;

    try {
      const res = await fetch('http://localhost:5000/activity/reply', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`,
        },
        body: JSON.stringify({
          activityId: reviewID,
          reply: replyText,
          userId: user.userID
        }),
      });

      const data = await res.json();

      if (!data.success) throw new Error(data.message || 'Failed to submit reply');

      const newReplyObj = {
        ActivityID: data.activityID,
        ReviewText: replyText,
        Username: user.username,
        Ratings: null,
        IsLogged: true,
        ActivityDateTime: new Date().toISOString(),
        Replies: [],
        IsReply: true,
        ReplyTo: reviewID,
      };

      setReviews(prev =>
        prev.map(review =>
          review.ActivityID === reviewID
            ? {
                ...review,
                Replies: [...(review.Replies || []), newReplyObj],
              }
            : review
        )
      );

      setNewReply(prev => ({ ...prev, [reviewID]: '' }));
    } catch (err) {
      console.error('Error submitting reply:', err);
      setError(err.message);
    }
  };

  const renderReplies = (replyList) => {
    if (!replyList || replyList.length === 0) {
      return null;
    }

    return replyList.map((reply) => (
      <div key={reply.ActivityID} className="pl-8 mt-4 items-center text-left ml-20 p-4 rounded-lg">
        <div className="flex items-center space-x-4">
          <img
            src={'/default-pic.jpg'}
            alt={reply.Username}
            className="w-12 h-12 mt-2 rounded-md object-cover"
          />
          <div>
            <p className="text-purpleWhite font-bold text-xl mt-2">{reply.Username}</p>
            <p className="text-white text-xs italic">{formatTimeAgo(reply.ActivityDateTime)}</p>
            <p className="text-white text-lg mt-2">{reply.ReviewText}</p>
          </div>
        </div>
      </div>
    ));
  };

  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="text-white text-2xl">Loading...</div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="text-red-500 text-2xl">Error: {error}</div>
      </div>
    );
  }

  if (!movie) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="text-white text-2xl">Movie not found</div>
      </div>
    );
  }

  return (
    <div>
      <section
        className="relative bg-cover bg-center bg-fixed min-h-screen"
        style={{ backgroundImage: `url(${movie.Backdrop})` }}
      >
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
        <Navbar />
        <div className="container px-6 mx-auto mt-16 text-center relative z-10">
          <h1 className="text-white font-bold text-6xl pb-5">
            {movie.Title} ({movie.ReleaseDate?.slice(-4)})
          </h1>
          <p className="text-white text-2xl">Directed by {movie.Director}</p>
          <div className="mt-8 text-white">
            <h2 className="text-2xl">All Reviews</h2>
            {error && <p className="text-red-500 mb-4">{error}</p>}
            {reviews.length === 0 ? (
              <p className="text-white">No reviews found for this movie.</p>
            ) : (
              reviews.map((review) => {
                if (review.IsReply) return null;

                const hasLiked = likedReviews[review.ActivityID];

                return (
                  <div
                    key={review.ActivityID}
                    className="bg-black bg-opacity-40 p-6 mt-6 rounded-3xl shadow-md hover:scale-105 transition-transform duration-300 max-w-5xl mx-auto"
                  >
                    <div className="flex items-center space-x-4 relative">
                      <img
                        src={'/default-pic.jpg'}
                        alt={review.Username}
                        className="w-16 h-16 md:w-20 md:h-20 object-cover rounded-xl"
                      />

                      <div className="font-bold text-darkPurple text-xl md:text-2xl px-5 py-8 rounded-xl shadow-inner bg-purpleWhite">
                        {review.Ratings % 1 === 0 && review.Ratings !== 10
                          ? `${review.Ratings}.0`
                          : review.Ratings}
                      </div>

                      <div className="text-center md:text-left flex-1">
                        <p className="text-white text-md md:text-lg italic">{review.ReviewText}</p>
                        <p className="text-purpleWhite font-bold mt-2 text-sm">{review.Username}</p>
                        <p className="text-white text-xs italic">{formatTimeAgo(review.ActivityDateTime)}</p>
                      </div>

                      <div className="absolute bottom-4 right-4 flex items-center">
                        <span className="text-white mr-2">{review.ActivityLikeCount || 0}</span>
                        <button
                          onClick={() => handleLikeClick(review.ActivityID)}
                          className={`text-2xl md:text-3xl transition-transform duration-200 hover:scale-125 focus:outline-none ${
                            hasLiked ? 'text-red-500' : 'text-white'
                          }`}
                        >
                          ♥
                        </button>
                      </div>
                    </div>

                    {renderReplies(review.Replies)}

                    <div className="mt-4">
                      <textarea
                        value={newReply[review.ActivityID] || ''}
                        onChange={(e) => handleReplyChange(review.ActivityID, e)}
                        className="w-full p-2 bg-black bg-opacity-50 text-white rounded-md"
                        placeholder="Write a reply..."
                        rows="2"
                      />
                      <button
                        onClick={() => handleReplySubmit(review.ActivityID)}
                        className="mt-2 px-4 py-2 bg-purpleWhite text-darkPurple rounded-lg hover:bg-opacity-90 transition"
                      >
                        Reply
                      </button>
                    </div>
                  </div>
                );
              })
            )}
          </div>
        </div>
        <Footer />
      </section>
    </div>
  );
};

export default AllReviewsPage;