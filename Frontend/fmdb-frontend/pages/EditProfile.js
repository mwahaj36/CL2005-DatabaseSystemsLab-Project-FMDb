import React, { useState, useEffect } from 'react';
import { useAuth } from '@/context/AuthContext';
import EditFavorite from '@/components/EditFavorite'; // Assuming you already have this component
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import FMDBDatabase from '../data/FMDBDatabase.json'; // Assuming you have the JSON file

export default function EditProfile() {
  const { user } = useAuth();
  const [profilePic, setProfilePic] = useState(user?.profilePic || "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKf1Vb-G8-IbQ0eLAAjFYGI62Obzzc-R4WvA&s");
  
  // Split full name from user data
  const [firstName, setFirstName] = useState(user?.fullName ? user.fullName.split(" ")[0] : "Muhammad");
  const [lastName, setLastName] = useState(user?.fullName ? user.fullName.split(" ")[1] || "" : "Wahaj");
  const [gender, setGender] = useState(user?.gender || "Not Specified");
  const [email, setEmail] = useState(user?.email || "example@email.com");
  const [bio, setBio] = useState(user?.bio || "");
  const [userType, setUserType] = useState(user?.userType || "user");
  const [dob, setDob] = useState(user?.dob || "");  // New state for Date of Birth
  const [background, setBackground] = useState("https://image.tmdb.org/t/p/original/v8Nf6Y1qL1Q3PWTBezXNPPaXqza.jpg");  // New state for background image
  const [privacy, setprivacy] = useState(user?.privacy || "public"); // New state for account privacy

  // Update favorites data from the user context
  const favoriteMovies = user?.userFavs || [];

  useEffect(() => {
    if (favoriteMovies.length > 0) {
      // Get the first favorite movie
      const firstFavMovie = FMDBDatabase.find((movie) => movie.MovieID === favoriteMovies[0]);

      if (firstFavMovie) {
        setBackground(firstFavMovie.Backdrop); // Set background using the movie's backdrop
      }
    }
  }, [favoriteMovies]);

  // Get the full movie objects for the favorites
  const favoriteMovieDetails = favoriteMovies.length > 0 
    ? favoriteMovies.map(movieId => 
        FMDBDatabase.find(movie => movie.MovieID === movieId)
      ).filter(movie => movie !== undefined) // Ensure we only pass valid movie objects
    : [];

  // Dummy function to toggle account privacy
  const toggleprivacy = () => {
    setprivacy(prevState => prevState === 'public' ? 'private' : 'public');
    console.log(`Account is now ${privacy === 'public' ? 'private' : 'public'}`);
  };

  return (
    <section
      className="relative bg-cover bg-center bg-fixed"
      style={{ backgroundImage: `url(${background})` }}
    >
      <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
      <Navbar />
      <section id="edit-favorite" className="relative">
        <div className="max-w-6xl px-5 mx-auto mt-10 text-center relative z-10">
          <h2 className="text-6xl text-white text-shadow font-bold text-center">
            Edit Favourites
          </h2>
          <div className="flex flex-col mt-24 md:flex-row md:space-x-6 space-y-20 md:space-y-0">
            {/* Pass empty array if no favorite movies */}
            {favoriteMovieDetails.length > 0 ? (
              favoriteMovieDetails.map((movie, index) => (
                <EditFavorite
                  key={movie.MovieID}
                  movie={movie}
                  onFavoriteSelect={(selected) => {
                    console.log("Selected new favorite movie: " + selected.Title);
                    // Optional: add logic to update user's favorites
                  }}
                />
              ))
            ) : (
              // Pass empty array when no favorite movies
              <EditFavorite
                movie={[]}
                onFavoriteSelect={() => {}}
              />
            )}
          </div>
        </div>
      </section>

      <div className="relative font-std w-full -pt-14 rounded-2xl font-normal leading-relaxed py-4">
        <h2 className="relative mb-5 text-center pt-10 pb-10 text-6xl font-bold text-white">
          Edit Profile
        </h2>
        <div className="relative -pt-30 flex flex-col md:flex-row pr-40 items-start justify-between">
          <div className="w-full md:w-1/3 text-center mb-6 md:mb-0 flex flex-col items-center pt-8 min-h-screen">
            <img
              src={profilePic}
              alt="Profile Picture"
              className="w-72 h-72 rounded-xl mx-auto mb-4"
            />
            <button className="bg-purpleWhite px-16 text-darkPurple px-4 py-2 rounded-lg hover:bg-purple hover:text-white transition-colors duration-300">
              Change Profile Picture
            </button>
          </div>

          {/* Right Side: Profile Form */}
          <div className="w-full md:w-2/3">
            <form className="space-y-4">
              <div className="flex space-x-4">
                <div className="w-1/2">
                  <label htmlFor="first_name" className="block text-sm font-bold text-xl text-white">First Name</label>
                  <input
                    type="text"
                    id="first_name"
                    className="w-full px-3 py-2 bg-purpleWhite text-darkPurple focus:text-purple rounded-md"
                    value={firstName}
                    onChange={(e) => setFirstName(e.target.value)}
                  />
                </div>
                <div className="w-1/2">
                  <label htmlFor="last_name" className="block text-sm font-bold text-xl text-white">Last Name</label>
                  <input
                    type="text"
                    id="last_name"
                    className="w-full px-3 py-2 bg-purpleWhite text-darkPurple focus:text-purple rounded-md"
                    value={lastName}
                    onChange={(e) => setLastName(e.target.value)}
                  />
                </div>
              </div>

              <div className="flex space-x-4">
                <div className="w-1/2">
                  <label htmlFor="email" className="block text-sm font-bold text-xl text-white">Email</label>
                  <input
                    type="email"
                    id="email"
                    className="w-full px-3 py-2 bg-purpleWhite text-darkPurple focus:text-purple rounded-md"
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                  />
                </div>
                <div className="w-1/2">
                  <label htmlFor="userType" className="block text-sm font-bold text-xl text-white">User Type</label>
                  <select
                    id="userType"
                    className="w-full px-3 py-3 bg-purpleWhite text-darkPurple focus:text-purple rounded-md"
                    value={userType}
                    onChange={(e) => setUserType(e.target.value)}
                  >
                    <option value="user">User</option>
                    <option value="verified critic">Verified Critic</option>
                  </select>
                </div>
              </div>

              <div>
                <label htmlFor="bio" className="block text-sm font-bold text-xl text-white">Bio</label>
                <textarea
                  id="bio"
                  className="w-full px-3 py-2 bg-purpleWhite text-darkPurple focus:text-purple rounded-md"
                  value={bio}
                  onChange={(e) => setBio(e.target.value)}
                />
              </div>

              <div className="flex space-x-4">
                <div className="w-1/2">
                  <label htmlFor="dob" className="block text-sm font-bold text-xl text-white">Date of Birth</label>
                  <input
                    type="date"
                    id="dob"
                    className="w-full px-3 py-2 bg-purpleWhite text-darkPurple focus:text-purple rounded-md"
                    value={dob}
                    onChange={(e) => setDob(e.target.value)}
                  />
                </div>
                <div className="w-1/2">
                  <label htmlFor="gender" className="block text-sm font-bold text-xl text-white">Gender</label>
                  <select
                    id="gender"
                    className="w-full px-3 py-3 bg-purpleWhite text-darkPurple focus:text-purple rounded-md"
                    value={gender}
                    onChange={(e) => setGender(e.target.value)}
                  >
                    <option value="Not Specified">Not Specified</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                  </select>
                </div>

                <div className="w-1/2">
                  <label htmlFor="privacy" className="block text-sm font-bold text-xl text-white">Account Privacy</label>
                  <button
                    type="button"
                    id="privacy"
                    className="w-full px-3 py-2 bg-purpleWhite text-darkPurple text-left focus:text-purple rounded-md"
                    onClick={toggleprivacy}
                  >
                    {privacy === 'public' ? 'Public' : 'Private'}
                  </button>
                </div>
              </div>

              <div className="flex justify-end space-x-4">
                <a href="/ChangePass" className="px-4 py-2 font-bold text-white hover:text-purpleWhite">Change Password</a>
                <a href="/Profile" type="button" className="px-4 py-2 font-bold bg-purpleWhite text-darkPurple rounded-lg">Cancel</a>
                <a href="/Profile" type="submit" className="px-4 py-2 font-bold bg-purple text-white rounded-lg">Save Changes</a>
              </div>
            </form>
          </div>

        </div>
      </div>
      <Footer />
    </section>
  );
}
