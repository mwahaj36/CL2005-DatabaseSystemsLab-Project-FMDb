import React, { useEffect, useState } from 'react';

const ThirdScreenReviews = ({ reviews = [], userId }) => {
  const [movieDetails, setMovieDetails] = useState({});
  const [loading, setLoading] = useState({});

  useEffect(() => {
    // Fetch movie details for each review
    if (reviews && reviews.length > 0) {
      reviews.forEach(review => {
        const movieId = review.movieId || review.MovieID;
        if (movieId && !movieDetails[movieId] && !loading[movieId]) {
          fetchMovieDetails(movieId);
        }
      });
    }
  }, [reviews]);

  const fetchMovieDetails = async (movieId) => {
    try {
      setLoading(prev => ({ ...prev, [movieId]: true }));
      const response = await fetch(`http://localhost:5000/movies/details/${movieId}`);
      
      if (!response.ok) {
        throw new Error(`Failed to fetch movie details for movie ID ${movieId}`);
      }

      const data = await response.json();
      if (data.success && data.movie) {
        setMovieDetails(prev => ({
          ...prev,
          [movieId]: data.movie
        }));
      }
    } catch (error) {
      console.error('Error fetching movie details:', error);
      // Store null to indicate we tried and failed
      setMovieDetails(prev => ({
        ...prev,
        [movieId]: null
      }));
    } finally {
      setLoading(prev => ({ ...prev, [movieId]: false }));
    }
  };

  if (!reviews || reviews.length === 0) {
    return (
      <div className="text-center text-white mt-20">
        <h2 className="text-4xl">No reviews found</h2>
      </div>
    );
  }

  return (
    <section id="ThirdScreenReviews" className="relative z-10 px-4 md:px-0">
      <div className="max-w-6xl mx-auto flex flex-col gap-4">
        {reviews.map((review, index) => {
          const movieId = review.movieId || review.MovieID;
          const movie = movieDetails[movieId];
          const isLoading = loading[movieId];
          
          // Format the date for display
          const activityDate = new Date(review.date || review.ActivityDateTime);
          const formattedDate = activityDate.toLocaleDateString('en-US', {
            month: 'long',
            day: 'numeric',
            year: 'numeric'
          });
          
          // Split date for the calendar-like display
          const [month, day, year] = formattedDate.split(/[\s,]+/);

          return (
            <div
              key={review.id || review.ActivityID || index}
              className="flex items-center bg-darkPurple bg-opacity-90 rounded-2xl shadow-md px-6 py-4 hover:scale-[1.01] transition-transform duration-300"
            >
              <div className="w-12 text-center text-purpleWhite font-semibold text-md leading-tight mr-2">
                <p>{month}</p>
                <p className="text-2xl">{day}</p>
                <p>{year}</p>
              </div>

              {isLoading ? (
                <div className="w-12 h-16 rounded-lg bg-gray-700 animate-pulse"></div>
              ) : (
                <img
                  src={movie?.moviePosterLink || 'https://via.placeholder.com/48x64'}
                  alt={movie?.title ? `${movie.title} Poster` : 'Movie poster'}
                  className="w-12 h-16 rounded-lg object-cover"
                />
              )}

              <div className="flex flex-col ml-4 flex-1">
                {isLoading ? (
                  <>
                    <div className="h-6 w-40 bg-gray-700 rounded animate-pulse mb-2"></div>
                    <div className="h-4 w-20 bg-gray-700 rounded animate-pulse"></div>
                  </>
                ) : (
                  <>
                    <div className="text-white font-bold text-lg flex items-center gap-2">
                      {movie?.title || 'Movie title not available'}{' '}
                      {movie?.releaseDate && (
                        <span className="text-purpleWhite text-base font-medium">
                          ({new Date(movie.releaseDate).getFullYear()})
                        </span>
                      )}
                    </div>
                    {(review.review || review.Review) && (
                      <p className="text-purpleWhite text-sm mt-1">{review.review || review.Review}</p>
                    )}
                  </>
                )}
              </div>

              <div>
                <p className="text-purpleWhite/40 text-xs mt-1">
                  Activity By @ <span className="font-semibold text-purpleWhite/60">{review.username || review.Username || `user${userId}`}</span>
                </p>
                {(review.likes || review.ActivityLikeCount) > 0 && (
                  <p className="text-purpleWhite/40 text-xs mt-1">
                    {review.likes || review.ActivityLikeCount || 0} likes
                  </p>
                )}
              </div>

              {(review.rating || review.Ratings) !== null && (
                <div
                  className="ml-4 px-4 py-5 font-bold text-xl rounded-xl text-center bg-gold text-darkPurple"
                >
                  {review.rating || review.Ratings}
                </div>
              )}
            </div>
          );
        })}
      </div>
    </section>
  );
};

export default ThirdScreenReviews;