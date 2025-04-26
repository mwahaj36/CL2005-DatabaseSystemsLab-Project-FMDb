import { useRouter } from 'next/router';
import { useEffect, useState } from 'react';
import LoggedMovies from '../../components/LoggedMovies';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import { useAuth } from '@/context/AuthContext';

const LoggedMoviesPage = () => {
  const router = useRouter();
  const { userID } = router.query;
  const { user, token, loading: authLoading } = useAuth();

  const [movies, setMovies] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  const backdropUrl = 'https://image.tmdb.org/t/p/original/v8Nf6Y1qL1Q3PWTBezXNPPaXqza.jpg';

  useEffect(() => {
    if (!userID || authLoading) return;

    const fetchMovies = async () => {
      setLoading(true);
      setError(null);

      try {
        // Ensure user and token are present
        if (!user || !token) {
          setError('User not authenticated.');
          return;
        }

        const isOwnProfile = user && user.userID?.toString() === userID;

        console.log('User Profile Check:', { isOwnProfile, userID, user });

        const url = isOwnProfile
          ? `http://localhost:5000/users/loggedMovies/${userID}`
          : `http://localhost:5000/users/loggedMovies/public/${userID}`;

        const headers = isOwnProfile
          ? { Authorization: `Bearer ${token}` }
          : {};

        console.log('Fetching URL:', url, 'Headers:', headers);

        const res = await fetch(url, { headers });
        const data = await res.json();

        if (!res.ok) {
          throw new Error(data.message || 'Failed to fetch logged movies');
        }

        setMovies(data.loggedMovies || []);
      } catch (err) {
        console.error('Error fetching movies:', err);
        setError(err.message || 'This account is private');
      } finally {
        setLoading(false);
      }
    };

    fetchMovies();
  }, [userID, user, token, authLoading]);

  if (!userID || authLoading) {
    return <p className="text-white text-center mt-10">Loading...</p>;
  }

  return (
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
          </div>
        ) : (
          <LoggedMovies movies={movies} />
        )}

        <Footer />
      </div>
    </section>
  );
};

export default LoggedMoviesPage;
