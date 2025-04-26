import React from 'react';
import { useRouter } from 'next/router';
import { useAuth } from '@/context/AuthContext';

const LoggedMovies = ({ movies }) => {
  const router = useRouter();
  const { userID } = router.query;
  const { user } = useAuth();

  return (
    <section id="LoggedMovies" className="relative z-10 px-4 md:px-0">
      <h2 className="text-5xl md:text-6xl mt-10 mb-10 text-white font-bold text-center drop-shadow-lg">
        {user?.userID?.toString() === userID
          ? 'Your Logged Movies'
          : `Logged Movies`}
      </h2>
      <div className="max-w-6xl mx-auto flex flex-col gap-4">
        {movies.map((movie, index) => {
          const date = new Date(movie.addedAt).toDateString().split(' ');
          return (
            <div
              key={index}
              className="flex items-center bg-darkPurple bg-opacity-90 rounded-2xl shadow-md px-6 py-4 hover:scale-[1.01] transition-transform duration-300"
            >
              <div className="w-12 text-center text-purpleWhite font-semibold text-md leading-tight mr-2">
                <p>{date[0]}</p>
                <p className="text-2xl">{date[2]}</p>
                <p>{date[1]}</p>
              </div>

              <img
                src={movie.movieposterlink}
                alt="Movie Poster"
                className="w-12 h-16 rounded-lg object-cover"
              />

              <div className="flex flex-col ml-4 flex-1">
                <div className="text-white font-bold text-lg flex items-center gap-2">
                  {movie.title}
                </div>
                {movie.directors?.length > 0 && (
                  <p className="text-purpleWhite text-sm mt-1">
                    Directed by: {movie.directors.join(', ')}
                  </p>
                )}
              </div>

              {user?.userID?.toString() === userID && (
                <div className="ml-auto">
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