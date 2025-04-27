import React, { useState, useEffect } from 'react';
import { useRouter } from 'next/router';
import Navbar from '../../components/Navbar';
import Footer from '../../components/Footer';
import MovieCard from '../../components/MovieCard';
import { useAuth } from '../../context/AuthContext';
import Head from 'next/head';

const UserWatchlistPage = () => {
  const router = useRouter();
  const { userID } = router.query;
  const [movies, setMovies] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [isPrivate, setIsPrivate] = useState(false);
  const [profileUsername, setProfileUsername] = useState('');
  const [backdropUrl, setBackdropUrl] = useState('');
  const { user, token, loading: authLoading } = useAuth();

  useEffect(() => {
    if (!userID || authLoading) return;

    const fetchWatchlist = async () => {
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
          url = `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/watchlist/public/${userID}`;
        } else {
          if (user && parseInt(user.userID) === parseInt(userID)) {
            url = `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/watchlist/${userID}`;
          } else {
            url = `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/watchlist/${userID}`;
          }
        }
    
        const response = await fetch(url, { headers });
        const data = await response.json();
    
        if (data.success) {
          setMovies(data.watchlist || []);
          setProfileUsername(data.username || '');
          
          // Set backdrop URL if available
          if (data.favMovieBg) {
            setBackdropUrl(data.favMovieBg);
          }
    
          if (data.isPrivate && user && parseInt(user.userID) === parseInt(userID)) {
            setIsPrivate(false);
          } else {
            setIsPrivate(data.isPrivate);
          }
        } else {
          const isOwn = user && parseInt(user.userID) === parseInt(userID);
          if (data.message === 'User profile is private') {
            if (!isOwn) {
              setIsPrivate(true);
            }
          } else if (!isOwn) {
            setError(data.message || 'Failed to fetch watchlist');
          } else {
            setMovies([]);
            if (data.username) setProfileUsername(data.username);
          }
        }
      } catch (err) {
        console.error('Error fetching watchlist:', err);
        setError('An error occurred while fetching the watchlist');
      } finally {
        setLoading(false);
      }
    };

    fetchWatchlist();
  }, [userID, token, user, authLoading]);

  const handleLoginRedirect = () => {
    router.push('/login?redirect=' + encodeURIComponent(router.asPath));
  };

  const isOwnWatchlist = user && user.userID === parseInt(userID);

  if (!userID || authLoading) {
    return (
      <div className="flex justify-center items-center h-screen">
        <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-purple-500"></div>
      </div>
    );
  }

  return (
    <>
      <Head>
        <title>{profileUsername ? `${profileUsername}'s Watchlist` : 'Watchlist'} | FMDB</title>
      </Head>

      <section
        className="relative bg-cover bg-center bg-fixed min-h-screen"
        style={{ backgroundImage: backdropUrl ? `url(${backdropUrl})` : "url('https://image.tmdb.org/t/p/original/aCHn2TXYJfzPXQKA6r9mKPbMlUB.jpg')" }}
      >
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
        <div className="relative z-10 container mx-auto p-6">
          <Navbar />

          <div className="relative z-10 pb-20">
            <section className="text-center pt-10">
              <h2 className="text-6xl text-white font-bold text-shadow">
                {profileUsername
                  ? `${profileUsername}'s Watchlist`
                  : 'Watchlist'}
              </h2>
              <p className="text-purple-300 mt-2">
                {loading
                  ? 'Loading...'
                  : isPrivate
                  ? 'This profile is private'
                  : error
                  ? 'Error loading watchlist'
                  : `${movies.length} ${movies.length === 1 ? 'movie' : 'movies'} in watchlist`}
              </p>
            </section>

            {loading ? (
              <div className="flex justify-center items-center h-64">
                <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-purple-500"></div>
              </div>
            ) : isPrivate && !isOwnWatchlist ? (
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
                    <MovieCard key={movie.movieid} movie={movie} />
                  ))}
                </div>
                {!token && (
                  <div className="mt-8 text-center">
                    <p className="text-purple-200 mb-4">Want to create your own watchlist?</p>
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
                    {isOwnWatchlist ? 'Your Watchlist is Empty' : 'No Movies Found'}
                  </h3>
                  <p className="text-purple-200">
                    {isOwnWatchlist
                      ? 'Start adding movies to your watchlist!'
                      : profileUsername
                      ? `${profileUsername} hasn't added any movies yet.`
                      : 'This watchlist is empty.'}
                  </p>
                  {!token && (
                    <button
                      onClick={handleLoginRedirect}
                      className="mt-4 px-4 py-2 bg-purple-600 rounded-lg hover:bg-purple-700 transition-colors"
                    >
                      Log In to Create Your Watchlist
                    </button>
                  )}
                </div>
              </div>
            )}
          </div>

        </div>
        <Footer />
      </section>
    </>
  );
};

export default UserWatchlistPage;