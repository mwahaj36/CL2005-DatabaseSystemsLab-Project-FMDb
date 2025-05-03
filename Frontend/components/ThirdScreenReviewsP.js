import React, { useEffect, useState } from 'react';

const ThirdScreenReviewsP = ({ reviews = [], userId, userType = 'user' }) => {
  const [movieDetails, setMovieDetails] = useState({});
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchMovieDetails = async () => {
      if (!reviews.length) {
        setLoading(false);
        return;
      }

      const newDetails = {};

      for (const review of reviews) {
        const movieId = review.movieId;
        if (movieId && !movieDetails[movieId]) {
          try {
            const response = await fetch(`https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/movies/details/${movieId}`);
            if (response.ok) {
              const data = await response.json();
              newDetails[movieId] = data.movie;
            }
          } catch (error) {
            console.error(`Failed to fetch movie details for ID ${movieId}:`, error);
          }
        }
      }

      if (Object.keys(newDetails).length > 0) {
        setMovieDetails(prev => ({ ...prev, ...newDetails }));
      }

      setLoading(false);
    };

    setLoading(true);
    fetchMovieDetails();
  }, [reviews]);

  if (loading) {
    return (
      <div className="text-center text-white mt-20">
        <h2 className="text-4xl">Loading reviews...</h2>
      </div>
    );
  }

  if (!reviews.length) {
    return (
      <div className="text-center text-white mt-20">
        <h2 className="text-4xl">No reviews found</h2>
      </div>
    );
  }

  return (
    <section id="ThirdScreenReviewsP" className="relative z-10 px-4 md:px-2">
      <div className="max-w-6xl mx-auto flex flex-col gap-4">
        {reviews.map((review) => {
          const movie = movieDetails[review.movieId] || {};
          const hasDate = review.date !== null && review.date !== undefined;
          let month = '', day = '', year = '';

          if (hasDate) {
            const activityDate = new Date(review.date);
            const formattedDate = activityDate.toLocaleDateString('en-US', {
              month: 'long',
              day: 'numeric',
              year: 'numeric'
            });
            [month, day, year] = formattedDate.split(/[\s,]+/);
          }

          return (
            <div
              key={review.id}
              className={`flex flex-col sm:flex-row items-center bg-darkPurple bg-opacity-90 rounded-2xl shadow-md px-4 py-4 hover:scale-[1.01] transition-transform duration-300 ${
                userType === 'critic' ? 'border-l-4 border-gold' : ''
              }`}
            >
              <div className="w-full sm:w-12 text-center text-purpleWhite font-semibold text-sm sm:text-md leading-tight mb-2 sm:mb-0 sm:mr-2">
                {hasDate ? (
                  <>
                    <p>{month}</p>
                    <p className="text-lg sm:text-2xl">{day}</p>
                    <p>{year}</p>
                  </>
                ) : (
                  <>
                    <p>&nbsp;</p>
                    <p className="text-lg sm:text-2xl">&nbsp;</p>
                    <p>&nbsp;</p>
                  </>
                )}
              </div>

              <img
                src={movie.moviePosterLink || 'https://via.placeholder.com/48x64'}
                alt={movie.title ? `${movie.title} Poster` : 'Movie poster'}
                className="w-16 h-20 sm:w-12 sm:h-16 rounded-lg object-cover mb-2 sm:mb-0"
              />

              <div className="flex flex-col ml-0 sm:ml-4 flex-1 text-center sm:text-left">
                <div className="text-white font-bold text-base sm:text-lg flex items-center gap-2">
                  {movie.title || 'Unknown Movie'}{' '}
                  {movie.releaseDate && (
                    <span className="text-purpleWhite text-sm sm:text-base font-medium">
                      ({new Date(movie.releaseDate).getFullYear()})
                    </span>
                  )}
                </div>
                {review.review && (
                  <p className="text-purpleWhite text-xs sm:text-sm mt-1">{review.review}</p>
                )}
              </div>

              {review.likes > 0 && (
                <p className="text-purpleWhite/40 text-xs mt-1 sm:mt-0">
                  {review.likes} likes
                </p>
              )}

              {review.rating !== null && (
                <div className={`mt-2 sm:mt-0 sm:ml-4 px-3 py-4 font-bold text-lg sm:text-xl rounded-xl text-center ${
                  userType === 'critic' ? 'bg-gold text-darkPurple' : 'bg-white text-darkPurple'
                }`}>
                  {review.rating}
                </div>
              )}
            </div>
          );
        })}
      </div>
    </section>
  );
};

export default ThirdScreenReviewsP;
