import { useRouter } from 'next/router';
import { useEffect, useState } from 'react';
import Navbar from '../../components/Navbar';
import Footer from '../../components/Footer';
import movieData from '../../data/FMDBDatabase.json'; // Movie data
import activity from '../../data/activity'; // Activity data

const AllReviews = () => {
  const router = useRouter();
  const { slug } = router.query; // Extract movie details from the URL

  const [movieData, setMovieData] = useState(null);
  const [reviews, setReviews] = useState([]);
  
  // Fetch movie data and reviews based on movieID
  useEffect(() => {
    if (slug) {
      const movie = movieData.find((movie) => movie.MovieID === slug); // Find movie based on MovieID
      if (movie) {
        setMovieData(movie); // Set the movie data for backdrop and details
        
        // Get reviews from activity.js where movieID matches
        const movieReviews = activity.filter((review) => review.movieID === slug && !review.isReply); // Fetch reviews for the movie
        setReviews(movieReviews); // Set the reviews for this movie
      }
    }
  }, [slug]);

  const renderReplies = (parentReviewId) => {
    return reviews
      .filter((review) => review.replyID === parentReviewId) // Filter replies based on replyID
      .map((reply) => (
        <div key={reply.activityID} className="ml-8 mt-4 p-4 bg-gray-800 rounded-lg">
          <p className="text-gray-400">{reply.reviewText}</p>
          <p className="text-purpleWhite font-bold mt-2 text-md">@{reply.userID}</p>
        </div>
      ));
  };

  return (
    <div className="relative bg-cover bg-center bg-fixed">
      {movieData && (
        <div
          className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"
          style={{ backgroundImage: `url(${movieData.Backdrop})` }}
        ></div>
      )}

      <Navbar />

      {/* Main Content */}
      <section className="relative z-10 mt-5 px-4 md:px-20">
        {/* Movie Info Header (Wider & Centered) */}
        <div className="max-w-7xl mx-auto text-center mb-10">
          <h1 className="text-white text-5xl md:text-7xl font-bold">
            {movieData ? movieData.Title : 'Loading...'}{' '}
            <span className="text-purpleWhite font-semibold text-3xl md:text-5xl">
              ({movieData ? movieData.ReleaseDate.slice(0, 4) : 'Loading...'})
            </span>
          </h1>
          <p className="text-purpleWhite text-2xl md:text-3xl font-semibold mt-2">
            Directed by {movieData ? movieData.Director : 'Loading...'}
          </p>
        </div>

        {/* Reviews Heading */}
        <h2 className="text-white text-4xl md:text-5xl font-bold text-center mb-10">Reviews</h2>

        {/* All Reviews */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-8 max-w-7xl mx-auto">
          {reviews.length > 0 ? (
            reviews.map((review) => (
              <div key={review.activityID} className="bg-black bg-opacity-60 p-6 rounded-3xl shadow-md hover:scale-[1.02] transition-transform duration-300 relative">
                <div className="flex items-start space-x-6">
                  <div className="bg-purpleWhite font-bold text-2xl md:text-3xl px-6 py-9 rounded-xl shadow-inner">{review.rating}</div>
                  <div className="text-left flex-1">
                    <p className="text-white text-lg md:text-xl italic">{review.reviewText}</p>
                    <p className="text-purpleWhite font-bold mt-3 text-md">@{review.userID}</p>
                  </div>
                </div>
                <div className="absolute bottom-4 right-4">
                  <button className="text-purpleWhite hover:text-pink-500 text-2xl md:text-3xl transition-transform duration-200 hover:scale-125 focus:outline-none">
                    <i className="fas fa-heart"></i>
                  </button>
                </div>

                {/* Render replies indented */}
                {renderReplies(review.activityID)}
              </div>
            ))
          ) : (
            <p className="text-white">No reviews available for this movie.</p>
          )}
        </div>
      </section>

      <Footer />
    </div>
  );
};

export default AllReviews;
