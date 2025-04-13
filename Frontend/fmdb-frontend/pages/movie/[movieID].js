import React, { useState } from 'react';
import { useRouter } from 'next/router';
import movieData from '../../data/FMDBDatabase.json'; // Movie data
import activity from '../../data/activity'; // Activity data
import users from '../../data/Users'; // no destructuring



import CastAndCrew from '../../components/CastAndCrew';
import TrendingReviews from '../../components/TrendingReviews';
import Navbar from '../../components/Navbar';
import Footer from '../../components/Footer';
import MovieHero from '../../components/MovieHero';

const MoviePage = () => {
  const router = useRouter();
  const { movieID } = router.query;

  const selectedMovie = movieData.find((movie) => movie.MovieID === movieID);

  if (!selectedMovie) {
    return <div>Movie not found</div>;
  }

  const reviewsForMovie = activity
    .filter((a) => a.movieID === movieID && !a.isReply)
    .map((a) => {
      const user = users.find((u) => u.userID === a.userID);
      return {
        ...a,
        userType: user?.userType || 'user',
        fullName: user?.fullName || 'Unknown User',
        profilePic: user?.profilePic || '/default-pic.jpg',
      };
    });

  const appendLikeToActivity = (newActivity) => {
    activity.push(newActivity); // Append the new activity to your data structure
    console.log('New activity added:', newActivity); // Simulate the append to the activity
  };

  return (
    <div>
      <section
        className="relative bg-cover bg-center bg-fixed"
        style={{ backgroundImage: `url(${selectedMovie.Backdrop})` }}
      >
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
        <Navbar />
        <MovieHero movieData={selectedMovie} />
        <div className="container px-6 mx-auto mt-16 relative z-10">
          <div className="grid grid-cols-1 md:grid-cols-2 gap-10">
            <CastAndCrew
              crewData={{
                director: selectedMovie.Director,
                writer: selectedMovie.Writer,
                cast: selectedMovie.TopActors,
              }}
            />
            <TrendingReviews
              reviewsData={reviewsForMovie}
              appendLikeToActivity={appendLikeToActivity}
              movie={selectedMovie} // ✅ Add this line to pass the movie object
            />
          </div>
        </div>
        <Footer />
      </section>
    </div>
  );
};

export default MoviePage;
