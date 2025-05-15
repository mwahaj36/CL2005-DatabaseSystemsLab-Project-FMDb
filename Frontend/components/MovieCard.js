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
    <div className="flex flex-col items-center p-4 space-y-4 rounded-lg transition-all duration-300 w-full h-full">
      <Link href={`/movie/${movie.movieid}`} passHref legacyBehavior>
        <a className="flex flex-col items-center" style={{ width: '15rem' }}>
          <img
            src={movie.movieposterlink || '/placeholder-movie.jpg'}
            className="w-60 h-[22.5rem] object-cover shadow-lg rounded-lg transition-transform duration-300 hover:scale-105"
            alt={movie.title}
            onError={(e) => {
              e.target.onerror = null;
              e.target.src = '/placeholder-movie.jpg';
            }}
          />
          <div className="text-center w-full px-2 mt-2">
            <h5
              className="text-lg font-bold text-white line-clamp-2"
              title={movie.title}
            >
              {movie.title}
            </h5>
            {movie.directors?.length > 0 && (
              <p
                className="text-gray-400 text-sm mt-1 line-clamp-1"
                title={movie.directors.join(', ')}
              >
                Directed by: {movie.directors.join(', ')}
              </p>
            )}
          </div>
        </a>
      </Link>
    </div>
  );
};

export default MovieCard;
