import React, { useState } from "react";
import Navbar from "@/components/Navbar";
import Footer from "@/components/Footer";

export default function AdminPanel() {
  // Add Movie States
  const [movie, setMovie] = useState({
    title: "",
    directors: "",
    topCast: "",
    writers: "",
    genre: "",
    keywords: "",
    posterUrl: "",
    backdropUrl: "",
    releaseDate: "",
    boxOffice: "",
    mpaaRating: "",
    awards: "",
  });

  // Admin Controls States
  const [movieIdToDelete, setMovieIdToDelete] = useState("");
  const [userIdToRemove, setUserIdToRemove] = useState("");
  const [userIdToUpdate, setUserIdToUpdate] = useState("");
  const [newUserType, setNewUserType] = useState("");

  const handleMovieChange = (e) => {
    setMovie({ ...movie, [e.target.name]: e.target.value });
  };

  const handleAddMovie = (e) => {
    e.preventDefault();
    console.log("Add Movie:", movie);
    // TODO: Call backend API to add movie
  };

  const handleDeleteMovie = () => {
    console.log("Delete Movie ID:", movieIdToDelete);
    // TODO: Call backend API to delete movie
  };

  const handleRemoveUser = () => {
    console.log("Remove User ID:", userIdToRemove);
    // TODO: Call backend API to remove user
  };

  const handleChangeUserType = () => {
    console.log("Change User Type for ID:", userIdToUpdate, "to", newUserType);
    // TODO: Call backend API to change user type
  };

  return (
    <div className="min-h-screen bg-gradient-to-b from-darkPurple via-purpleWhite to-darkPurple text-white">
        <div className="relative bg-cover bg-center bg-fixed" style={{ backgroundImage: "url('https://images5.alphacoders.com/825/825367.jpg')" }}>
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
      <Navbar />
      <div className="relative z-10 flex flex-col items-center px-6 py-10">
        <h1 className="md:text-7xl text-4xl font-bold text-white mb-10">Admin Panel</h1>

        <div className="flex w-full max-w-7xl gap-10">
          {/* LEFT: Add Movie Form */}
          <form
            className="flex-1 bg-black bg-opacity-60 p-6 rounded-2xl shadow-md space-y-4"
            onSubmit={handleAddMovie}
          >
            <h2 className="text-2xl font-bold text-center mb-4 text-white">Add a New Movie</h2>
            {Object.entries(movie).map(([field, value]) => (
              <div key={field}>
                <label className="block font-semibold capitalize">{field.replace(/([A-Z])/g, " $1")}</label>
                <input
                  type="text"
                  name={field}
                  value={value}
                  onChange={handleMovieChange}
                  className="w-full px-3 py-2 mt-1 rounded-md bg-white text-darkPurple"
                />
              </div>
            ))}
            <button type="submit" className="w-full py-2 mt-4 bg-purple text-white font-bold rounded-lg">
              Add Movie
            </button>
          </form>

          {/* RIGHT: Other Functionalities */}
          <div className="flex-1 flex flex-col gap-6">
            {/* Delete Movie */}
            <div className="bg-black bg-opacity-60 p-6 rounded-2xl shadow-md">
              <h2 className="text-xl font-bold mb-3 text-white">Delete Movie</h2>
              <input
                type="text"
                placeholder="Enter Movie ID"
                value={movieIdToDelete}
                onChange={(e) => setMovieIdToDelete(e.target.value)}
                className="w-full bg-white px-3 py-2 rounded-md mb-2"
              />
              <button
                onClick={handleDeleteMovie}
                className="w-full py-2 bg-purple text-white font-bold rounded-lg"
              >
                Delete Movie
              </button>
            </div>

            {/* Remove User */}
            <div className="bg-black bg-opacity-60 p-6 rounded-2xl shadow-md">
              <h2 className="text-xl font-bold mb-3 text-white">Remove User</h2>
              <input
                type="text"
                placeholder="Enter User ID"
                value={userIdToRemove}
                onChange={(e) => setUserIdToRemove(e.target.value)}
                className="w-full bg-white px-3 py-2 rounded-md mb-2"
              />
              <button
                onClick={handleRemoveUser}
                className="w-full py-2 bg-purple text-white font-bold rounded-lg"
              >
                Remove User
              </button>
            </div>

            {/* Change User Type */}
            <div className="bg-black bg-opacity-60 p-6 rounded-2xl shadow-md">
              <h2 className="text-xl font-bold mb-3 text-white">Change User Type</h2>
              <input
                type="text"
                placeholder="Enter User ID"
                value={userIdToUpdate}
                onChange={(e) => setUserIdToUpdate(e.target.value)}
                className="w-full bg-white px-3 py-2 rounded-md mb-2"
              />
              <select
                value={newUserType}
                onChange={(e) => setNewUserType(e.target.value)}
                className="w-full bg-white text-black text-opacity-40 px-3 py-2 rounded-md mb-2"
              >
                <option value="">Select User Type</option>
                <option value="Admin">Admin</option>
                <option value="Verified Critic">Verified Critic</option>
              </select>
              <button
                onClick={handleChangeUserType}
                className="w-full py-2 bg-purple text-white font-bold rounded-lg"
              >
                Change Role
              </button>
            </div>
          </div>
        </div>
      </div>
      </div>
      <Footer />
    </div>
  );
}
