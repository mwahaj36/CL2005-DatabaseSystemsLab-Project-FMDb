import React from "react";
import MovieCard from "./MovieCard";

const Spotlight = ({ movies, showUsername = false }) => {
  return (
    <section id="Spotlight" className="relative z-10">
      <div className="px-5 mx-auto mt-10">
        <div className="flex flex-col items-center md:flex-row md:flex-wrap md:justify-center gap-6">
          {movies.map((movie, index) => (
            <div key={index} className="flex flex-col items-center w-full md:w-auto">
              <MovieCard movie={movie} />
              {showUsername && movie.username && (
                <p className=" text-purpleWhite text-sm text-center">
                  Activity by: <span className="text-purple-300">{movie.username}</span>
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