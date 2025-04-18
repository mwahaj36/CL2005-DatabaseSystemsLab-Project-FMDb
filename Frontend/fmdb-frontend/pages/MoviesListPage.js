// pages/MoviesListPage.js
import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';

const MovieCard = ({ movie }) => {
  if (!movie || !movie.movieid) {
    return (
      <div className="w-full h-96 rounded-lg animate-pulse flex items-center justify-center ">
        <span className="text-white">Loading movie...</span>
      </div>
    );
  }

  return (
    <div className="flex flex-col items-center p-4 space-y-4 rounded-lg transition-all duration-300 w-full h-full ">
      <Link href={`/movie/${movie.movieid}`} passHref legacyBehavior>
        <a className="w-full flex flex-col items-center">
          <img
            src={movie.movieposterlink}
            className="w-60 h-90 object-cover shadow-lg rounded-lg transition-transform duration-300 hover:scale-105"
            alt={movie.title}
            onError={(e) => {
              e.target.onerror = null;
              e.target.src = '/placeholder-movie.jpg';
            }}
          />
        </a>
      </Link>
      <div className="text-center w-full px-2 h-20 flex flex-col justify-center">
        <h5 className="text-lg font-bold text-white line-clamp-2" title={movie.title}>
          {movie.title}
        </h5>
        {movie.directors?.length > 0 && (
          <p className="text-gray-400 text-sm mt-1 line-clamp-1" title={movie.directors.join(', ')}>
            Directed by: {movie.directors.join(', ')}
          </p>
        )}
      </div>
    </div>
  );
};

const MoviesListPage = () => {
  const [movies, setMovies] = useState([]);
  const [loading, setLoading] = useState(true);
  const [page, setPage] = useState(1);
  const [sort, setSort] = useState('ReleaseDate');
  const [order, setOrder] = useState('desc'); // Default to newest first
  const [totalPages, setTotalPages] = useState(1);

  const fetchMovies = async () => {
    setLoading(true);
    try {
      const response = await fetch(
        `http://localhost:5000/movies/page?page=${page}&sort=${sort}&order=${order}&type=movie`
      );
      const data = await response.json();
      if (data.success) {
        setMovies(data.movies);
        setTotalPages(data.totalPages || 1);
      }
    } catch (error) {
      console.error('Error fetching movies:', error);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchMovies();
  }, [page, sort, order]);

  const handleSortChange = (newSort) => {
    if (sort === newSort) {
      setOrder(order === 'asc' ? 'desc' : 'asc');
    } else {
      setSort(newSort);
      setOrder('desc'); // Default to descending for most sorts
    }
  };

  const sortOptions = [
    { value: 'ReleaseDate', label: 'Release Date' },
    { value: 'fmdb_rating', label: 'FMDB Rating' },
    { value: 'imdb_rating', label: 'IMDB Rating' },
    { value: 'title', label: 'Title' },
  ];

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

          {/* Sorting Controls */}
          <div className="flex justify-center mt-6 mb-8">
            <div className="bg-darkPurple bg-opacity-100 rounded-full p-1 shadow-lg">
              {sortOptions.map((option) => (
                <button
                  key={option.value}
                  onClick={() => handleSortChange(option.value)}
                  className={`px-6 py-2 rounded-full text-md font-medium transition-all duration-200 ${
                    sort === option.value
                      ? 'bg-purple-600 text-white shadow-md'
                      : 'text-gray-300 hover:text-white hover:bg-gray-800'
                  }`}
                >
                  {option.label}
                  {sort === option.value && (
                    <span className="ml-1">{order === 'asc' ? '↑' : '↓'}</span>
                  )}
                </button>
              ))}
            </div>
          </div>

          {/* Movie List */}
          {loading ? (
            <div className="flex justify-center items-center h-64">
              <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-purple-500"></div>
            </div>
          ) : (
            <>
              <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-6 px-4 sm:px-6 lg:px-8">
                {movies.map((movie) => (
                  <MovieCard key={movie.movieid} movie={movie} />
                ))}
              </div>

              {/* Pagination Controls */}
              <div className="flex justify-center gap-4 my-8">
                <button
                  onClick={() => setPage((prev) => Math.max(prev - 1, 1))}
                  disabled={page === 1}
                  className={`px-6 py-2 rounded-full text-sm font-medium transition-all ${
                    page === 1
                      ? 'bg-gray-800 text-gray-500 cursor-not-allowed'
                      : 'bg-purple-600 text-white hover:bg-purple-700'
                  }`}
                >
                  Previous
                </button>
                <span className="px-6 py-2 text-white text-sm font-medium flex items-center">
                  Page {page} of {totalPages}
                </span>
                <button
                  onClick={() => setPage((prev) => Math.min(prev + 1, totalPages))}
                  disabled={page === totalPages}
                  className={`px-6 py-2 rounded-full text-sm font-medium transition-all ${
                    page === totalPages
                      ? 'bg-gray-800 text-gray-500 cursor-not-allowed'
                      : 'bg-purple-600 text-white hover:bg-purple-700'
                  }`}
                >
                  Next
                </button>
              </div>
            </>
          )}
        </div>

        {/* Footer Component */}
        <Footer />
      </div>
    </div>
  );
};

export default MoviesListPage;