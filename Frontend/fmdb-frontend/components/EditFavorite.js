import Link from 'next/link';
import Image from 'next/image';
import FMDBLogo from '@/public/Dark.png';
import MovieSearchDropdown from '@/components/MovieSearchDropdown';
import { useState } from 'react';

const MovieCard = ({ movie, onFavoriteSelect }) => {
  const [activeSearchIndex, setActiveSearchIndex] = useState(null);

  // If no movie is passed, show 4 selectable placeholders
  if (!movie || !movie.MovieID || !movie.Poster || !movie.Title) {
    return (
      <div className="grid grid-cols-2 sm:grid-cols-4 gap-4 w-full">
        {[...Array(4)].map((_, index) => (
          <div
            key={index}
            className="relative w-full h-80 bg-purpleWhite bg-opacity-80 rounded-lg flex flex-col items-center justify-center text-center text-darkPurple font-bold p-4 space-y-4 cursor-pointer"
            onClick={() => setActiveSearchIndex(index)}
          >
            <div className="w-16">
              <Image
                src={FMDBLogo}
                alt="FMDb Logo"
                layout="responsive"
                className="rounded"
              />
            </div>
            <p>Click to add a favorite movie</p>

            {/* Render the dropdown if this card was clicked */}
            {activeSearchIndex === index && (
              <MovieSearchDropdown
                onClose={(selectedMovie) => {
                  if (selectedMovie) {
                    onFavoriteSelect(selectedMovie); // Pass the selected movie to the parent
                    //add to user favs code here; selected movie has the object
                  }
                  setActiveSearchIndex(null); // Always close the dropdown
                }}
              />
            )}
          </div>
        ))}
      </div>
    );
  }

  // If a movie exists, render the actual card with poster and title
  return (
    <div className="flex flex-col items-center p-6 space-y-4 rounded-lg bg-veryLightGray transition-all duration-300 w-full">
      <Link href={`/movie/${movie.MovieID}`}>
        <img
          src={movie.Poster}
          className="w-full h-80 object-cover -mt-14 shadow-lg rounded-lg transition-transform duration-300 hover:scale-105"
          alt={movie.Title}
        />
      </Link>
      <h5 className="text-xl font-bold text-white text-shadow text-center">
        {movie.Title}
      </h5>
    </div>
  );
};

export default MovieCard;
