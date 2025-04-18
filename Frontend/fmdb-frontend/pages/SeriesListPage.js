import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';

const MovieCard = ({ movie }) => {
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
        <a className="w-full flex flex-col items-center">
          <img
            src={movie.movieposterlink}
            className="w-60 h-90 object-cover shadow-lg rounded-lg transition-transform duration-300 hover:scale-105"
            alt={movie.title}
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
  const [sort, setSort] = useState('releasedate');
  const [order, setOrder] = useState('desc');
  const [totalPages, setTotalPages] = useState(1);

  const fetchMovies = async () => {
    setLoading(true);
    try {
      const response = await fetch(
        `http://localhost:5000/movies/page?page=${page}&sort=${sort}&order=${order}&type=series`,
        {
          headers: {
            Authorization: `Bearer ${process.env.NEXT_PUBLIC_API_TOKEN}`,
          },
        }
      );
      const data = await response.json();
      if (data.success) {
        setMovies(data.movies);
      }
    } catch (error) {
      console.error('Error fetching movies:', error);
    } finally {
      setLoading(false);
    }
  };

  const fetchPageCount = async () => {
    try {
      const response = await fetch('http://localhost:5000/movies/pageCount?type=series', {
        headers: {
          Authorization: `Bearer ${process.env.NEXT_PUBLIC_API_TOKEN}`,
        },
      });
      const data = await response.json();
      if (data.success) {
        setTotalPages(data.totalPages);
      }
    } catch (error) {
      console.error('Error fetching total pages:', error);
    }
  };

  useEffect(() => {
    fetchPageCount();
  }, []);

  useEffect(() => {
    fetchMovies();
  }, [page, sort, order]);

  const handleSortChange = (newSort) => {
    if (sort === newSort) {
      setOrder(order === 'asc' ? 'desc' : 'asc');
    } else {
      setSort(newSort);
      setOrder('desc');
    }
    setPage(1);
  };

  const sortOptions = [
    { value: 'releasedate', label: 'Release Date' },
    { value: 'fmdb_rating', label: 'FMDB Rating' },
    { value: 'imdb_rating', label: 'IMDB Rating' },
    { value: 'title', label: 'Title' },
  ];

  const getPageNumbers = () => {
    const pages = [];
    const maxVisiblePages = 5;
    
    // Always show first page
    pages.push(1);
    
    // Show current page and surrounding pages
    const startPage = Math.max(2, page - 1);
    const endPage = Math.min(totalPages - 1, page + 1);
    
    if (startPage > 2) {
      pages.push('...');
    }
    
    for (let i = startPage; i <= endPage; i++) {
      pages.push(i);
    }
    
    if (endPage < totalPages - 1) {
      pages.push('...');
    }
    
    // Always show last page if there's more than one page
    if (totalPages > 1) {
      pages.push(totalPages);
    }
    
    return pages;
  };

  return (
    <div className="relative min-h-screen">
      <div
        className="relative bg-cover bg-center bg-fixed"
        style={{
          backgroundImage:
            "url('https://image.tmdb.org/t/p/original/aCHn2TXYJfzPXQKA6r9mKPbMlUB.jpg')",
        }}
      >
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
        <Navbar />

        <div className="relative z-10 pb-20">
          <section className="text-center pt-10">
            <h2 className="text-6xl text-white font-bold text-shadow">All Films</h2>
            <p className="text-purple-300 mt-2">Browse our collection of {totalPages > 1 ? `${totalPages} pages` : 'films'}</p>
          </section>

          <div className="flex justify-center mt-6 mb-8">
            <div className="bg-darkPurple bg-opacity-90 rounded-full p-1 shadow-lg ">
              {sortOptions.map((option) => (
                <button
                  key={option.value}
                  onClick={() => handleSortChange(option.value)}
                  className={`px-6 py-2 rounded-full text-sm font-medium transition-all duration-200 ${
                    sort === option.value
                      ? 'bg-purple text-white shadow-md'
                      : 'text-purple-200 hover:text-white hover:bg-purple hover:bg-opacity-70'
                  }`}
                >
                  {option.label}
                  {sort === option.value && (
                    <span className="ml-1 text-purple-200">{order === 'asc' ? '↑' : '↓'}</span>
                  )}
                </button>
              ))}
            </div>
          </div>

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

              {/* Enhanced Pagination Controls */}
              <div className="flex justify-center gap-2 mt-12">
                <button
                  onClick={() => setPage((prev) => Math.max(prev - 1, 1))}
                  disabled={page === 1}
                  className={`px-4 py-2 rounded-lg text-sm font-medium transition-all flex items-center gap-1 ${
                    page === 1
                      ? 'bg-darkPurple text-gray-500 cursor-not-allowed'
                      : 'bg-darkPurple text-white hover:bg-purple hover:shadow-lg'
                  }`}
                >
                  <svg xmlns="http://www.w3.org/2000/svg" className="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 19l-7-7 7-7" />
                  </svg>
                  Previous
                </button>

                <div className="flex items-center gap-1">
                  {getPageNumbers().map((pageNum, index) => (
                    pageNum === '...' ? (
                      <span key={`ellipsis-${index}`} className="px-3 py-1 text-purple-300">...</span>
                    ) : (
                      <button
                        key={pageNum}
                        onClick={() => setPage(pageNum)}
                        className={`w-10 h-10 rounded-lg text-md font-medium transition-all flex items-center justify-center ${
                          page === pageNum
                            ? 'bg-purple text-white shadow-md'
                            : 'bg-darkPurple text-purple-200 hover:bg-purple hover:text-white'
                        }`}
                      >
                        {pageNum}
                      </button>
                    )
                  ))}
                </div>

                <button
                  onClick={() => setPage((prev) => Math.min(prev + 1, totalPages))}
                  disabled={page === totalPages}
                  className={`px-4 py-2 rounded-lg text-sm font-medium transition-all flex items-center gap-1 ${
                    page === totalPages
                      ? 'bg-darkPurple text-white cursor-not-allowed'
                      : 'bg-darkPurple text-white hover:bg-purple hover:shadow-lg'
                  }`}
                >
                  Next
                  <svg xmlns="http://www.w3.org/2000/svg" className="h-4 w-4" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
                  </svg>
                </button>
              </div>
            </>
          )}
        </div>

        <Footer />
      </div>
    </div>
  );
};

export default MoviesListPage;