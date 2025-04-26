import React, { useEffect, useState } from 'react';

const ThirdScreenReviewsP = ({ reviews = [], userId, userType = 'user' }) => {
  const [movieDetails, setMovieDetails] = useState({});

  useEffect(() => {
    // Fetch movie details for each review when component mounts or reviews change
    const fetchMovieDetails = async () => {
      const newDetails = {};
      
      for (const review of reviews) {
        const movieId = review.movieId;
        if (movieId && !movieDetails[movieId]) {
          try {
            const response = await fetch(`http://localhost:5000/movies/details/${movieId}`);
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
    };

    fetchMovieDetails();
  }, [reviews]);

  if (!reviews || reviews.length === 0) {
    return (
      <div className="text-center text-white mt-20">
        <h2 className="text-4xl">No reviews found</h2>
      </div>
    );
  }

  return (
    <section id="ThirdScreenReviewsP" className="relative z-10 px-4 md:px-0">
      <div className="max-w-6xl mx-auto flex flex-col gap-4">
        {reviews.map((review) => {
          const movie = movieDetails[review.movieId] || {};
          const activityDate = new Date(review.date);
          const formattedDate = activityDate.toLocaleDateString('en-US', {
            month: 'long',
            day: 'numeric',
            year: 'numeric'
          });
          const [month, day, year] = formattedDate.split(/[\s,]+/);

          return (
            <div
              key={review.id}
              className={`flex items-center bg-darkPurple bg-opacity-90 rounded-2xl shadow-md px-6 py-4 hover:scale-[1.01] transition-transform duration-300 ${
                userType === 'critic' ? 'border-l-4 border-gold' : ''
              }`}
            >
              <div className="w-12 text-center text-purpleWhite font-semibold text-md leading-tight mr-2">
                <p>{month}</p>
                <p className="text-2xl">{day}</p>
                <p>{year}</p>
              </div>

              <img
                src={movie.moviePosterLink || 'https://via.placeholder.com/48x64'}
                alt={movie.title ? `${movie.title} Poster` : 'Movie poster'}
                className="w-12 h-16 rounded-lg object-cover"
              />

              <div className="flex flex-col ml-4 flex-1">
                <div className="text-white font-bold text-lg flex items-center gap-2">
                  {movie.title || 'Unknown Movie'}{' '}
                  {movie.releaseDate && (
                    <span className="text-purpleWhite text-base font-medium">
                      ({new Date(movie.releaseDate).getFullYear()})
                    </span>
                  )}
                </div>
                {review.review && (
                  <p className="text-purpleWhite text-sm mt-1">{review.review}</p>
                )}
              </div>

              {review.likes > 0 && (
                <p className="text-purpleWhite/40 text-xs mt-1">
                  {review.likes} likes
                </p>
              )}

              {review.rating !== null && (
                <div className={`ml-4 px-4 py-5 font-bold text-xl rounded-xl text-center ${
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