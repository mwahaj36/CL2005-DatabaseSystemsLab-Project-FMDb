import React, { useState, useEffect } from 'react';
import Link from 'next/link';
import Navbar from '../components/Navbar';
import Footer from '../components/Footer';
import Head from 'next/head';
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
  const [sort, setSort] = useState('fmdb_rating');
  const [order, setOrder] = useState('desc');
  const [totalPages, setTotalPages] = useState(1);

  // State for advanced search
  const [searchResults, setSearchResults] = useState([]);
  const [isSearching, setIsSearching] = useState(false);
  const [showAdvancedSearch, setShowAdvancedSearch] = useState(false);
  
  // Search filters
  const [filters, setFilters] = useState({
    title: '',
    genre: '',
    language: '',
    releaseYearFrom: '',
    releaseYearTo: '',
    imdbRatingMin: '',
    imdbRatingMax: '',
    fmdbRatingMin: '',
    fmdbRatingMax: '',
    director: '',
    actor: '',
    writer: '',
    keyword: '',
    movieLength: ''
  });

  const fetchMovies = async () => {
    setLoading(true);
    try {
      const response = await fetch(
        `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/movies/page?page=${page}&sort=${sort}&order=${order}&type=series`,
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
      const response = await fetch('https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/movies/pageCount?type=series', {
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

  const handleSearch = async (e) => {
    e.preventDefault();
    setIsSearching(true);
    
    try {
      // Build query params object
      const params = new URLSearchParams();
      
      // Add all non-empty filters
      Object.entries(filters).forEach(([key, value]) => {
        if (value && value.trim() !== '') {
          params.append(key, value.trim());
        }
      });
      
      // Only search if at least one filter is set
      if (params.toString()) {
        const response = await fetch(
          `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/movies/discover?${params.toString()}&type=series`,
          {
            headers: {
              Authorization: `Bearer ${process.env.NEXT_PUBLIC_API_TOKEN}`,
            },
          }
        );
        
        const data = await response.json();
        if (data.success) {
          setSearchResults(data.movies);
        } else {
          console.error('Search failed:', data.message);
          setSearchResults([]);
        }
      } else {
        setSearchResults([]);
      }
    } catch (error) {
      console.error('Error searching movies:', error);
      setSearchResults([]);
    } finally {
      setIsSearching(false);
    }
  };

  const handleFilterChange = (e) => {
    const { name, value } = e.target;
    setFilters(prev => ({
      ...prev,
      [name]: value
    }));
  };

  const resetSearch = () => {
    setSearchResults([]);
    setFilters({
      title: '',
      genre: '',
      language: '',
      releaseYearFrom: '',
      releaseYearTo: '',
      imdbRatingMin: '',
      imdbRatingMax: '',
      fmdbRatingMin: '',
      fmdbRatingMax: '',
      director: '',
      actor: '',
      writer: '',
      keyword: '',
      movieLength: ''
    });
  };

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
    { value: 'fmdb_rating', label: 'FMDB Rating' },
    { value: 'imdb_rating', label: 'IMDB Rating' },
    { value: 'title', label: 'Title' },
  ];

  const getPageNumbers = () => {
    const pages = [];
    const maxVisiblePages = 5;
    
    pages.push(1);
    
    const startPage = Math.max(2, page - 1);
    const endPage = Math.min(totalPages - 1, page + 1);
    
    if (startPage > 2) pages.push('...');
    
    for (let i = startPage; i <= endPage; i++) pages.push(i);
    
    if (endPage < totalPages - 1) pages.push('...');
    
    if (totalPages > 1) pages.push(totalPages);
    
    return pages;
  };

  useEffect(() => {
    fetchPageCount();
  }, []);

  useEffect(() => {
    fetchMovies();
  }, [page, sort, order]);

  return (
    <>
    <Head>
      <title>FMDB | Series List</title>
      </Head>
     <div className="relative min-h-screen">
      <div className="relative bg-cover bg-center bg-fixed"
        style={{
          backgroundImage: "url('https://image.tmdb.org/t/p/original/aCHn2TXYJfzPXQKA6r9mKPbMlUB.jpg')",
        }}>
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
        <Navbar />

        <div className="relative z-10 pb-20">
          <section className="text-center pt-10">
            <h2 className="text-6xl text-white font-bold text-shadow">All Series</h2>
            <p className="text-purple-300 mt-2">Browse our collection of {totalPages > 1 ? `${totalPages} pages` : 'series'}</p>
            
            {/* Search Bar */}
            <div className="max-w-2xl mx-auto mt-8 px-4">
              <form onSubmit={handleSearch} className="relative">
                <input
                  type="text"
                  name="title"
                  value={filters.title}
                  onChange={handleFilterChange}
                  placeholder="Search series by title..."
                  className="w-full bg-darkPurple bg-opacity-90 border-2 border-purple-500 rounded-full py-3 px-6 text-white placeholder-purple-300 focus:outline-none focus:ring-2 focus:ring-purple-500 focus:border-transparent"
                />
                <div className="absolute right-3 top-1/2 transform -translate-y-1/2 flex gap-2">
                  <button
                    type="button"
                    onClick={() => setShowAdvancedSearch(!showAdvancedSearch)}
                    className="bg-purple-600 hover:bg-purple-700 text-white rounded-full p-2 transition-colors duration-200"
                    title="Advanced Search"
                  >
                    <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4" />
                    </svg>
                  </button>
                  <button
                    type="submit"
                    className="bg-purple-600 hover:bg-purple-700 text-white rounded-full p-2 transition-colors duration-200"
                  >
                    <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
                    </svg>
                  </button>
                </div>
              </form>

              {/* Advanced Search Panel */}
              {showAdvancedSearch && (
                <div className="mt-4 bg-darkPurple bg-opacity-90 p-4 rounded-lg border border-purple-500">
                  <h3 className="text-white font-semibold mb-3">Advanced Filters</h3>
                  <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                    <div>
                      <label className="block text-purple-200 text-sm mb-1">Genre</label>
                      <input
                        type="text"
                        name="genre"
                        value={filters.genre}
                        onChange={handleFilterChange}
                        placeholder="e.g., Action,Comedy"
                        className="w-full bg-darkPurple border border-purple-500 rounded-md py-2 px-3 text-white placeholder-purple-300 focus:outline-none focus:ring-1 focus:ring-purple-500"
                      />
                    </div>
                    <div>
                      <label className="block text-purple-200 text-sm mb-1">Language</label>
                      <input
                        type="text"
                        name="language"
                        value={filters.language}
                        onChange={handleFilterChange}
                        placeholder="e.g., English"
                        className="w-full bg-darkPurple border border-purple-500 rounded-md py-2 px-3 text-white placeholder-purple-300 focus:outline-none focus:ring-1 focus:ring-purple-500"
                      />
                    </div>
                    <div>
                      <label className="block text-purple-200 text-sm mb-1">Release Year Range</label>
                      <div className="flex gap-2">
                        <input
                          type="number"
                          name="releaseYearFrom"
                          value={filters.releaseYearFrom}
                          onChange={handleFilterChange}
                          placeholder="From"
                          min="1900"
                          max="2030"
                          className="w-full bg-darkPurple border border-purple-500 rounded-md py-2 px-3 text-white placeholder-purple-300 focus:outline-none focus:ring-1 focus:ring-purple-500"
                        />
                        <input
                          type="number"
                          name="releaseYearTo"
                          value={filters.releaseYearTo}
                          onChange={handleFilterChange}
                          placeholder="To"
                          min="1900"
                          max="2030"
                          className="w-full bg-darkPurple border border-purple-500 rounded-md py-2 px-3 text-white placeholder-purple-300 focus:outline-none focus:ring-1 focus:ring-purple-500"
                        />
                      </div>
                    </div>
                    <div>
                      <label className="block text-purple-200 text-sm mb-1">IMDB Rating</label>
                      <div className="flex gap-2">
                        <input
                          type="number"
                          name="imdbRatingMin"
                          value={filters.imdbRatingMin}
                          onChange={handleFilterChange}
                          placeholder="Min"
                          min="0"
                          max="10"
                          step="0.1"
                          className="w-full bg-darkPurple border border-purple-500 rounded-md py-2 px-3 text-white placeholder-purple-300 focus:outline-none focus:ring-1 focus:ring-purple-500"
                        />
                        <input
                          type="number"
                          name="imdbRatingMax"
                          value={filters.imdbRatingMax}
                          onChange={handleFilterChange}
                          placeholder="Max"
                          min="0"
                          max="10"
                          step="0.1"
                          className="w-full bg-darkPurple border border-purple-500 rounded-md py-2 px-3 text-white placeholder-purple-300 focus:outline-none focus:ring-1 focus:ring-purple-500"
                        />
                      </div>
                    </div>
                    <div>
                      <label className="block text-purple-200 text-sm mb-1">FMDB Rating</label>
                      <div className="flex gap-2">
                        <input
                          type="number"
                          name="fmdbRatingMin"
                          value={filters.fmdbRatingMin}
                          onChange={handleFilterChange}
                          placeholder="Min"
                          min="0"
                          max="10"
                          step="0.1"
                          className="w-full bg-darkPurple border border-purple-500 rounded-md py-2 px-3 text-white placeholder-purple-300 focus:outline-none focus:ring-1 focus:ring-purple-500"
                        />
                        <input
                          type="number"
                          name="fmdbRatingMax"
                          value={filters.fmdbRatingMax}
                          onChange={handleFilterChange}
                          placeholder="Max"
                          min="0"
                          max="10"
                          step="0.1"
                          className="w-full bg-darkPurple border border-purple-500 rounded-md py-2 px-3 text-white placeholder-purple-300 focus:outline-none focus:ring-1 focus:ring-purple-500"
                        />
                      </div>
                    </div>
                    <div>
                      <label className="block text-purple-200 text-sm mb-1">Director</label>
                      <input
                        type="text"
                        name="director"
                        value={filters.director}
                        onChange={handleFilterChange}
                        placeholder="e.g., Christopher Nolan"
                        className="w-full bg-darkPurple border border-purple-500 rounded-md py-2 px-3 text-white placeholder-purple-300 focus:outline-none focus:ring-1 focus:ring-purple-500"
                      />
                    </div>
                    <div>
                      <label className="block text-purple-200 text-sm mb-1">Actor</label>
                      <input
                        type="text"
                        name="actor"
                        value={filters.actor}
                        onChange={handleFilterChange}
                        placeholder="e.g., Tom Hanks"
                        className="w-full bg-darkPurple border border-purple-500 rounded-md py-2 px-3 text-white placeholder-purple-300 focus:outline-none focus:ring-1 focus:ring-purple-500"
                      />
                    </div>
                    <div>
                      <label className="block text-purple-200 text-sm mb-1">Writer</label>
                      <input
                        type="text"
                        name="writer"
                        value={filters.writer}
                        onChange={handleFilterChange}
                        placeholder="e.g., Quentin Tarantino"
                        className="w-full bg-darkPurple border border-purple-500 rounded-md py-2 px-3 text-white placeholder-purple-300 focus:outline-none focus:ring-1 focus:ring-purple-500"
                      />
                    </div>
                    <div>
                      <label className="block text-purple-200 text-sm mb-1">Keyword</label>
                      <input
                        type="text"
                        name="keyword"
                        value={filters.keyword}
                        onChange={handleFilterChange}
                        placeholder="e.g., superhero"
                        className="w-full bg-darkPurple border border-purple-500 rounded-md py-2 px-3 text-white placeholder-purple-300 focus:outline-none focus:ring-1 focus:ring-purple-500"
                      />
                    </div>
                    <div>
                      <label className="block text-purple-200 text-sm mb-1">Series Length (minutes)</label>
                      <input
                        type="number"
                        name="movieLength"
                        value={filters.movieLength}
                        onChange={handleFilterChange}
                        placeholder="e.g., 120"
                        min="0"
                        className="w-full bg-darkPurple border border-purple-500 rounded-md py-2 px-3 text-white placeholder-purple-300 focus:outline-none focus:ring-1 focus:ring-purple-500"
                      />
                    </div>
                  </div>
                  <div className="flex justify-end gap-2 mt-4">
                    <button
                      type="button"
                      onClick={resetSearch}
                      className="px-4 py-2 bg-gray-600 hover:bg-gray-700 text-white rounded-md transition-colors"
                    >
                      Reset
                    </button>
                    <button
                      type="button"
                      onClick={handleSearch}
                      className="px-4 py-2 bg-purple-600 hover:bg-purple-700 text-white rounded-md transition-colors"
                    >
                      Search
                    </button>
                  </div>
                </div>
              )}
            </div>
          </section>

          {/* Display search results if searching */}
          {isSearching ? (
            <div className="flex justify-center items-center h-64">
              <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-purple-500"></div>
            </div>
          ) : searchResults.length > 0 ? (
            <>
              <div className="flex justify-between items-center px-8 mt-8 mb-4">
                <h3 className="text-xl text-white font-semibold">
                  Search Results ({searchResults.length})
                </h3>
                <button
                  onClick={resetSearch}
                  className="text-purple-300 hover:text-white transition-colors"
                >
                  Clear Search
                </button>
              </div>
              <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-6 px-4 sm:px-6 lg:px-8">
                {searchResults.map((movie) => (
                  <MovieCard key={movie.movieid} movie={movie} />
                ))}
              </div>
            </>
          ) : (
            <>
              {/* Original content (sort controls and movie grid) */}
              <div className="flex justify-center mt-6 mb-8">
                <div className="bg-darkPurple bg-opacity-90 rounded-full p-1 shadow-lg">
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

                  {/* Pagination Controls */}
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
            </>
          )}
        </div>

        <Footer />
      </div>
    </div></>
   
  );
};

export default MoviesListPage;