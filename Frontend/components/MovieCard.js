import Link from 'next/link';

const MovieCard = ({ movie }) => {
  // Debug what's being received
  console.log('Rendering movie:', movie);

  // Handle loading/empty states better
  if (!movie || !movie.movieid) {
    return (
      <div className="w-full h-96 rounded-lg animate-pulse flex items-center justify-center">
        <span className="text-white">Loading movie...</span>
      </div>
    );
  }

  return (
    <div className="flex flex-col items-center p-4 space-y-4 rounded-lg transition-all duration-300 w-full h-full sm:p-2">
      <Link href={`/movie/${movie.movieid}`} passHref legacyBehavior>
        <a className="w-full flex flex-col items-center">
          <img
            src={movie.movieposterlink || '/placeholder-movie.jpg'}
            className="w-40 h-60 sm:w-32 sm:h-48 object-cover shadow-lg rounded-lg transition-transform duration-300 hover:scale-105"
            alt={movie.title}
            onError={(e) => {
              e.target.onerror = null;
              e.target.src = '/placeholder-movie.jpg';
            }}
          />
        </a>
      </Link>
      <div className="text-center w-full px-2 h-20 flex flex-col justify-center sm:h-auto">
        <h5
          className="text-lg font-bold text-white line-clamp-2 sm:text-base"
          title={movie.title}
        >
          {movie.title}
        </h5>
        {movie.directors?.length > 0 && (
          <p
            className="text-gray-400 text-sm mt-1 line-clamp-1 sm:text-xs"
            title={movie.directors.join(', ')}
          >
            Directed by: {movie.directors.join(', ')}
          </p>
        )}
      </div>
    </div>
  );
};

export default MovieCard;