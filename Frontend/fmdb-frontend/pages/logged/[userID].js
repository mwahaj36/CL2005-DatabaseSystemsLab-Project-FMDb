import { useRouter } from 'next/router';
import { useEffect, useState } from 'react';
import LoggedMovies from '../../components/LoggedMovies';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import { useAuth } from '@/context/AuthContext';

const LoggedMoviesPage = () => {
  const router = useRouter();
  const { userID } = router.query;
  const { user, token } = useAuth();

  const [movies, setMovies] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  const backdropUrl = 'https://image.tmdb.org/t/p/original/v8Nf6Y1qL1Q3PWTBezXNPPaXqza.jpg';

  useEffect(() => {
    if (!userID) return;

    const fetchMovies = async () => {
      setLoading(true);
      setError(null);

      try {
        let url = '';
        let headers = {};

        // If logged in user is viewing their own page, use private API
        if (user && user.userID === userID) {
          url = `http://localhost:5000/users/loggedMovies/${userID}`;
          headers = {
            Authorization: `Bearer ${token}`,
          };
        } else {
          // Else use public endpoint
          url = `http://localhost:5000/users/loggedMovies/public/${userID}`;
        }

        const res = await fetch(url, { headers });
        const data = await res.json();

        if (!data.success) {
          throw new Error(data.message || 'Failed to fetch logged movies');
        }

        setMovies(data.loggedMovies);
      } catch (err) {
        setError(err.message || 'An error occurred');
      } finally {
        setLoading(false);
      }
    };

    fetchMovies();
  }, [userID, user, token]);

  if (!userID) {
    return <p className="text-white">Loading user ID...</p>;
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
          <p className="text-red-500 text-center">{error}</p>
        ) : (
          <LoggedMovies userID={userID} movies={movies} />
        )}

        <Footer />
      </div>
    </section>
  );
};

export default LoggedMoviesPage;
