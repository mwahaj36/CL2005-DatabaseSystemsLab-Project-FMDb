import React, { useEffect, useState } from 'react';
import { useRouter } from 'next/router';
import { useAuth } from '@/context/AuthContext';

const LoggedMovies = () => {
  const router = useRouter();
  const { userID } = router.query;
  const { user, token } = useAuth();

  const [userData, setUserData] = useState(null);
  const [movies, setMovies] = useState([]);
  const [errorMessage, setErrorMessage] = useState('');
  const [loading, setLoading] = useState(true);

  const API_BASE = 'http://localhost:5000';

  useEffect(() => {
    const fetchLoggedMovies = async () => {
      if (!userID) return;

      setLoading(true);
      setErrorMessage('');

      const isOwnProfile = user && user.userID?.toString() === userID;

      try {
        const url = isOwnProfile
          ? `${API_BASE}/users/loggedMovies/${userID}`
          : `${API_BASE}/users/loggedMovies/public/${userID}`;

        const headers = isOwnProfile
          ? { Authorization: `Bearer ${token}` }
          : {};

        const res = await fetch(url, { headers });

        if (!res.ok) {
          const data = await res.json();
          throw new Error(data.message || 'Failed to fetch movies');
        }

        const data = await res.json();
        setMovies(data.loggedMovies || []);
        setUserData({ id: userID }); // Simplified userData
      } catch (err) {
        setErrorMessage(err.message);
      } finally {
        setLoading(false);
      }
    };

    fetchLoggedMovies();
  }, [userID, user, token]);

  if (loading) {
    return (
      <div className="text-center text-white mt-20">
        <h2 className="text-4xl">Loading...</h2>
      </div>
    );
  }

  if (errorMessage) {
    return (
      <div className="text-center text-white mt-20">
        <h2 className="text-4xl">{errorMessage}</h2>
      </div>
    );
  }

  return (
    <section id="LoggedMovies" className="relative z-10 px-4 md:px-0">
      <h2 className="text-5xl md:text-6xl mt-10 mb-10 text-white font-bold text-center drop-shadow-lg">
        {user?.userID?.toString() === userID
          ? 'Your Logged Movies'
          : `${userID}'s Logged Movies`}
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

              {/* Optional Rating placeholder (if you plan to add later) */}
              {/* <div className="ml-4 px-4 py-5 font-bold text-xl rounded-xl text-center bg-purpleWhite text-darkPurple">
                {movie.rating ?? 'N/A'}
              </div> */}

              {/* Trash button (if owner) */}
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
