import React from "react";
import MovieCard from "./MovieCard"; // Adjust the path if necessary

const Spotlight = ({ movies }) => {
  return (
    <section id="Spotlight" className="relative z-10">
      <div className="max-w-8xl px-4 sm:px-6 lg:px-8 mx-auto mt-10 text-center">
        <div className="flex flex-wrap justify-center gap-6">
          {/* Dynamically render each movie using MovieCard */}
          {movies.map((movie, index) => (
            <MovieCard key={index} movie={movie} />
          ))}
        </div>
      </div>
    </section>
  );
};

export default Spotlight;
