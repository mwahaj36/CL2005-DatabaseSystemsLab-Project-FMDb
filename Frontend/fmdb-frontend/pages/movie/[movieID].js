// pages/movie/[movieID].js
import React from 'react';
import { useRouter } from 'next/router';
import movieData from '../../data/FMDBDatabase.json'; // Make sure this path is correct

// ✅ Updated component paths — all start from "../../components"
import CastAndCrew from '../../components/CastAndCrew';
import TrendingReviews from '../../components/TrendingReviews';
import Navbar from '../../components/Navbar';
import Footer from '../../components/Footer';
import MovieHero from '../../components/MovieHero';

const MoviePage = () => {
  const router = useRouter();
  const { movieID } = router.query;

  // Find the selected movie based on movieID from the JSON data
  const selectedMovie = movieData.find((movie) => movie.MovieID === movieID);

  if (!selectedMovie) {
    return <div>Movie not found</div>;
  }

  // Dummy data for reviews
// Dummy data for reviews
const reviewsData = [
  // {
  //   username: "cinebuff123",
  //   rating: 4.5,
  //   text: "A masterpiece in visual storytelling. Loved the direction and pacing!",
  //   usertype: "Verified Critic", // Added usertype
  // },
  // {
  //   username: "movielover99",
  //   rating: 4.5,
  //   text: "Great cast, solid script. Definitely a must-watch!",
  //   usertype: "Regular User", // Added usertype
  // },
  // {
  //   username: "noirenthusiast",
  //   rating: 3.5,
  //   text: "Good attempt, but lacked emotional depth in a few scenes.",
  //   usertype: "Verified Critic", // Added usertype
  // },
];



  return (
    <div>
      <section
        className="relative bg-cover bg-center bg-fixed"
        style={{ backgroundImage: `url(${selectedMovie.Backdrop})` }}
      >
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
        {/* Replace with your Navbar component */}
        <Navbar />
        {/* Replace with your MovieHero component */}
        <MovieHero movieData={selectedMovie} />
        <div className="container px-6 mx-auto mt-16 relative z-10">
          <div className="grid grid-cols-1 md:grid-cols-2 gap-10">
            {/* Replace with your CastAndCrew component */}
            <CastAndCrew
              crewData={{
                director: selectedMovie.Director,
                writer: selectedMovie.Writer,
                cast: selectedMovie.TopActors,
              }}
            />
            {/* Replace with your TrendingReviews component */}
            <TrendingReviews reviewsData={reviewsData} />
          </div>
        </div>
        {/* Replace with your Footer component */}
        <Footer />
      </section>
    </div>
  );
};

export default MoviePage;
