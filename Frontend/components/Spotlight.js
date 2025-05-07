import React from "react";
import MovieCard from "./MovieCard"; // Adjust the path if necessary

const Spotlight = ({ movies, showUsername = false }) => {
  return (
    <section id="Spotlight" className="relative z-10">
      <div className="max-w-8xl px-5 mx-auto mt-10 text-center">
        <div className="flex flex-col md:flex-row md:space-x-6 space-y-20 md:space-y-0">
          {/* Dynamically render each movie using MovieCard */}
          {movies.map((movie, index) => (
            <div key={index} className="flex flex-col items-center">
              <MovieCard movie={movie} />
              {showUsername && movie.username && (
                <p className="mt-2 text-white text-sm">
                  Added by: <span className="text-purple-300">{movie.username}</span>
                </p>
              )}
            </div>
          ))}
        </div>
      </div>
    </section>
  );
};

export default Spotlight;