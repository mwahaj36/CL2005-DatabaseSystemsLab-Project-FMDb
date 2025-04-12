import Link from 'next/link';

const MovieCard = ({ movie }) => {
  return (
    <div className="flex flex-col items-center p-6 space-y-6 rounded-lg bg-veryLightGray md:w-1/4">
      <Link href={`/movie/${movie.MovieID}`}>
        <img
          src={movie.Poster}
          className="-mt-14 shadow-lg shadow-xl rounded-lg transition-transform duration-300 hover:scale-105"
          alt={movie.Title}
        />
      </Link>
      <h5 className="text-xl font-bold text-white text-shadow">{movie.Title}</h5>
    </div>
  );
};

export default MovieCard;
