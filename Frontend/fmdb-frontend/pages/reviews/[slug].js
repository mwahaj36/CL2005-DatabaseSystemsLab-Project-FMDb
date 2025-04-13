import React, { useState, useContext } from 'react';
import { useRouter } from 'next/router';

import movieData from '../../data/FMDBDatabase.json'; // Movie data
import activity from '../../data/activity.js'; // Activity data
import users from '../../data/Users'; // no destructuring
import Navbar from '../../components/Navbar';
import Footer from '../../components/Footer';
import { AuthContext } from '../../context/AuthContext'; // Import AuthContext

const AllReviewsPage = () => {
  const router = useRouter();
  const { slug } = router.query; // Get movieID from URL

  if (!slug) return <div>Loading...</div>;

  // Find the movie based on movieID
  const movie = movieData.find((m) => m.MovieID === slug);

  if (!movie) {
    return <div>Movie not found</div>;
  }

  // Safety check: Ensure users data is available
  if (!users || !Array.isArray(users)) {
    return <div>Error: Users data is unavailable or malformed.</div>;
  }

  const { user } = useContext(AuthContext); // Get current logged-in user from context
  const [likedReviews, setLikedReviews] = useState({});
  const [newReply, setNewReply] = useState({}); // Store new replies

  // Filter and map reviews based on movieID
  const reviewsForMovie = activity
    .filter((a) => a.movieID === movie.MovieID && !a.isReply) // Only include reviews (not replies)
    .map((a) => {
      // Find the user for each review, safely handle missing user data
      const user = users.find((u) => u.userID === a.userID);

      return {
        ...a,
        userType: user?.userType || 'user',
        fullName: user?.fullName || 'Unknown User',
        profilePic: user?.profilePic || '/default-pic.jpg',
      };
    });

  // Handle like button click
  const handleLikeClick = (reviewID) => {
    if (!user) {
      alert('Please log in to like a review!');
      return;
    }

    setLikedReviews((prevState) => ({
      ...prevState,
      [reviewID]: !prevState[reviewID],
    }));
  };

  // Handle reply input change
  const handleReplyChange = (reviewID, e) => {
    setNewReply((prevState) => ({
      ...prevState,
      [reviewID]: e.target.value,
    }));
  };

  // Handle reply submission
  const handleReplySubmit = (reviewID) => {
    if (!user) {
      alert('Please log in to submit a reply!');
      return;
    }

    const replyText = newReply[reviewID]?.trim();
    if (!replyText) return;

    // Add the new reply to the activity data
    const newReplyData = {
      activityID: `${Math.random() * 100000}`, // Generate a unique activity ID
      movieID: movie.MovieID,
      userID: user.userID,
      reviewText: replyText,
      isReply: true,
      replyID: reviewID, // Link this reply to the review it is replying to
      timestamp: new Date().toISOString(),
    };

    activity.push(newReplyData); // Add the reply to activity (This could be a state update or backend call in a real app)

    // Clear the reply input field
    setNewReply((prevState) => ({
      ...prevState,
      [reviewID]: '',
    }));
  };

// Function to render replies under reviews
const renderReplies = (reviewID) => {
  // Filter for replies where replyID matches the reviewID
  const replies = activity.filter((a) => a.isReply && a.replyID === reviewID);

  return replies.length > 0 ? (
    replies.map((reply) => {
      // Find the original review using the replyID
      const originalReview = activity.find((a) => a.activityID === reply.replyID);
      const originalReviewer = users.find((u) => u.userID === originalReview?.userID);  // The original reviewer's userID

      const user = users.find((u) => u.userID === reply.userID);  // The reply author

      return (
        <div key={reply.activityID} className="pl-8 mt-4 items-center text-left ml-20 p-4 rounded-lg  ">

          {/* Display the reply author's profile picture */}
          <div className="flex items-center space-x-4">
            <img
              src={user?.profilePic || '/default-pic.jpg'} // Use default picture if not available
              alt={user?.userID || 'Unknown User'}
              className="w-12 h-12 mt-2 rounded-md object-cover" // Square profile picture
            />

            <div>
              {/* Display the reply author's userID */}
              <p className="text-purpleWhite font-bold text-xl mt-2">
                {user?.userID || 'Unknown User'}
              </p>

              {/* Display the original reviewer's userID (@OGauthor) and the reply text */}
              <p className="text-white text-lg mt-2">
                <span className="text-purpleWhite font-bold"></span> {reply.reviewText}
              </p>
            </div>
          </div>
        </div>
      );
    })
  ) : (
    <p className="text-white text-lg mt-4">No replies yet.</p>
  );
};


  return (
    <div>
      <section
        className="relative bg-cover bg-center bg-fixed min-h-screen"
        style={{ backgroundImage: `url(${movie.Backdrop})` }}
      >
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
        <Navbar />
        <div className="container px-6 mx-auto mt-16 text-center relative z-10">
          <h1 className="text-white font-bold text-6xl pb-5">{movie.Title} ({movie.ReleaseDate.slice(-4)})</h1>
          <p className="text-white text-2xl">Directed by {movie.Director}</p>
          <div className="mt-8 text-white">
            <h2 className="text-2xl">All Reviews</h2>
            {/* Render the reviews and their replies */}
            {reviewsForMovie.length === 0 ? (
              <p>No reviews found for this movie.</p>
            ) : (
              reviewsForMovie.map((review) => {
                const hasLiked = likedReviews[review.activityID]; // Check if current review is liked by the user
                return (
<div key={review.activityID} className="bg-black bg-opacity-40 p-6 mt-6 rounded-3xl shadow-md hover:scale-105 transition-transform duration-300 max-w-5xl mx-auto">
  <div className="flex items-center space-x-4 relative">

    {/* Reviewer Profile Picture */}
    <img
      src={review.profilePic || '/default-pic.jpg'}
      alt={review.fullName}
      className="w-16 h-16 md:w-20 md:h-20 object-cover rounded-xl"
    />

    {/* Rating */}
    <div
      className={`font-bold text-darkPurple text-xl md:text-2xl px-5 py-8 rounded-xl shadow-inner ${review.userType === 'verified critic' ? 'bg-gold' : 'bg-purpleWhite'}`}
    >
      {review.rating % 1 === 0 && review.rating !== 10 ? `${review.rating}.0` : review.rating}
    </div>

    {/* Review Content */}
    <div className="text-center md:text-left flex-1">
      <p className="text-white text-md md:text-lg italic">{review.reviewText}</p>
      <p className="text-purpleWhite font-bold mt-2 text-sm">{review.userID}</p>
    </div>

    {/* Like Button */}
    <div className="absolute bottom-4 right-4">
      <button
        onClick={() => handleLikeClick(review.activityID)}
        className={`text-2xl md:text-3xl transition-transform duration-200 hover:scale-125 focus:outline-none ${hasLiked ? 'text-red-500' : 'text-white'}`}
      >
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

  {/* Replies */}
  {renderReplies(review.activityID)}

  {/* Reply Form */}
  <div className="mt-4">
    <textarea
      value={newReply[review.activityID] || ''}
      onChange={(e) => handleReplyChange(review.activityID, e)}
      className="w-full p-2 bg-black bg-opacity-50 text-white rounded-md"
      placeholder="Write a reply..."
    />
    <button
      onClick={() => handleReplySubmit(review.activityID)}
      className="mt-2 px-4 py-2 bg-purpleWhite text-darkPurple rounded-lg"
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
