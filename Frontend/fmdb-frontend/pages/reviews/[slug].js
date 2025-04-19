import React, { useState, useEffect } from 'react';
import { useRouter } from 'next/router';
import Navbar from '../../components/Navbar';
import Footer from '../../components/Footer';
import { useAuth } from '@/context/AuthContext';
import ErrorPopup from '@/components/Error';

const AllReviewsPage = () => {
  const router = useRouter();
  const { slug } = router.query;
  const { user, token } = useAuth();
  const [movie, setMovie] = useState(null);
  const [reviews, setReviews] = useState([]);
  const [likedReviews, setLikedReviews] = useState({});
  const [deletableReviews, setDeletableReviews] = useState({});
  const [newReply, setNewReply] = useState({});
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [showErrorPopup, setShowErrorPopup] = useState(false);

  const formatTimeAgo = (date) => {
    const diff = (new Date() - new Date(date)) / 1000;
    if (diff < 60) return 'just now';
    if (diff < 3600) return `${Math.floor(diff / 60)} min ago`;
    if (diff < 86400) return `${Math.floor(diff / 3600)} hour${Math.floor(diff / 3600) > 1 ? 's' : ''} ago`;
    if (diff < 604800) return `${Math.floor(diff / 86400)} day${Math.floor(diff / 86400) > 1 ? 's' : ''} ago`;
    return new Date(date).toLocaleDateString();
  };

  const formatReleaseYear = (dateString) => {
    if (!dateString) return '';
    const date = new Date(dateString);
    return isNaN(date.getTime()) ? '' : date.getFullYear();
  };

  const closeErrorPopup = () => {
    setShowErrorPopup(false);
    setError(null);
  };

  const checkDeletableStatus = async (activityId) => {
    if (!user || !token) return false;
    
    try {
      const response = await fetch(`http://localhost:5000/activity/isDeletable/${activityId}`, {
        headers: { 'Authorization': `Bearer ${token}` }
      });
      const data = await response.json();
      return data.success && data.isDeletable;
    } catch (err) {
      console.error('Error checking deletable status:', err);
      return false;
    }
  };

  useEffect(() => {
    if (!slug) return;

    const fetchData = async () => {
      try {
        setLoading(true);
        setError(null);

        const res = await fetch(`http://localhost:5000/activity/all/${slug}`);
        const data = await res.json();

        if (!data.success) {
          throw new Error(data.message || 'Failed to fetch reviews');
        }

        setMovie({
          movieId: data.movie.movieid,
          title: data.movie.title,
          backdrop: data.movie.moviebackdroplink,
          directors: data.movie.directors,
          releaseDate: data.movie.releaseDate || ''
        });

        const reviewsData = data.reviews || [];
        setReviews(reviewsData);

        if (user && token) {
          // Check likes and deletable status for all reviews and replies
          const likes = {};
          const deletable = {};
          
          const processActivities = async (activities) => {
            await Promise.all(
              activities.map(async (activity) => {
                // Check like status
                try {
                  const url = new URL('http://localhost:5000/activity/isLiked');
                  url.searchParams.set('activityId', activity.ActivityID);
                  url.searchParams.set('userId', user.userID);

                  const likeResponse = await fetch(url, {
                    method: 'GET',
                    headers: { 'Authorization': `Bearer ${token}` }
                  });

                  if (likeResponse.ok) {
                    const likeData = await likeResponse.json();
                    likes[activity.ActivityID] = likeData.isLiked;
                  }
                } catch (err) {
                  console.error(`Error checking like for activity ${activity.ActivityID}:`, err);
                  likes[activity.ActivityID] = false;
                }

                // Check deletable status
                deletable[activity.ActivityID] = await checkDeletableStatus(activity.ActivityID);

                // Process replies recursively
                if (activity.Replies && activity.Replies.length > 0) {
                  await processActivities(activity.Replies);
                }
              })
            );
          };

          await processActivities(reviewsData);
          
          setLikedReviews(likes);
          setDeletableReviews(deletable);
        }
      } catch (err) {
        setError(err.message);
        setShowErrorPopup(true);
      } finally {
        setLoading(false);
      }
    };

    fetchData();
  }, [slug, user, token]);

  const handleLikeClick = async (activityID) => {
    if (!user || !token) {
      setError("Please log in to like a review!");
      setShowErrorPopup(true);
      return;
    }

    const isLiked = !!likedReviews[activityID];

    try {
      // Optimistic update
      setLikedReviews(prev => ({ ...prev, [activityID]: !isLiked }));
      
      // Update reviews state
      const updateActivityLikes = (activities) => {
        return activities.map(activity => {
          if (activity.ActivityID === activityID) {
            return {
              ...activity,
              ActivityLikeCount: isLiked
                ? (activity.ActivityLikeCount || 0) - 1
                : (activity.ActivityLikeCount || 0) + 1
            };
          }
          
          // Check replies
          if (activity.Replies && activity.Replies.length > 0) {
            return {
              ...activity,
              Replies: updateActivityLikes(activity.Replies)
            };
          }
          
          return activity;
        });
      };

      setReviews(prev => updateActivityLikes(prev));

      const response = await fetch(
        `http://localhost:5000/activity/like/${activityID}`,
        {
          method: isLiked ? 'DELETE' : 'POST',
          headers: { 'Authorization': `Bearer ${token}` }
        }
      );

      if (!response.ok) {
        const errData = await response.json();
        throw new Error(errData.message || 'Like toggle failed');
      }

      const { success, message } = await response.json();
      if (!success) {
        throw new Error(message);
      }
    } catch (err) {
      console.error('Like action failed:', err);
      // Rollback
      setLikedReviews(prev => ({ ...prev, [activityID]: isLiked }));
      
      const rollbackActivityLikes = (activities) => {
        return activities.map(activity => {
          if (activity.ActivityID === activityID) {
            return {
              ...activity,
              ActivityLikeCount: isLiked
                ? (activity.ActivityLikeCount || 0)
                : Math.max(0, (activity.ActivityLikeCount || 0) - 1)
            };
          }
          
          if (activity.Replies && activity.Replies.length > 0) {
            return {
              ...activity,
              Replies: rollbackActivityLikes(activity.Replies)
            };
          }
          
          return activity;
        });
      };

      setReviews(prev => rollbackActivityLikes(prev));
      setError(err.message);
      setShowErrorPopup(true);
    }
  };

  const handleDeleteReview = async (activityId) => {
    if (!user || !token) {
      setError("Please log in to delete a review!");
      setShowErrorPopup(true);
      return;
    }

    try {
      const response = await fetch(`http://localhost:5000/activity/${activityId}`, {
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

      // Remove the deleted activity from state
      const removeActivity = (activities) => {
        return activities.filter(activity => activity.ActivityID !== activityId)
          .map(activity => {
            if (activity.Replies && activity.Replies.length > 0) {
              return {
                ...activity,
                Replies: removeActivity(activity.Replies)
              };
            }
            return activity;
          });
      };

      setReviews(prev => removeActivity(prev));
    } catch (err) {
      console.error('Delete action failed:', err);
      setError(err.message);
      setShowErrorPopup(true);
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
      setShowErrorPopup(true);
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
        ActivityLikeCount: 0,
        UserID: user.userID
      };

      // Update reviews state with the new reply
      const addReplyToActivity = (activities) => {
        return activities.map(activity => {
          if (activity.ActivityID === reviewID) {
            return {
              ...activity,
              Replies: [...(activity.Replies || []), newReplyObj]
            };
          }
          
          if (activity.Replies && activity.Replies.length > 0) {
            return {
              ...activity,
              Replies: addReplyToActivity(activity.Replies)
            };
          }
          
          return activity;
        });
      };

      setReviews(prev => addReplyToActivity(prev));
      setNewReply(prev => ({ ...prev, [reviewID]: '' }));

      // Update likedReviews and deletableReviews for the new reply
      setLikedReviews(prev => ({ ...prev, [data.activityID]: false }));
      setDeletableReviews(prev => ({ ...prev, [data.activityID]: true }));
    } catch (err) {
      console.error('Error submitting reply:', err);
      setError(err.message);
      setShowErrorPopup(true);
    }
  };

  const renderDirectors = (directors) => {
    if (!directors || directors.length === 0) return 'Unknown Director';
    if (directors.length === 1) return `Directed by ${directors[0]}`;
    return `Directed by ${directors.join(' and ')}`;
  };

  const renderReplies = (replyList) => {
    if (!replyList || replyList.length === 0) {
      return null;
    }

    return replyList.map((reply) => {
      const isLiked = likedReviews[reply.ActivityID] || false;
      const isDeletable = deletableReviews[reply.ActivityID] || false;

      return (
        <div key={reply.ActivityID} className="pl-8 mt-4 items-center text-left ml-20 p-4 rounded-lg bg-black bg-opacity-30">
          <div className="flex items-center space-x-4 relative">
            <img
              src={'/default-pic.jpg'}
              alt={reply.Username}
              className="w-12 h-12 rounded-md object-cover"
            />
            <div className="flex-1">
              <p className="text-purpleWhite font-bold text-xl">{reply.Username}</p>
              <p className="text-white text-xs italic">{formatTimeAgo(reply.ActivityDateTime)}</p>
              <p className="text-white text-lg mt-2">{reply.ReviewText}</p>
            </div>
            <div className="absolute bottom-4 right-4 flex items-center">
              <span className="text-white mr-2">{reply.ActivityLikeCount || 0}</span>
              <button
                onClick={() => handleLikeClick(reply.ActivityID)}
                className={`text-2xl transition-transform duration-200 hover:scale-125 focus:outline-none ${
                  isLiked ? 'text-red-500' : 'text-white'
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
              
              {isDeletable && (
                <button
                  onClick={() => handleDeleteReview(reply.ActivityID)}
                  className="ml-2 text-white hover:text-red-500 transition-colors duration-200"
                  title="Delete reply"
                >
                  <svg xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                  </svg>
                </button>
              )}
            </div>
          </div>
          {renderReplies(reply.Replies)}
        </div>
      );
    });
  };

  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="text-white text-2xl">Loading...</div>
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
        style={{ backgroundImage: `url(${movie.backdrop})` }}
      >
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
        <Navbar />
        <div className="container px-6 mx-auto mt-16 text-center relative z-10">
          <h1 className="text-white font-bold text-4xl md:text-6xl pb-5">
            {movie.title} ({formatReleaseYear(movie.releaseDate)})
          </h1>
          <p className="text-white text-xl md:text-2xl">
            {renderDirectors(movie.directors)}
          </p>
          <div className="mt-8 text-white">
            <h2 className="text-2xl">All Reviews</h2>
            {reviews.length === 0 ? (
              <p className="text-white">No reviews found for this movie.</p>
            ) : (
              reviews.map((review) => {
                if (review.IsReply) return null;

                const isLiked = likedReviews[review.ActivityID] || false;
                const isDeletable = deletableReviews[review.ActivityID] || false;

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
                          className={`text-2xl transition-transform duration-200 hover:scale-125 focus:outline-none ${
                            isLiked ? 'text-red-500' : 'text-white'
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
                        
                        {isDeletable && (
                          <button
                            onClick={() => handleDeleteReview(review.ActivityID)}
                            className="ml-2 text-white hover:text-red-500 transition-colors duration-200"
                            title="Delete review"
                          >
                            <svg xmlns="http://www.w3.org/2000/svg" className="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                              <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
                            </svg>
                          </button>
                        )}
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

      {showErrorPopup && (
        <ErrorPopup
          message={error || 'An unexpected error occurred'}
          onClose={closeErrorPopup}
        />
      )}
    </div>
  );
};

export default AllReviewsPage;