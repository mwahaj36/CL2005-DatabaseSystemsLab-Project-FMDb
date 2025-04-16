import { useRouter } from 'next/router';
import Link from 'next/link';
import { useState } from 'react';
import Error from '@/components/Error';
import { MessageSquare } from 'lucide-react';

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
  const [showMessageModal, setShowMessageModal] = useState(false);
  const [messageText, setMessageText] = useState('');
  const [sentMessages, setSentMessages] = useState([]);
  const [modalError, setModalError] = useState('');

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

  const handleSendMessage = () => {
    if (!currentUser) {
      setModalError("You must be logged in to send messages.");
      return;
    }

    if (!messageText.trim()) {
      setModalError("Message cannot be empty.");
      return;
    }

    setSentMessages([...sentMessages, { to: profileUser.userID, message: messageText }]);
    setMessageText('');
    setShowMessageModal(false);
    setModalError('');
  };

  return (
    <section id="hero" className="relative -mt-14">
      {/* Global Error */}
      {errorMessage && <Error message={errorMessage} onClose={() => setErrorMessage('')} />}

      {/* Message Modal */}
      {showMessageModal && (
        <div className="fixed inset-0 z-50 bg-black bg-opacity-70 flex justify-center items-center">
          <div className="bg-white p-6 rounded-xl w-11/12 md:w-1/2 lg:w-1/3 shadow-lg relative">
            <button
              className="absolute top-2 right-3 text-black text-lg"
              onClick={() => {
                setShowMessageModal(false);
                setModalError('');
              }}
            >
              ✕
            </button>

            <h2 className="text-xl font-bold text-darkPurple mb-4">Send a message to {profileUser.fullName}</h2>

            {modalError && (
              <div className="bg-red-100 border border-red-400 text-red-700 px-4 py-2 rounded mb-4">
                {modalError}
              </div>
            )}

            <textarea
              className="w-full h-32 p-3 border rounded-md text-black"
              value={messageText}
              onChange={(e) => setMessageText(e.target.value)}
              placeholder="Type your message..."
            />
            <button
              className="mt-4 px-4 py-2 bg-darkPurple text-purpleWhite rounded-xl hover:bg-purple"
              onClick={handleSendMessage}
            >
              Send Message
            </button>
          </div>
        </div>
      )}

      {/* Hero Content */}
      <div className="relative z-10 mt-20 items-center container flex flex-row px-6 mx-auto space-y-0 md:space-y-0">
        {/* Profile Picture */}
        <div className="flex flex-col items-center p-6 rounded-xl md:w-1/5">
          <img
            src={profileUser.profilePic}
            alt="Profile"
            className="shadow-lg rounded-xl transition-transform duration-300 hover:scale-105"
          />

          {/* Friends / Watchlist */}
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

            {/* Buttons */}
            <div className="flex space-x-4 items-center">
              {profileUser.userID === currentUser?.userID && (
                <Link
                  href="/EditProfile"
                  className="px-4 py-2 text-darkPurple bg-purpleWhite rounded-xl hover:bg-purple hover:text-purpleWhite"
                >
                  Edit Profile
                </Link>
              )}

              {profileUser.userID !== currentUser?.userID && (
                <>
                  {isFriend ? (
                    <>
                      <button
                        onClick={handleRemoveFriend}
                        className="px-4 py-2 text-darkPurple bg-purpleWhite rounded-xl hover:bg-purple hover:text-purpleWhite"
                      >
                        Remove Friend
                      </button>

                      {/* Only show if isFriend and currentUser exists */}
                      {currentUser && (
                        <button
                          onClick={() => setShowMessageModal(true)}
                          className="p-2 bg-purpleWhite rounded-full hover:bg-purple hover:text-purpleWhite"
                        >
                          <MessageSquare className="w-6 h-6 text-darkPurple" />
                        </button>
                      )}
                    </>
                  ) : (
                    <button
                      onClick={handleAddFriend}
                      className="px-4 py-2 text-darkPurple bg-purpleWhite rounded-xl hover:bg-purple hover:text-purpleWhite"
                    >
                      Add Friend
                    </button>
                  )}
                </>
              )}

              {profileUser.userType === 'admin' && profileUser.userID === currentUser?.userID && (
                <Link
                  href="/AdminPanel"
                  className="px-4 py-2 text-darkPurple bg-purpleWhite rounded-xl hover:bg-purple hover:text-purpleWhite"
                >
                  Admin Panel
                </Link>
              )}
            </div>
          </div>

          <div>
            {profileUser.userID && (
              <p className="text-white text-md md:text-3xl font-semibold">{profileUser.userID}</p>
            )}
          </div>

          <div className="mt-2 bg-black bg-opacity-40 p-6 rounded-xl shadow-xl">
            <p className="text-white text-sm md:text-xl leading-relaxed drop-shadow-xl">
              {profileUser.bio || 'up wonking me willy'}
            </p>
          </div>

          {/* Stats */}
          <div className="mt-2 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
            <div className="bg-black bg-opacity-60 rounded-xl p-4 shadow-lg text-center">
              <p className="text-purpleWhite text-md md:text-lg font-semibold">Movies Watched</p>
              <p className="text-white text-sm md:text-7xl font-bold">{profileUser.moviesWatched || 1421}</p>
            </div>

            <button
              onClick={handleLoggedMoviesClick}
              className="bg-black bg-opacity-60 rounded-xl p-4 shadow-lg text-center hover:scale-105 transition-transform"
            >
              <p className="text-purpleWhite text-md md:text-lg font-semibold">Movies Logged</p>
              <p className="text-white text-sm md:text-7xl font-bold">{profileUser.moviesLogged || 62}</p>
            </button>

            <div className="bg-black bg-opacity-60 rounded-xl p-4 shadow-lg text-center">
              <p className="text-purpleWhite text-md md:text-lg font-semibold">Likes</p>
              <p className="text-white text-sm md:text-7xl font-bold">{profileUser.likes || 142}</p>
            </div>

            <div
              className={`${
                profileUser.userType === 'admin'
                  ? 'bg-emeraldGreen'
                  : profileUser.userType === 'verified critic'
                  ? 'bg-gold'
                  : 'bg-darkPurple'
              } bg-opacity-60 items-center pt-7 rounded-xl p-4 shadow-lg text-center`}
            >
              <p className="text-purpleWhite text-center text-md md:text-2xl font-semibold">User Type</p>
              <p className="text-white text-center text-sm md:text-5xl font-bold leading-tight">
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
