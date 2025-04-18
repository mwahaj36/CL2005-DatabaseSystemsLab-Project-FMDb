import React, { useState } from "react";
import Navbar from "@/components/Navbar";
import Footer from "@/components/Footer";
import { useAuth } from "@/context/AuthContext";

export default function AdminPanel() {
  const { token } = useAuth();
  const [loading, setLoading] = useState(false);
  const [successMessage, setSuccessMessage] = useState("");
  const [errorMessage, setErrorMessage] = useState("");

  // Add Movie States
  const [movie, setMovie] = useState({
    title: "",
    type: "Movie",
    synopsis: "",
    releaseDate: "",
    movieLength: "",
    moviePosterLink: "",
    movieBackdropLink: "",
    language: "English", // Added language field
    imdbRating: "",
    fmdbRating: "",
    awards: "",
    boxOffice: "",
    mpaaRating: "",
    genres: "",
    keywords: "",
    actors: "",
    directors: "",
    writers: ""
  });

  // Admin Controls States
  const [movieIdToDelete, setMovieIdToDelete] = useState("");
  const [userIdToRemove, setUserIdToRemove] = useState("");

  const handleMovieChange = (e) => {
    setMovie({ ...movie, [e.target.name]: e.target.value });
  };

  const handleAddMovie = async (e) => {
    e.preventDefault();
    setLoading(true);
    setSuccessMessage("");
    setErrorMessage("");
  
    try {
      // Format date to YYYY-MM-DD
      const formattedDate = movie.releaseDate
        ? new Date(movie.releaseDate).toISOString().split('T')[0]
        : "";
  
      // Format actors array properly
      const formattedActors = movie.actors
        .split(';')
        .filter(actor => actor.trim())
        .map(actor => {
          const [name, character] = actor.split(' as ').map(part => part.trim());
          return { 
            name: name || "", 
            character: character || "" 
          };
        });
  
      // Prepare the movie data for API
      const formattedMovie = {
        title: movie.title,
        type: movie.type,
        synopsis: movie.synopsis,
        releaseDate: formattedDate,
        movieLength: movie.movieLength,
        moviePosterLink: movie.moviePosterLink,
        movieBackdropLink: movie.movieBackdropLink,
        language: movie.language,
        imdbRating: parseFloat(movie.imdbRating) || 0,
        fmdbRating: parseFloat(movie.fmdbRating) || 0,
        awards: movie.awards,
        boxOffice: movie.boxOffice,
        mpaaRating: movie.mpaaRating,
        genres: movie.genres.split(',').map(g => g.trim()).filter(g => g),
        keywords: movie.keywords.split(',').map(k => k.trim()).filter(k => k),
        actors: formattedActors,
        directors: movie.directors.split(',').map(d => d.trim()).filter(d => d),
        writers: movie.writers.split(',').map(w => w.trim()).filter(w => w)
      };
  
      const response = await fetch('http://localhost:5000/admin/movie', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`
        },
        body: JSON.stringify(formattedMovie)
      });
  
      const data = await response.json();
  
      if (!response.ok) {
        throw new Error(data.message || 'Failed to add movie');
      }
  
      setSuccessMessage(`Movie added successfully! ID: ${data.movieId}`);
      // Reset form
      setMovie({
        title: "",
        type: "Movie",
        synopsis: "",
        releaseDate: "",
        movieLength: "",
        moviePosterLink: "",
        movieBackdropLink: "",
        language: "English",
        imdbRating: "",
        fmdbRating: "",
        awards: "",
        boxOffice: "",
        mpaaRating: "",
        genres: "",
        keywords: "",
        actors: "",
        directors: "",
        writers: ""
      });
  
    } catch (error) {
      setErrorMessage(error.message || "Failed to add movie. Please check all fields.");
      console.error("Error adding movie:", error);
    } finally {
      setLoading(false);
    }
  };

  const handleDeleteMovie = async () => {
    if (!movieIdToDelete) {
      setErrorMessage("Please enter a Movie ID");
      return;
    }

    setLoading(true);
    setSuccessMessage("");
    setErrorMessage("");

    try {
      const response = await fetch(`http://localhost:5000/admin/movie/${movieIdToDelete}`, {
        method: 'DELETE',
        headers: {
          'Authorization': `Bearer ${token}`
        }
      });

      const data = await response.json();

      if (!response.ok) {
        throw new Error(data.message || 'Failed to delete movie');
      }

      setSuccessMessage(data.message);
      setMovieIdToDelete("");
    } catch (error) {
      setErrorMessage(error.message);
    } finally {
      setLoading(false);
    }
  };

  const handleRemoveUser = async () => {
    if (!userIdToRemove) {
      setErrorMessage("Please enter a User ID");
      return;
    }

    setLoading(true);
    setSuccessMessage("");
    setErrorMessage("");

    try {
      const response = await fetch(`http://localhost:5000/admin/user/${userIdToRemove}`, {
        method: 'DELETE',
        headers: {
          'Authorization': `Bearer ${token}`
        }
      });

      const data = await response.json();

      if (!response.ok) {
        throw new Error(data.message || 'Failed to remove user');
      }

      setSuccessMessage(data.message);
      setUserIdToRemove("");
    } catch (error) {
      setErrorMessage(error.message);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="min-h-screen bg-gradient-to-b from-darkPurple via-purpleWhite to-darkPurple text-white">
      <div className="relative bg-cover bg-center bg-fixed" style={{ backgroundImage: "url('https://images5.alphacoders.com/825/825367.jpg')" }}>
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
        <Navbar />
        <div className="relative z-10 flex flex-col items-center px-6 py-10">
          <h1 className="md:text-7xl text-4xl font-bold text-white mb-10">Admin Panel</h1>

          {/* Success and Error Messages */}
          {successMessage && (
            <div className="mb-6 p-4 bg-green-500 text-white rounded-lg max-w-7xl w-full text-center">
              {successMessage}
            </div>
          )}
          {errorMessage && (
            <div className="mb-6 p-4 bg-red-500 text-white rounded-lg max-w-7xl w-full text-center">
              {errorMessage}
            </div>
          )}

          <div className="flex flex-col lg:flex-row w-full max-w-7xl gap-8">
            {/* LEFT: Add Movie Form */}
            <form
              className="flex-1 bg-black bg-opacity-70 p-8 rounded-2xl shadow-xl space-y-4 backdrop-blur-sm"
              onSubmit={handleAddMovie}
            >
              <h2 className="text-3xl font-bold text-center mb-6 text-white">Add New Movie</h2>
              
              <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div>
                  <label className="block font-semibold mb-1">Title*</label>
                  <input
                    type="text"
                    name="title"
                    value={movie.title}
                    onChange={handleMovieChange}
                    className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple"
                    required
                  />
                </div>

                <div>
                  <label className="block font-semibold mb-1">Type*</label>
                  <select
                    name="type"
                    value={movie.type}
                    onChange={handleMovieChange}
                    className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple"
                    required
                  >
                    <option value="Movie">Movie</option>
                    <option value="TV Series">TV Series</option>
                  </select>
                </div>

                <div className="md:col-span-2">
                  <label className="block font-semibold mb-1">Synopsis*</label>
                  <textarea
                    name="synopsis"
                    value={movie.synopsis}
                    onChange={handleMovieChange}
                    className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple min-h-[100px]"
                    required
                  />
                </div>

                <div>
                  <label className="block font-semibold mb-1">Release Date*</label>
                  <input
                    type="date"
                    name="releaseDate"
                    value={movie.releaseDate}
                    onChange={handleMovieChange}
                    className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple"
                    required
                  />
                </div>

                <div>
                  <label className="block font-semibold mb-1">Runtime (e.g. 2h 28m)</label>
                  <input
                    type="text"
                    name="movieLength"
                    value={movie.movieLength}
                    onChange={handleMovieChange}
                    className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple"
                  />
                </div>

                <div>
                  <label className="block font-semibold mb-1">Poster URL*</label>
                  <input
                    type="url"
                    name="moviePosterLink"
                    value={movie.moviePosterLink}
                    onChange={handleMovieChange}
                    className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple"
                    required
                  />
                </div>

                <div>
                  <label className="block font-semibold mb-1">Backdrop URL</label>
                  <input
                    type="url"
                    name="movieBackdropLink"
                    value={movie.movieBackdropLink}
                    onChange={handleMovieChange}
                    className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple"
                  />
                </div>

                <div>
                  <label className="block font-semibold mb-1">IMDB Rating</label>
                  <input
                    type="number"
                    step="0.1"
                    min="0"
                    max="10"
                    name="imdbRating"
                    value={movie.imdbRating}
                    onChange={handleMovieChange}
                    className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple"
                  />
                </div>

                <div>
                  <label className="block font-semibold mb-1">FMDB Rating</label>
                  <input
                    type="number"
                    step="0.1"
                    min="0"
                    max="10"
                    name="fmdbRating"
                    value={movie.fmdbRating}
                    onChange={handleMovieChange}
                    className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple"
                  />
                </div>

                <div>
                  <label className="block font-semibold mb-1">MPAA Rating</label>
                  <input
                    type="text"
                    name="mpaaRating"
                    value={movie.mpaaRating}
                    onChange={handleMovieChange}
                    className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple"
                  />
                </div>

                <div>
                  <label className="block font-semibold mb-1">Box Office</label>
                  <input
                    type="text"
                    name="boxOffice"
                    value={movie.boxOffice}
                    onChange={handleMovieChange}
                    className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple"
                  />
                </div>

                <div>
                  <label className="block font-semibold mb-1">Genres (comma separated)*</label>
                  <input
                    type="text"
                    name="genres"
                    value={movie.genres}
                    onChange={handleMovieChange}
                    className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple"
                    required
                  />
                </div>

                <div>
                  <label className="block font-semibold mb-1">Keywords (comma separated)</label>
                  <input
                    type="text"
                    name="keywords"
                    value={movie.keywords}
                    onChange={handleMovieChange}
                    className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple"
                  />
                </div>

                <div className="md:col-span-2">
                  <label className="block font-semibold mb-1">Actors (format: Name as Character; Name as Character)</label>
                  <textarea
                    name="actors"
                    value={movie.actors}
                    onChange={handleMovieChange}
                    className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple min-h-[80px]"
                  />
                </div>

                <div>
                  <label className="block font-semibold mb-1">Directors (comma separated)</label>
                  <input
                    type="text"
                    name="directors"
                    value={movie.directors}
                    onChange={handleMovieChange}
                    className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple"
                  />
                </div>

                <div>
                  <label className="block font-semibold mb-1">Writers (comma separated)</label>
                  <input
                    type="text"
                    name="writers"
                    value={movie.writers}
                    onChange={handleMovieChange}
                    className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple"
                  />
                </div>

                <div className="md:col-span-2">
                  <label className="block font-semibold mb-1">Awards</label>
                  <textarea
                    name="awards"
                    value={movie.awards}
                    onChange={handleMovieChange}
                    className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple min-h-[80px]"
                  />
                </div>
              </div>

              <button 
                type="submit" 
                className="w-full py-3 mt-6 bg-purple text-white font-bold rounded-lg hover:bg-opacity-90 transition-colors"
                disabled={loading}
              >
                {loading ? 'Adding Movie...' : 'Add Movie'}
              </button>
            </form>

            {/* RIGHT: Other Functionalities */}
            <div className="flex-1 flex flex-col gap-8">
              {/* Delete Movie */}
              <div className="bg-black bg-opacity-70 p-8 rounded-2xl shadow-xl backdrop-blur-sm">
                <h2 className="text-2xl font-bold mb-4 text-white">Delete Movie</h2>
                <div className="space-y-4">
                  <div>
                    <label className="block font-semibold mb-1">Movie ID*</label>
                    <input
                      type="text"
                      placeholder="Enter Movie ID"
                      value={movieIdToDelete}
                      onChange={(e) => setMovieIdToDelete(e.target.value)}
                      className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple"
                    />
                  </div>
                  <button
                    onClick={handleDeleteMovie}
                    className="w-full py-3 bg-purple text-white font-bold rounded-lg hover:bg-opacity-90 transition-colors"
                    disabled={loading}
                  >
                    {loading ? 'Deleting...' : 'Delete Movie'}
                  </button>
                </div>
              </div>

              {/* Remove User */}
              <div className="bg-black bg-opacity-70 p-8 rounded-2xl shadow-xl backdrop-blur-sm">
                <h2 className="text-2xl font-bold mb-4 text-white">Remove User</h2>
                <div className="space-y-4">
                  <div>
                    <label className="block font-semibold mb-1">User ID*</label>
                    <input
                      type="text"
                      placeholder="Enter User ID"
                      value={userIdToRemove}
                      onChange={(e) => setUserIdToRemove(e.target.value)}
                      className="w-full px-4 py-2 rounded-lg bg-white text-darkPurple"
                    />
                  </div>
                  <button
                    onClick={handleRemoveUser}
                    className="w-full py-3 bg-purple text-white font-bold rounded-lg hover:bg-opacity-90 transition-colors"
                    disabled={loading}
                  >
                    {loading ? 'Removing...' : 'Remove User'}
                  </button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <Footer />
    </div>
  );
}