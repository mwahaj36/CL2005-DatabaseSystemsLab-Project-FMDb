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
        const headers = {};

        // Add authorization if user is logged in
        if (token) {
          headers['Authorization'] = `Bearer ${token}`;
        }

        // Determine the correct API endpoint based on profile privacy and login status
        let url = '';

        if (!token) {
          // Public liked movies for non-logged-in users
          url = `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/loggedMovies/public/${userID}`;
        } else {
          // Case 1: If the logged-in user is viewing their own liked movies, allow them to see even if it's private
          if (user && parseInt(user.userID) === parseInt(userID)) {
            url = `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/loggedMovies/${userID}`; // Allow access to own liked movies
          } else {
            // Case 2: For other users, use the general endpoint
            url = `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/loggedMovies/${userID}`;
          }
        }

        console.log('Fetching data from:', url); // Log the URL being called

        const response = await fetch(url, { headers });
        const data = await response.json();

        // Handle any non-OK responses from the backend
        if (!response.ok) {
          throw new Error(data.message || 'Failed to fetch logged movies');
        }

        setMovies(data.loggedMovies || []);
      } catch (err) {
        console.error('Error fetching movies:', err);
        setError(err.message || 'An error occurred while fetching movies');
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
