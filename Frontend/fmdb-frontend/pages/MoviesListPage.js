// pages/MoviesListPage.js
import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';

const MovieCard = ({ movie }) => {
  if (!movie || !movie.movieid) {
    return (
      <div className="w-full h-96 rounded-lg animate-pulse flex items-center justify-center bg-gray-800">
        <span className="text-white">Loading movie...</span>
      </div>
    );
  }

  return (
    <div className="flex flex-col items-center p-4 space-y-4 rounded-lg transition-all duration-300 w-full h-full hover:bg-gray-800 hover:bg-opacity-50">
      <Link href={`/movie/${movie.movieid}`} passHref legacyBehavior>
        <a className="w-full flex flex-col items-center">
          <img
            src={movie.movieposterlink || '/placeholder-movie.jpg'}
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
  const [order, setOrder] = useState('DESC');
  const [totalPages, setTotalPages] = useState(1);
  const [totalMovies, setTotalMovies] = useState(0);

  const fetchMovies = async () => {
    setLoading(true);
    try {
      const response = await fetch(
        `http://localhost:5000/movies/page?page=${page}&sort=${sort}&order=${order}&type=movie`
      );
      const data = await response.json();
      if (data.success) {
        setMovies(data.movies);
        // Calculate total pages based on fixed pageSize of 25 from backend
        setTotalMovies(data.totalMovies || data.movies.length);
        setTotalPages(Math.ceil((data.totalMovies || data.movies.length) / 25));
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
      setOrder(order === 'ASC' ? 'DESC' : 'ASC');
    } else {
      setSort(newSort);
      setOrder('DESC'); // Default to DESC for most sorts
    }
    setPage(1); // Reset to first page when changing sort
  };

  const sortOptions = [
    { value: 'ReleaseDate', label: 'Release Date' },
    { value: 'FMDB_Rating', label: 'FMDB Rating' },
    { value: 'IMDB_Rating', label: 'IMDB Rating' },
    { value: 'Title', label: 'Title' },
  ];

  return (
    <div className="relative min-h-screen">
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
        <div className="relative z-10 pb-20">
          {/* Heading for the Movies List Page */}
          <section className="text-center pt-10">
            <h2 className="text-6xl text-white text-shadow font-bold">All Films</h2>
            <p className="text-gray-300 mt-2">
              Showing {(page - 1) * 25 + 1}-{Math.min(page * 25, totalMovies)} of {totalMovies} movies
            </p>
          </section>

          {/* Sorting Controls */}
          <div className="flex justify-center mt-6 mb-8">
            <div className="bg-gray-900 bg-opacity-80 rounded-full p-1 shadow-lg">
              {sortOptions.map((option) => (
                <button
                  key={option.value}
                  onClick={() => handleSortChange(option.value)}
                  className={`px-6 py-2 rounded-full text-sm font-medium transition-all duration-200 ${
                    sort === option.value
                      ? 'bg-purple-600 text-white shadow-md'
                      : 'text-gray-300 hover:text-white hover:bg-gray-800'
                  }`}
                >
                  {option.label}
                  {sort === option.value && (
                    <span className="ml-1">{order === 'ASC' ? '↑' : '↓'}</span>
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
              <div className="flex justify-center gap-4 mt-12">
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
                
                <div className="flex items-center gap-2">
                  {Array.from({ length: Math.min(5, totalPages) }, (_, i) => {
                    let pageNum;
                    if (totalPages <= 5) {
                      pageNum = i + 1;
                    } else if (page <= 3) {
                      pageNum = i + 1;
                    } else if (page >= totalPages - 2) {
                      pageNum = totalPages - 4 + i;
                    } else {
                      pageNum = page - 2 + i;
                    }
                    
                    return (
                      <button
                        key={pageNum}
                        onClick={() => setPage(pageNum)}
                        className={`w-10 h-10 rounded-full text-sm font-medium transition-all ${
                          page === pageNum
                            ? 'bg-purple-600 text-white'
                            : 'bg-gray-800 text-gray-300 hover:bg-gray-700'
                        }`}
                      >
                        {pageNum}
                      </button>
                    );
                  })}
                  {totalPages > 5 && page < totalPages - 2 && (
                    <span className="text-gray-400 mx-1">...</span>
                  )}
                  {totalPages > 5 && page < totalPages - 2 && (
                    <button
                      onClick={() => setPage(totalPages)}
                      className="w-10 h-10 rounded-full text-sm font-medium bg-gray-800 text-gray-300 hover:bg-gray-700"
                    >
                      {totalPages}
                    </button>
                  )}
                </div>
                
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