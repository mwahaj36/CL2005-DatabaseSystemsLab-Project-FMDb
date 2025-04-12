import React, { useState } from 'react';
import movieData from '../data/FMDBDatabase.json'; // Adjust the path as per your project structure
import MovieCard from './MovieCard'; // Import the MovieCard component

const MoviesPerPage = 25; // Define how many movies per page

const MovieList = () => {
  // State to manage the current page, sorting criteria, and sorting order (ascending/descending)
  const [currentPage, setCurrentPage] = useState(1);
  const [sortBy, setSortBy] = useState('ReleaseDate'); // Default sorting criterion is Release Date
  const [sortOrder, setSortOrder] = useState('desc'); // Default sorting order is descending

  // Filter out only the movies (not series)
  const filteredMovies = movieData.filter((movie) => movie.Type === 'Movie'); // Assuming `Type` is the key

  // Function to sort movies based on the selected criterion and order
  const sortedMovies = [...filteredMovies].sort((a, b) => {
    let comparison = 0;
    switch (sortBy) {
      case 'IMDB_Rating':
        comparison = b.IMDB_Rating - a.IMDB_Rating; // Sort by IMDB Rating (descending)
        break;
      case 'FMDB_Rating':
        comparison = b.FMDB_Rating - a.FMDB_Rating; // Sort by FMDB Rating (descending)
        break;
      case 'Title':
        comparison = a.Title.localeCompare(b.Title); // Sort by Title (alphabetical)
        break;
      case 'ReleaseDate':
        comparison = new Date(b.ReleaseDate) - new Date(a.ReleaseDate); // Sort by Release Date (newest first)
        break;
      default:
        return 0;
    }

    // Adjust comparison based on sort order (ascending or descending)
    return sortOrder === 'asc' ? comparison : -comparison;
  });

  // Slice the movie data array to show only the movies for the current page
  const indexOfLastMovie = currentPage * MoviesPerPage;
  const indexOfFirstMovie = indexOfLastMovie - MoviesPerPage;
  const currentMovies = sortedMovies.slice(indexOfFirstMovie, indexOfLastMovie);

  // Calculate total pages based on the total number of movies
  const totalPages = Math.ceil(sortedMovies.length / MoviesPerPage);

  // Change page function
  const handlePageChange = (pageNumber) => {
    if (pageNumber >= 1 && pageNumber <= totalPages) {
      setCurrentPage(pageNumber);
    }
  };

  return (
    <section id="MovieList" className="relative z-10 py-16 ">
      <div className="max-w-8xl px-5 mx-auto text-center">
        {/* Sorting Controls */}
        <div className="flex justify-end items-center space-x-4 mb-20">
          {/* Sorting Dropdown */}
          <div>
            <select
              onChange={(e) => setSortBy(e.target.value)}
              value={sortBy}
              className="px-4 py-2 bg-purpleWhite text-darkPurple rounded-full text-lg transition duration-300"
            >
              <option value="IMDB_Rating">Sorted by IMDB Rating</option>
              <option value="FMDB_Rating">Sorted by FMDB Rating</option>
              <option value="Title">Sorted by Title</option>
              <option value="ReleaseDate">Sorted by Release Date</option>
            </select>
          </div>

          {/* Sort Order Toggle (Ascending/Descending) */}
          <button
            onClick={() => setSortOrder(sortOrder === 'asc' ? 'desc' : 'asc')}
            className="px-4 py-2 bg-purpleWhite text-darkPurple rounded-full text-lg transition duration-300"
          >
            {sortOrder === 'asc' ? (
              <>
                Sorted in Ascending Order <span className="ml-2">↑</span>
              </>
            ) : (
              <>
                Sorted in Descending Order <span className="ml-2">↓</span>
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

        {/* Pagination Controls */}
        <div className="w-full text-center mt-10">
          <div className="inline-flex items-center space-x-4">
            <button
              onClick={() => handlePageChange(currentPage - 1)}
              disabled={currentPage === 1}
              className="px-4 py-2 bg-purpleWhite hover:bg-purple text-darkPurple rounded-full text-lg transition duration-300"
            >
              Prev
            </button>

            {/* Display Page Numbers */}
            {[...Array(totalPages)].map((_, index) => (
              <button
                key={index}
                onClick={() => handlePageChange(index + 1)}
                className={`px-4 py-2 ${currentPage === index + 1 ? 'bg-purple text-purpleWhite' : 'bg-transparent text-white'} hover:bg-purple hover:text-purpleWhite rounded-full text-lg transition duration-300`}
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
