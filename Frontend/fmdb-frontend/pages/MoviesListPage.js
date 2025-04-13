// pages/MoviesListPage.js
import React from 'react';
import MovieList from '../components/MovieList'; // Import the MovieList component
import Navbar from '../components/Navbar'; // Import the Navbar component
import Footer from '../components/Footer'; // Import the Footer component

const MoviesListPage = () => {
  return (
    <div className="relative">
      {/* Background image with purple overlay */}
      <div
        className="relative bg-cover bg-center bg-fixed"
        style={{ backgroundImage: "url('https://image.tmdb.org/t/p/original/aCHn2TXYJfzPXQKA6r9mKPbMlUB.jpg')" }}
      >
        {/* Purple overlay */}
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>

        {/* Navbar Component */}
        <Navbar />

        {/* Page Content */}
        <div className="relative z-10">
          {/* Heading for the Movies List Page */}
          <section className="text-center mt-10">
            <h2 className="text-6xl text-white text-shadow font-bold">All Films</h2>
          </section>

          {/* Movie List Component */}
          <MovieList />
        </div>

        {/* Footer Component */}
        <Footer />
      </div>
    </div>
  );
};

export default MoviesListPage;
