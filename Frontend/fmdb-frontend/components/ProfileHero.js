import { useRouter } from 'next/router';
import Link from 'next/link';
import { useState } from 'react';
import Error from '@/components/Error'; // adjust path as necessary

const ProfileHero = ({
  profileUser,
  currentUser,
  isFriend,
  onAddFriend,
  onRemoveFriend,
  onEditProfile,
}) => {
  const router = useRouter();
  const [errorMessage, setErrorMessage] = useState('');

  const handleAddFriend = () => {
    if (!currentUser) {
      setErrorMessage("You must be logged in to add friends.");
      return;
    }
    onAddFriend();
  };

  const handleRemoveFriend = () => {
    if (!currentUser) {
      setErrorMessage("You must be logged in to remove friends.");
      return;
    }
    onRemoveFriend();
  };

  const handleLoggedMoviesClick = () => {
    router.push(`/logged/${profileUser.userID}`);
  };

  return (
    <section id="hero" className="relative -mt-14">
      {/* Error popup */}
      {errorMessage && <Error message={errorMessage} onClose={() => setErrorMessage('')} />}

      <div className="relative z-10 mt-20 items-center container flex flex-row px-6 mx-auto space-y-0 md:space-y-0">
        
        {/* Profile Picture */}
        <div className="flex flex-col items-center p-6 rounded-xl md:w-1/5">
          <img
            src={profileUser.profilePic}
            alt="Profile"
            className="shadow-lg rounded-xl transition-transform duration-300 hover:scale-105"
          />

          {/* Friends / Watchlist Cards */}
          <div className="mt-4 grid grid-cols-2 gap-4">
            <button
              onClick={() => setErrorMessage("View Following (coming soon)")}
              className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-xl p-3 shadow-md flex flex-col items-center justify-center text-center h-16"
            >
              <p className="text-purpleWhite text-sm md:text-xl font-semibold">Friends</p>
            </button>

            <button
              onClick={() => setErrorMessage("View Watchlist (coming soon)")}
              className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-xl p-3 shadow-md flex flex-col items-center justify-center text-center h-16"
            >
              <p className="text-purpleWhite text-sm md:text-xl font-semibold">Watchlist</p>
            </button>
          </div>
        </div>

        {/* Profile Info */}
        <div className="flex flex-col mb-40 md:w-4/5">
          <div className="w-full flex items-center justify-between flex-wrap">
            <div className="flex items-end space-x-4">
              <h1 className="text-white text-3xl font-bold md:text-6xl">{profileUser.fullName}</h1>
            </div>

            {/* Action Buttons */}
            <div className="flex space-x-4">
              {profileUser.userID === currentUser?.userID && (
                <Link
                  href="/EditProfile"
                  className="px-4 py-2 text-darkPurple bg-purpleWhite rounded-xl hover:bg-purple hover:text-purpleWhite"
                >
                  Edit Profile
                </Link>
              )}

              {profileUser.userID !== currentUser?.userID && (
                isFriend ? (
                  <button
                    onClick={handleRemoveFriend}
                    className="px-4 py-2 text-darkPurple bg-purpleWhite rounded-xl hover:bg-purple hover:text-purpleWhite"
                  >
                    Remove Friend
                  </button>
                ) : (
                  <button
                    onClick={handleAddFriend}
                    className="px-4 py-2 text-darkPurple bg-purpleWhite rounded-xl hover:bg-purple hover:text-purpleWhite"
                  >
                    Add Friend
                  </button>
                )
              )}
            </div>
          </div>

          <div>
            {profileUser.userID && (
              <p className="text-white text-md md:text-3xl font-semibold">{profileUser.userID}</p>
            )}
          </div>

          {/* Bio */}
          <div className="mt-2 bg-black bg-opacity-40 p-6 rounded-xl shadow-xl">
            <p className="text-white text-sm md:text-xl leading-relaxed drop-shadow-xl">
              {profileUser.bio || 'up wonking me willy'}
            </p>
          </div>

          {/* Stats */}
          <div className="mt-2 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
            {/* Movies Watched */}
            <div className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-xl p-4 shadow-lg flex flex-col items-center justify-center text-center">
              <p className="text-purpleWhite text-md md:text-lg font-semibold">Movies Watched</p>
              <p className="text-white text-sm md:text-7xl font-bold">{profileUser.moviesWatched || 1421}</p>
            </div>

            {/* Movies Logged */}
            <button
              onClick={handleLoggedMoviesClick}
              className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-xl p-4 shadow-lg flex flex-col items-center justify-center text-center cursor-pointer"
            >
              <p className="text-purpleWhite text-md md:text-lg font-semibold">Movies Logged</p>
              <p className="text-white text-sm md:text-7xl font-bold">{profileUser.moviesLogged || 62}</p>
            </button>

            {/* Likes */}
            <div className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-xl p-4 shadow-lg flex flex-col items-center justify-center text-center">
              <p className="text-purpleWhite text-md md:text-lg font-semibold">Likes</p>
              <p className="text-white text-sm md:text-7xl font-bold">{profileUser.likes || 142}</p>
            </div>

            {/* User Type */}
            <div
              className={`${
                profileUser.userType === 'admin'
                  ? 'bg-emeraldGreen'
                  : profileUser.userType === 'verified critic'
                  ? 'bg-gold'
                  : 'bg-darkPurple'
              } bg-opacity-60 rounded-xl p-4 shadow-lg flex flex-col items-center justify-center text-center`}
            >
              <p className="text-purpleWhite text-md md:text-lg font-semibold">User Type</p>
              <p className="text-white text-sm md:text-4xl font-bold leading-tight">
                {profileUser.userType || 'User'}
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default ProfileHero;
