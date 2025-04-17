import React from "react";
import MovieCard from "./MovieCard"; // Adjust the path if necessary

const Spotlight = ({ movies }) => {
  return (
    <section id="Spotlight" className="relative z-10">
      <div className="max-w-8xl px-5 mx-auto mt-10 text-center">
        <h2 className="text-6xl text-white text-shadow font-bold text-center">
          Popular In Your Circle
        </h2>
        <div className="flex flex-col mt-24 md:flex-row md:space-x-6 space-y-20 md:space-y-0">
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
