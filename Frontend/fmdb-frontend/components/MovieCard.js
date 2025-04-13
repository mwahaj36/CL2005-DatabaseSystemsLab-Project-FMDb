import Link from 'next/link';

const MovieCard = ({ movie }) => {
  // Ensure the movie prop has all necessary fields before rendering
  if (!movie || !movie.MovieID || !movie.Poster || !movie.Title) {
    return <div>Loading...</div>; // Handle missing data gracefully
  }

  return (
    <div className="flex flex-col items-center p-6 space-y-4 rounded-lg bg-veryLightGray  transition-all duration-300 w-full">
      <Link href={`/movie/${movie.MovieID}`}>
        <img
          src={movie.Poster}
          className="w-full h-80 object-cover -mt-14 shadow-lg rounded-lg transition-transform duration-300 hover:scale-105"
          alt={movie.Title}
        />
      </Link>
      <h5 className="text-xl font-bold text-white text-shadow">{movie.Title}</h5>
    </div>
  );
};

export default MovieCard;
