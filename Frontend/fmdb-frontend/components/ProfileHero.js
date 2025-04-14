const ProfileHero = ({ profileUser, currentUser, isFriend, onAddFriend, onRemoveFriend, onEditProfile }) => {
  // Handle "Add Friend" and "Remove Friend" logic only if currentUser is not null
  const handleAddFriend = () => {
    if (!currentUser) {
      alert("You must be logged in to add friends.");
      return;
    }
    onAddFriend();
  };

  const handleRemoveFriend = () => {
    if (!currentUser) {
      alert("You must be logged in to remove friends.");
      return;
    }
    onRemoveFriend();
  };

  return (
    <section id="hero" className="relative -mt-14">
      <div className="relative z-10 mt-20 items-center container flex flex-row px-6 mx-auto space-y-0 md:space-y-0">
        
        {/* Profile Picture */}
        <div className="flex flex-col items-center p-6 space-y-6 rounded-lg bg-veryLightGray md:w-1/4">
          <img
            src={profileUser.profilePic}
            alt="Profile"
            className="shadow-lg rounded-lg transition-transform duration-300 hover:scale-105"
          />
        </div>

        {/* Profile Info */}
        <div className="flex flex-col mb-40 md:w-4/5">
          
          {/* userID and Full Name */}
          <div className="w-full flex items-center justify-between flex-wrap">
            <div className="flex items-end space-x-4">
              <h1 className="text-white text-3xl font-bold md:text-6xl">{profileUser.userID}</h1>
            </div>

            {/* Action Buttons */}
            <div className="flex space-x-4">
              {/* Edit Profile (only if own profile) */}
              {profileUser.userID === currentUser?.userID && (
                <button
                  onClick={onEditProfile}
                  className="px-4 py-2 text-darkPurple bg-purpleWhite rounded-3xl hover:bg-purple hover:text-purpleWhite"
                >
                  Edit Profile
                </button>
              )}

              {/* Add/Remove Friend (based on friendship status and logged-in status) */}
              {profileUser.userID !== currentUser?.userID && (
                isFriend ? (
                  <button
                    onClick={handleRemoveFriend}
                    className="px-4 py-2 text-darkPurple bg-purpleWhite rounded-3xl hover:bg-purple hover:text-purpleWhite"
                  >
                    Remove Friend
                  </button>
                ) : (
                  <button
                    onClick={handleAddFriend}
                    className="px-4 py-2 text-darkPurple bg-purpleWhite rounded-3xl hover:bg-purple hover:text-purpleWhite"
                  >
                    Add Friend
                  </button>
                )
              )}
            </div>
          </div>
          <div>{profileUser.fullName && (
                <p className="text-white text-md md:text-3xl font-semibold">{profileUser.fullName}</p>
              )}</div>

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
            <a href="loggedMovies.html">
              <div className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-xl p-4 shadow-lg flex flex-col items-center justify-center text-center">
                <p className="text-purpleWhite text-md md:text-lg font-semibold">Movies Logged</p>
                <p className="text-white text-sm md:text-7xl font-bold">{profileUser.moviesLogged || 62}</p>
              </div>
            </a>

            {/* Likes */}
            <div className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-xl p-4 shadow-lg flex flex-col items-center justify-center text-center">
              <p className="text-purpleWhite text-md md:text-lg font-semibold">Likes</p>
              <p className="text-white text-sm md:text-7xl font-bold">{profileUser.likes || 142}</p>
            </div>

            {/* userType */}
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
