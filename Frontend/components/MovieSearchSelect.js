// components/MovieSearchSelect.js
import { useState, useRef, useEffect } from "react";

const MovieSearchSelect = ({ onSelect, onClose }) => {
  const [query, setQuery] = useState("");
  const [filteredMovies, setFilteredMovies] = useState([]);
  const [isLoading, setIsLoading] = useState(false);
  const wrapperRef = useRef(null);

  // Debounce function to limit API calls
  const debounce = (func, delay) => {
    let timer;
    return function (...args) {
      clearTimeout(timer);
      timer = setTimeout(() => func.apply(this, args), delay);
    };
  };

  const searchMovies = async (searchTerm) => {
    if (searchTerm.trim() === "") {
      setFilteredMovies([]);
      return;
    }

    setIsLoading(true);
    try {
      const response = await fetch(
        `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/movies/search/title/${encodeURIComponent(searchTerm)}`
      );
      const data = await response.json();
      if (data.success) {
        setFilteredMovies(data.movies);
      } else {
        setFilteredMovies([]);
      }
    } catch (error) {
      console.error("Error searching movies:", error);
      setFilteredMovies([]);
    } finally {
      setIsLoading(false);
    }
  };

  // Debounced version of searchMovies
  const debouncedSearch = debounce(searchMovies, 300);

  const handleInputChange = (e) => {
    const value = e.target.value;
    setQuery(value);
    debouncedSearch(value);
  };

  const handleMovieSelect = (movie) => {
    onSelect(movie);
    onClose();
  };

  // Handle outside click to close the dropdown
  useEffect(() => {
    const handleClickOutside = (event) => {
      if (wrapperRef.current && !wrapperRef.current.contains(event.target)) {
        onClose();
      }
    };
    document.addEventListener("mousedown", handleClickOutside);
    return () => document.removeEventListener("mousedown", handleClickOutside);
  }, [onClose]);

  return (
    <div className="fixed inset-0 bg-black bg-opacity-60 flex items-center justify-center z-60">
      <div
        ref={wrapperRef}
        className="bg-darkPurple p-6 rounded-lg w-full max-w-md shadow-lg relative sm:max-w-sm"
      >
        <button
          className="absolute top-2 right-3 text-xl font-bold text-white hover:text-purple"
          onClick={onClose}
        >
          &times;
        </button>

        <input
          type="text"
          className="w-full px-4 py-4 border-white border-2 bg-darkPurple text-white rounded-md focus:outline-none focus:ring-2 focus:ring-purple mb-4"
          placeholder="Search for a movie..."
          value={query}
          onChange={handleInputChange}
          autoFocus
        />

        {isLoading && (
          <div className="text-white text-center py-4">Loading...</div>
        )}

        {!isLoading && filteredMovies.length > 0 && (
          <ul className="border rounded-md shadow max-h-60 overflow-y-auto">
            {filteredMovies.map((movie, index) => (
              <li
                key={index}
                className="px-4 py-2 hover:bg-purple text-white cursor-pointer flex items-center"
                onClick={() => handleMovieSelect(movie)}
              >
                <img
                  src={movie.movieposterlink}
                  alt={movie.title}
                  className="w-16 h-24 object-cover mr-4"
                  onError={(e) => {
                    e.target.src =
                      "https://via.placeholder.com/80x120?text=No+Poster";
                  }}
                />
                <div className="flex flex-col">
                  <span className="font-semibold">{movie.title}</span>
                  <span className="text-sm text-left text-purpleWhite">
                    {movie.directors?.join(", ")}
                  </span>
                </div>
              </li>
            ))}
          </ul>
        )}

        {!isLoading && query && filteredMovies.length === 0 && (
          <div className="text-white text-center py-4">No movies found</div>
        )}
      </div>
    </div>
  );
};

export default MovieSearchSelect;