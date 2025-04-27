import { useRouter } from 'next/router';
import { useEffect, useState } from 'react';
import LoggedMovies from '../../components/LoggedMovies';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import { useAuth } from '@/context/AuthContext';
import Head from 'next/head';

const LoggedMoviesPage = () => {
  const router = useRouter();
  const { userID } = router.query;
  const { user, token, loading: authLoading } = useAuth();

  const [movies, setMovies] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [username, setUsername] = useState('');
  const [backdropUrl, setBackdropUrl] = useState('https://image.tmdb.org/t/p/original/v8Nf6Y1qL1Q3PWTBezXNPPaXqza.jpg');

  useEffect(() => {
    if (!userID || authLoading) return;

    const fetchMovies = async () => {
      setLoading(true);
      setError(null);

      try {
        const headers = {};

        if (token) {
          headers['Authorization'] = `Bearer ${token}`;
        }

        const url = token
          ? `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/loggedMovies/${userID}`
          : `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/watchedMovies/public/${userID}`;

        console.log('Fetching data from:', url);

        const response = await fetch(url, { headers });
        const data = await response.json();

        if (response.status === 403) {
          throw new Error(data.message || 'This profile is private');
        }

        if (!response.ok) {
          throw new Error(data.message || 'Failed to fetch movies');
        }

        setMovies(data.loggedMovies || data.watchedMovies || []);
        setUsername(data.username || '');
        if (data.favMovieBg) {
          setBackdropUrl(data.favMovieBg);
        }
      } catch (err) {
        console.error('Error fetching movies:', err);
        setError(err.message || 'An error occurred while fetching movies');
      } finally {
        setLoading(false);
      }
    };

    fetchMovies();
  }, [userID, token, authLoading]);

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
        <title>{username ? `${username}'s Logged Movies` : 'Logged Movies'} | FMDB</title>
      </Head>

      <section
        className="relative bg-cover bg-center bg-fixed min-h-screen"
        style={{ backgroundImage: `url(${backdropUrl})` }}
      >
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
        <div className="relative z-10 container mx-auto p-6">
          <Navbar />

          {loading ? (
            <div className="flex justify-center items-center h-64">
              <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-purple-500"></div>
            </div>
          ) : error ? (
            <div className="text-center text-white mt-20">
              <h2 className="text-4xl">{error}</h2>
              {error === 'This profile is private' && token && (
                <p className="mt-4">You might not have permission to view this profile</p>
              )}
              {error === 'This profile is private' && !token && (
                <p className="mt-4">Please sign in to view this profile if you have permission</p>
              )}
            </div>
          ) : (
            <div>
              <h1 className="text-4xl font-bold text-white mb-8 text-center">
                {username}'s Logged Movies
              </h1>
              <LoggedMovies movies={movies} />
            </div>
          )}

          <Footer />
        </div>
      </section>
    </>
  );
};

export default LoggedMoviesPage;
