import { useRouter } from 'next/router';
import { useEffect, useState } from 'react';
import ThirdScreenReviewsP from '@/components/ThirdScreenReviewsP';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import { useAuth } from '@/context/AuthContext';
import Head from 'next/head';

const LoggedMoviesPage = () => {
  const router = useRouter();
  const { userID } = router.query;
  const { user, token, loading: authLoading } = useAuth();

  const [reviews, setReviews] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [username, setUsername] = useState('');
  const [backdropUrl, setBackdropUrl] = useState('https://image.tmdb.org/t/p/original/v8Nf6Y1qL1Q3PWTBezXNPPaXqza.jpg');
  const [isPrivateProfile, setIsPrivateProfile] = useState(false);

  useEffect(() => {
    if (!userID || authLoading) return;

    const fetchLoggedMovies = async () => {
      setLoading(true);
      setError(null);
      setIsPrivateProfile(false);

      try {
        const headers = {};
        if (token) {
          headers['Authorization'] = `Bearer ${token}`;
        }

        // Use private endpoint if token exists, otherwise use public endpoint
        const url = token
          ? `http://localhost:5000/users/loggedMovies/${userID}`
          : `http://localhost:5000/users/loggedMovies/public/${userID}`;

        const response = await fetch(url, { headers });
        const data = await response.json();

        if (!response.ok) {
          if (response.status === 403) {
            setIsPrivateProfile(true);
            throw new Error(data.message || 'This profile is private');
          }
          throw new Error(data.message || 'Failed to fetch logged movies');
        }

        // Transform the API response to match ThirdScreenReviewsP format
        const transformedReviews = data.loggedMovies.map(movie => ({
          id: `${movie.movieid}-${new Date(movie.addedAt).getTime()}`,
          movieId: movie.movieid,
          date: movie.addedAt,
          review: movie.review,
          rating: movie.ratings,
          likes: 0, // Default to 0 if not available
          title: movie.title,
          poster: movie.movieposterlink,
          directors: movie.directors
        }));

        setReviews(transformedReviews);
        setUsername(data.username || '');
        if (data.favMovieBg) {
          setBackdropUrl(data.favMovieBg);
        }
      } catch (err) {
        console.error('Error fetching logged movies:', err);
        setError(err.message || 'An error occurred while fetching movies');
      } finally {
        setLoading(false);
      }
    };

    fetchLoggedMovies();
  }, [userID, token, authLoading]);

  if (!userID || authLoading) {
    return (
      <div className="flex justify-center items-center h-screen">
        <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-purple-500"></div>
      </div>
    );
  }

  // Determine if the current user is a critic (adjust based on your user model)
  const getUserType = () => {
    return user?.role === 'critic' ? 'critic' : 'user';
  };

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
              {isPrivateProfile && !token && (
                <p className="mt-4">Please sign in to view this profile if you have permission</p>
              )}
              {isPrivateProfile && token && (
                <p className="mt-4">You don't have permission to view this private profile</p>
              )}
            </div>
          ) : (
            <div>
              <h1 className="text-4xl font-bold text-white mb-8 text-center">
                {username}'s Logged Movies
              </h1>
              <ThirdScreenReviewsP 
                reviews={reviews} 
                userId={userID}
                userType={getUserType()}
              />
            </div>
          )}

          <Footer />
        </div>
      </section>
    </>
  );
};

export default LoggedMoviesPage;