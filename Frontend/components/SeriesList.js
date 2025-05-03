import React, { useState } from 'react';
import movieData from '../data/FMDBDatabase.json';
import MovieCard from './MovieCard';

const MoviesPerPage = 25;

const MovieList = () => {
  const [currentPage, setCurrentPage] = useState(1);
  const [sortBy, setSortBy] = useState('IMDB_Rating');
  const [sortOrder, setSortOrder] = useState('desc');

  const filteredMovies = movieData.filter((movie) => movie.Type === 'Series');

  const sortedMovies = [...filteredMovies].sort((a, b) => {
    let valA, valB;

    switch (sortBy) {
      case 'IMDB_Rating':
        valA = parseFloat(a.IMDB_Rating) || 0;
        valB = parseFloat(b.IMDB_Rating) || 0;
        break;
      case 'FMDB_Rating':
        valA = parseFloat(a.FMDB_Rating) || 0;
        valB = parseFloat(b.FMDB_Rating) || 0;
        break;
      case 'Title':
        valA = a.Title?.toLowerCase() || '';
        valB = b.Title?.toLowerCase() || '';
        break;
      default:
        return 0;
    }

    if (valA < valB) return sortOrder === 'asc' ? -1 : 1;
    if (valA > valB) return sortOrder === 'asc' ? 1 : -1;
    return 0;
  });

  const indexOfLastMovie = currentPage * MoviesPerPage;
  const indexOfFirstMovie = indexOfLastMovie - MoviesPerPage;
  const currentMovies = sortedMovies.slice(indexOfFirstMovie, indexOfLastMovie);
  const totalPages = Math.ceil(sortedMovies.length / MoviesPerPage);

  const handlePageChange = (pageNumber) => {
    if (pageNumber >= 1 && pageNumber <= totalPages) {
      setCurrentPage(pageNumber);
    }
  };

  return (
    <section id="MovieList" className="relative z-10 py-16">
      <div className="max-w-8xl px-5 mx-auto text-center">
        {/* Sorting Controls */}
        <div className="flex justify-end items-center space-x-4 mb-20">
          <div>
            <select
              onChange={(e) => setSortBy(e.target.value)}
              value={sortBy}
              className="px-4 py-2 bg-purpleWhite text-darkPurple rounded-full text-lg transition duration-300"
            >
              <option value="IMDB_Rating">Sort by IMDB Rating</option>
              <option value="FMDB_Rating">Sort by FMDB Rating</option>
              <option value="Title">Sort by Title</option>
            </select>
          </div>

          <button
            onClick={() => setSortOrder(sortOrder === 'asc' ? 'desc' : 'asc')}
            className="px-4 py-2 bg-purpleWhite text-darkPurple rounded-full text-lg transition duration-300"
          >
            {sortOrder === 'asc' ? (
              <>
                Ascending Order <span className="ml-2">↑</span>
              </>
            ) : (
              <>
                Descending Order <span className="ml-2">↓</span>
              </>
            )}
          </button>
        </div>

        {/* Movie Cards */}
        <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-8 mt-10">
          {currentMovies.map((movie) => (
            <MovieCard key={movie.MovieID} movie={movie} />
          ))}
        </div>

        {/* Pagination */}
        <div className="w-full text-center mt-10">
          <div className="inline-flex items-center space-x-4">
            <button
              onClick={() => handlePageChange(currentPage - 1)}
              disabled={currentPage === 1}
              className="px-4 py-2 bg-purpleWhite hover:bg-purple text-darkPurple rounded-full text-lg transition duration-300"
            >
              Prev
            </button>

            {[...Array(totalPages)].map((_, index) => (
              <button
                key={index}
                onClick={() => handlePageChange(index + 1)}
                className={`px-4 py-2 ${
                  currentPage === index + 1
                    ? 'bg-purple text-purpleWhite'
                    : 'bg-transparent text-white'
                } hover:bg-purple hover:text-purpleWhite rounded-full text-lg transition duration-300`}
              >
                {index + 1}
              </button>
            ))}

            <button
              onClick={() => handlePageChange(currentPage + 1)}
              disabled={currentPage === totalPages}
              className="px-4 py-2 bg-purpleWhite hover:bg-purple text-darkPurple rounded-full text-lg transition duration-300"
            >
              Next
            </button>
          </div>
        </div>
      </div>
    </section>
  );
};

export default MovieList;
