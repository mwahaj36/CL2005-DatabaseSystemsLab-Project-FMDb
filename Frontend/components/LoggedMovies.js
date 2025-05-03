import React from 'react';
import { useRouter } from 'next/router';
import { useAuth } from '@/context/AuthContext';

const LoggedMovies = ({ movies }) => {
  const router = useRouter();
  const { userID } = router.query;
  const { user } = useAuth();

  return (
    <section id="LoggedMovies" className="relative z-10 px-4 md:px-0">
      <div className="max-w-6xl mx-auto flex flex-col gap-4">
        {movies.map((movie, index) => {
          const date = new Date(movie.addedAt).toDateString().split(' ');
          return (
            <div
              key={index}
              className="flex flex-col sm:flex-row items-center bg-darkPurple bg-opacity-90 rounded-2xl shadow-md px-4 py-4 hover:scale-[1.01] transition-transform duration-300"
            >
              <div className="w-full sm:w-auto text-center text-purpleWhite font-semibold text-md leading-tight mb-2 sm:mb-0 sm:mr-4">
                <p>{date[0]}</p>
                <p className="text-2xl">{date[2]}</p>
                <p>{date[1]}</p>
              </div>

              <img
                src={movie.movieposterlink}
                alt="Movie Poster"
                className="w-24 h-32 rounded-lg object-cover mb-2 sm:mb-0 sm:mr-4"
              />

              <div className="flex flex-col flex-1 text-center sm:text-left">
                <div className="text-white font-bold text-lg flex items-center justify-center sm:justify-start gap-2">
                  {movie.title}
                </div>
                {movie.directors?.length > 0 && (
                  <p className="text-purpleWhite text-sm mt-1">
                    Directed by: {movie.directors.join(', ')}
                  </p>
                )}
              </div>

              {user?.userID?.toString() === userID && (
                <div className="mt-2 sm:mt-0 sm:ml-auto">
                  <button className="text-purpleWhite hover:text-purple text-xl">
                    <i className="fas fa-trash-alt text-2xl"></i>
                  </button>
                </div>
              )}
            </div>
          );
        })}
      </div>
    </section>
  );
};

export default LoggedMovies;