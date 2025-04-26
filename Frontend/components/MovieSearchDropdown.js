import { useState, useRef, useEffect } from "react";
import { useRouter } from "next/router";

const DropdownSearch = ({ onClose }) => {
  const router = useRouter();
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
        `http://localhost:5000/movies/search/title/${encodeURIComponent(searchTerm)}`
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

  const handleSelect = (movie) => {
    // Navigate to movie details page using Next.js router
    router.push(`/movie/${movie.movieid}`);
    // Clear the search results
    setFilteredMovies([]);
    setQuery("");
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

  const handleClose = (e) => {
    e.stopPropagation();
    onClose();
  };

  return (
    <div className="fixed inset-0 bg-black bg-opacity-60 flex items-center justify-center z-50">
      <div ref={wrapperRef} className="bg-darkPurple p-6 rounded-lg w-full max-w-md shadow-lg relative">
        <button
          className="absolute top-2 right-3 text-xl font-bold text-white hover:text-purple"
          onClick={handleClose}
        >
          &times;
        </button>

        <input
          type="text"
          className="w-full px-4 py-4 border-white border-2 bg-darkPurple rounded-md focus:outline-none focus:ring-2 focus:ring-purple mb-4"
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
                onClick={() => handleSelect(movie)}
              >
                <img
                  src={movie.movieposterlink}
                  alt={movie.title}
                  className="w-16 h-24 object-cover mr-4"
                  onError={(e) => {
                    e.target.src = 'https://via.placeholder.com/80x120?text=No+Poster';
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

export default DropdownSearch;