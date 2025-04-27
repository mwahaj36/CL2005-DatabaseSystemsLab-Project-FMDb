import React, { useState, useEffect } from 'react';
import { useRouter } from 'next/router';
import { useAuth } from '@/context/AuthContext';
import CastAndCrew from '../../components/CastAndCrew';
import TrendingReviews from '../../components/TrendingReviews';
import Navbar from '../../components/Navbar';
import Footer from '../../components/Footer';
import MovieHero from '../../components/MovieHero';

const MoviePage = () => {
  const router = useRouter();
  const { movieID } = router.query;
  const { user } = useAuth();
  const [selectedMovie, setSelectedMovie] = useState(null);
  const [reviewsForMovie, setReviewsForMovie] = useState([]);
  const [castAndCrew, setCastAndCrew] = useState(null);
  const [loading, setLoading] = useState(true);

  const fetchMovieData = async () => {
    if (!movieID) return;

    try {
      setLoading(true);

      // Fetch all data in parallel
      const [movieRes, reviewsRes, castRes] = await Promise.all([
        fetch(`https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/movies/details/${movieID}`),
        fetch(`https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/activity/top/${movieID}`),
        fetch(`https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/movies/cast/${movieID}`)
      ]);

      // Check responses and parse JSON
      const [movieData, reviewsData, castData] = await Promise.all([
        movieRes.ok ? movieRes.json() : Promise.reject(new Error('Failed to fetch movie details')),
        reviewsRes.ok ? reviewsRes.json() : Promise.reject(new Error('Failed to fetch reviews')),
        castRes.ok ? castRes.json() : Promise.reject(new Error('Failed to fetch cast'))
      ]);

      setSelectedMovie(movieData.movie);
      setReviewsForMovie(reviewsData.topReviews || []);
      setCastAndCrew(castData);
    } catch (err) {
      console.error('Error fetching movie data:', err);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchMovieData();
  }, [movieID]);

  if (loading) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="text-white text-2xl">Loading...</div>
      </div>
    );
  }

  if (!selectedMovie) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <div className="text-white text-2xl">Movie not found</div>
      </div>
    );
  }

  return (
    <div>
      <section
        className="relative bg-cover bg-center bg-fixed"
        style={{ backgroundImage: `url(${selectedMovie.movieBackdropLink})` }}
      >
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
        <Navbar />
        <MovieHero movieData={selectedMovie} />
        <div className="container px-6 mx-auto mt-16 relative z-10">
          <div className="grid grid-cols-1 md:grid-cols-2 gap-10">
            {castAndCrew && (
              <CastAndCrew
                crewData={{
                  director: castAndCrew.directors?.join(', ') || "Not specified",
                  writer: castAndCrew.writers?.join(', ') || "Not specified",
                  cast: castAndCrew.actors || []
                }}
              />
            )}
            <TrendingReviews
              reviewsData={reviewsForMovie}
              user={user}
              movie={selectedMovie}
            />
          </div>
        </div>
        <Footer />
      </section>
    </div>
  );
};

export default MoviePage;