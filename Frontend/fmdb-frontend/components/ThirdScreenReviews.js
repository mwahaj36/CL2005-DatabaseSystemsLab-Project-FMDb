import React from 'react';

const ThirdScreenReviews = ({ reviews = [] }) => {
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
          // Format the date for display
          const activityDate = new Date(review.ActivityDateTime);
          const formattedDate = activityDate.toLocaleDateString('en-US', {
            month: 'long',
            day: 'numeric',
            year: 'numeric'
          });
          
          // Split date for the calendar-like display
          const [month, day, year] = formattedDate.split(/[\s,]+/);

          return (
            <div
              key={review.ActivityID || index}
              className="flex items-center bg-darkPurple bg-opacity-90 rounded-2xl shadow-md px-6 py-4 hover:scale-[1.01] transition-transform duration-300"
            >
              <div className="w-12 text-center text-purpleWhite font-semibold text-md leading-tight mr-2">
                <p>{month}</p>
                <p className="text-2xl">{day}</p>
                <p>{year}</p>
              </div>

              <img
                src={review.MoviePosterLink || 'https://via.placeholder.com/48x64'}
                alt={`${review.Title} Poster`}
                className="w-12 h-16 rounded-lg object-cover"
              />

              <div className="flex flex-col ml-4 flex-1">
                <div className="text-white font-bold text-lg flex items-center gap-2">
                  {review.Title}{' '}
                  <span className="text-purpleWhite text-base font-medium">
                    ({new Date(review.ReleaseDate).getFullYear()})
                  </span>
                </div>
                {review.Review && (
                  <p className="text-purpleWhite text-sm mt-1">{review.Review}</p>
                )}
              </div>

              <div>
                <p className="text-purpleWhite/40 text-xs mt-1">
                  Activity By @ <span className="font-semibold text-purpleWhite/60">{review.Username}</span>
                </p>
                {review.ActivityLikeCount > 0 && (
                  <p className="text-purpleWhite/40 text-xs mt-1">
                    {review.ActivityLikeCount} likes
                  </p>
                )}
              </div>

              {review.Ratings !== null && (
                <div
                  className="ml-4 px-4 py-5 font-bold text-xl rounded-xl text-center bg-gold text-darkPurple"
                >
                  {review.Ratings}
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