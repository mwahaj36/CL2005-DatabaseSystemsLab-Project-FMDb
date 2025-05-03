import React, { useState, useEffect } from 'react';
import { useRouter } from 'next/router';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import MovieCard from '@/components/MovieCard';
import { useAuth } from '@/context/AuthContext';
import Head from 'next/head';
const UserWatchedMoviesPage = () => {
  const router = useRouter();
  const { userID } = router.query;
  const [movies, setMovies] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [isPrivate, setIsPrivate] = useState(false);
  const [profileUsername, setProfileUsername] = useState(null);
  const [backdropUrl, setBackdropUrl] = useState('');
  const { user, token } = useAuth();

  useEffect(() => {
    if (!router.isReady || !userID) return;

    const fetchWatchedMovies = async () => {
      setLoading(true);
      setError(null);
      setIsPrivate(false);

      try {
        const headers = {};
        
        if (token) {
          headers['Authorization'] = `Bearer ${token}`;
        }
        
        let url = '';
        
        if (!token) {
          url = `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/watchedMovies/public/${userID}`;
        } else {
          if (user && parseInt(user.userID) === parseInt(userID)) {
            url = `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/watchedMovies/${userID}`;
          } else {
            url = `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/watchedMovies/${userID}`;
          }
        }
        
        console.log('Fetching data from:', url);
        
        const response = await fetch(url, { headers });
        const data = await response.json();
        
        if (response.status === 403) {
          setIsPrivate(true);
          throw new Error(data.message || 'User profile is private');
        }

        if (!response.ok) {
          throw new Error(data.message || 'Failed to fetch watched movies');
        }

        if (data.success) {
          setMovies(data.watchedMovies || []);
          if (data.username) setProfileUsername(data.username);
          if (data.favMovieBg) setBackdropUrl(data.favMovieBg);
          
          if (data.isPrivate && user && parseInt(user.userID) === parseInt(userID)) {
            setIsPrivate(false);
          } else {
            setIsPrivate(data.isPrivate || false);
          }
        } else {
          const isOwn = user && parseInt(user.userID) === parseInt(userID);
          if (data.message === 'User profile is private') {
            if (!isOwn) setIsPrivate(true);
          } else if (!isOwn) {
            setError(data.message || 'Failed to fetch watched movies');
          } else {
            setMovies([]);
            if (data.username) setProfileUsername(data.username);
          }
        }
      } catch (err) {
        console.error('Error fetching watched movies:', err);
        setError(err.message || 'An error occurred while fetching the watched movies');
      } finally {
        setLoading(false);
      }
    };

    fetchWatchedMovies();
  }, [userID, token, user, router.isReady]);

  const handleLoginRedirect = () => {
    router.push('/login?redirect=' + encodeURIComponent(router.asPath));
  };

  const isOwnWatchedMovies = user && user.userID === parseInt(userID);

  return (
    <> 
    <Head>
    <title>{profileUsername ? `${profileUsername}'s Watched Movies` : 'User Watched Movies'}</title>
    </Head>

    <div className="relative min-h-screen">
      <div
        className="relative bg-cover bg-center bg-fixed"
        style={{
          backgroundImage: `url('${backdropUrl}')`,
        }}
      >
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
        <Navbar />

        <div className="relative z-10 pb-20">
          <section className="text-center pt-10">
            <h2 className="text-6xl text-white font-bold text-shadow">
              {profileUsername
                ? `${profileUsername}'s Watched Movies`
                : 'Watched Movies'}
            </h2>
            <p className="text-purple-300 mt-2">
              {loading
                ? 'Loading...'
                : isPrivate
                ? 'This profile is private'
                : error
                ? 'Error loading watched movies'
                : `${movies.length} ${movies.length === 1 ? 'movie' : 'movies'} watched`}
            </p>
          </section>

          {loading ? (
            <div className="flex justify-center items-center h-64">
              <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-purple-500"></div>
            </div>
          ) : isPrivate && !isOwnWatchedMovies ? (
            <div className="flex justify-center items-center h-64">
              <div className="text-center p-6 bg-darkPurple bg-opacity-90 rounded-lg max-w-md">
                <h3 className="text-xl text-white font-semibold mb-2">Private Profile</h3>
                <p className="text-purple-200 mb-4">
                  {token
                    ? "This user has set their profile to private."
                    : "This profile is private. Log in to see if you have access."}
                </p>
                {!token && (
                  <button
                    onClick={handleLoginRedirect}
                    className="mt-2 px-4 py-2 bg-purple-600 rounded-lg hover:bg-purple-700 transition-colors"
                  >
                    Log In
                  </button>
                )}
              </div>
            </div>
          ) : error ? (
            <div className="flex justify-center items-center h-64">
              <div className="text-center p-6 bg-darkPurple bg-opacity-90 rounded-lg max-w-md">
                <h3 className="text-xl text-white font-semibold mb-2">Error</h3>
                <p className="text-purple-200">{error}</p>
                <button
                  onClick={() => window.location.reload()}
                  className="mt-4 px-4 py-2 bg-purple-600 rounded-lg hover:bg-purple-700 transition-colors"
                >
                  Try Again
                </button>
              </div>
            </div>
          ) : movies.length > 0 ? (
            <>
              <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-6 px-4 sm:px-6 lg:px-8">
                {movies.map((movie) => (
                  <MovieCard 
                    key={movie.movieid} 
                    movie={movie} 
                    showDateAdded={isOwnWatchedMovies}
                  />
                ))}
              </div>
              {!token && (
                <div className="mt-8 text-center">
                  <p className="text-purple-200 mb-4">Want to track your own watched movies?</p>
                  <button
                    onClick={handleLoginRedirect}
                    className="px-6 py-2 bg-purple-600 rounded-lg hover:bg-purple-700 transition-colors text-white font-medium"
                  >
                    Sign Up / Log In
                  </button>
                </div>
              )}
            </>
          ) : (
            <div className="flex justify-center items-center h-64">
              <div className="text-center p-6 bg-darkPurple bg-opacity-90 rounded-lg max-w-md">
                <h3 className="text-xl text-white font-semibold mb-2">
                  {isOwnWatchedMovies ? 'Your Watched List is Empty' : 'No Movies Found'}
                </h3>
                <p className="text-purple-200">
                  {isOwnWatchedMovies
                    ? 'Start watching movies to add them to your list!'
                    : profileUsername
                    ? `${profileUsername} hasn't watched any movies yet.`
                    : 'This watched list is empty.'}
                </p>
                {!token && (
                  <button
                    onClick={handleLoginRedirect}
                    className="mt-4 px-4 py-2 bg-purple-600 rounded-lg hover:bg-purple-700 transition-colors"
                  >
                    Log In to Track Movies
                  </button>
                )}
              </div>
            </div>
          )}
        </div>

      </div>
      <Footer />
    </div>
    </>
   
  );
};

export default UserWatchedMoviesPage;