import { useRouter } from 'next/router';
import Link from 'next/link';
import { useState, useEffect } from 'react';
import ErrorPopup from '@/components/Error';
import { MessageSquare } from 'lucide-react';
import { useAuth } from '@/context/AuthContext';

const ProfileHero = ({
  profileUser,
  isFriend,
  onAddFriend,
  onRemoveFriend,
  onEditProfile,
}) => {
  const router = useRouter();
  const { user: currentUser, token } = useAuth();
  const [errorMessage, setErrorMessage] = useState('');
  const [showMessageModal, setShowMessageModal] = useState(false);
  const [messageText, setMessageText] = useState('');
  const [modalError, setModalError] = useState('');
  const [isSending, setIsSending] = useState(false);
  const [friendStatus, setFriendStatus] = useState(isFriend);
  const [requestStatus, setRequestStatus] = useState('none');
  const [isLoadingRequestStatus, setIsLoadingRequestStatus] = useState(true);

  // Determine if the current user can see private content
  const canViewPrivateContent = profileUser.userID === currentUser?.userID || 
                               friendStatus || 
                               profileUser.privacy === 'Public';

  // Check friend request status on component mount and when user changes
  useEffect(() => {
    const checkFriendRequestStatus = async () => {
      if (!currentUser || profileUser.userID === currentUser.userID) {
        setIsLoadingRequestStatus(false);
        return;
      }

      try {
        setIsLoadingRequestStatus(true);
        const response = await fetch(`https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/notification/isFriendReq/${profileUser.userID}`, {
          headers: {
            'Authorization': `Bearer ${token}`
          }
        });

        const data = await response.json();
        
        if (!response.ok) {
          throw new Error(data.message || 'Failed to check friend request status');
        }

        setRequestStatus(data.exists ? 'pending-sent' : 'none');
      } catch (error) {
        setErrorMessage(error.message);
      } finally {
        setIsLoadingRequestStatus(false);
      }
    };

    checkFriendRequestStatus();
  }, [currentUser, profileUser.userID, token]);

  useEffect(() => {
    setFriendStatus(isFriend);
  }, [isFriend]);

  const handleAddFriend = async () => {
    if (!currentUser) {
      setErrorMessage("You must be logged in to add friends.");
      return;
    }
    
    try {
      setIsSending(true);
      const response = await fetch('https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/friendRequest', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`
        },
        body: JSON.stringify({
          userId: profileUser.userID,
          message: "I'd like to add you as a friend"
        })
      });

      const data = await response.json();
      
      if (!response.ok) {
        throw new Error(data.message || 'Failed to send friend request');
      }

      // Update local state and call parent callback
      setRequestStatus('pending-sent');
      onAddFriend?.();
      setErrorMessage('Friend request sent successfully!');
    } catch (error) {
      setErrorMessage(error.message);
    } finally {
      setIsSending(false);
    }
  };

  const handleRemoveFriend = async () => {
    if (!currentUser) {
      setErrorMessage("You must be logged in to remove friends.");
      return;
    }
    
    try {
      setIsSending(true);
      const response = await fetch('https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/removeFriend', {
        method: 'DELETE',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`
        },
        body: JSON.stringify({
          userId: profileUser.userID
        })
      });

      const data = await response.json();
      
      if (!response.ok) {
        throw new Error(data.message || 'Failed to remove friend');
      }

      // Update local state and call parent callback
      setFriendStatus(false);
      setRequestStatus('none');
      onRemoveFriend?.();
      setErrorMessage('Friend removed successfully!');
    } catch (error) {
      setErrorMessage(error.message);
    } finally {
      setIsSending(false);
    }
  };

  const handleLoggedMoviesClick = () => {
    if (canViewPrivateContent) {
      router.push(`/logged/${profileUser.userID}`);
    }
  };

  const handleSendMessage = async () => {
    if (!currentUser) {
      setModalError("You must be logged in to send messages.");
      return;
    }

    if (!messageText.trim()) {
      setModalError("Message cannot be empty.");
      return;
    }

    try {
      setIsSending(true);
      const response = await fetch('https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/message', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`
        },
        body: JSON.stringify({
          receiverId: profileUser.userID,
          message: messageText
        })
      });

      const data = await response.json();
      
      if (!response.ok) {
        throw new Error(data.message || 'Failed to send message');
      }

      setMessageText('');
      setShowMessageModal(false);
      setModalError('');
      setErrorMessage('Message sent successfully!');
    } catch (error) {
      setModalError(error.message);
    } finally {
      setIsSending(false);
    }
  };

  // Stats display components
  const StatButton = ({ label, value, href }) => {
    const content = (
      <div 
        className={`bg-black bg-opacity-60 rounded-xl p-4 shadow-lg text-center ${
          canViewPrivateContent ? 'hover:scale-105 transition-transform cursor-pointer' : 'cursor-default'
        }`}
      >
        <p className="text-purpleWhite text-md md:text-lg font-semibold">{label}</p>
        <p className="text-white text-sm md:text-7xl font-bold">{value ?? '—'}</p>
      </div>
    );

    return canViewPrivateContent && href ? (
      <Link href={href}>{content}</Link>
    ) : content;
  };

  return (
    <section id="hero" className="relative -mt-14">
      {errorMessage && (
        <ErrorPopup 
          message={errorMessage} 
          onClose={() => setErrorMessage('')} 
        />
      )}

      {showMessageModal && (
        <div className="fixed inset-0 z-50 bg-black bg-opacity-70 flex justify-center items-center">
          <div className="bg-white p-6 rounded-xl w-11/12 md:w-1/2 lg:w-1/3 shadow-lg relative">
            <button
              className="absolute top-2 right-3 text-black text-lg"
              onClick={() => {
                setShowMessageModal(false);
                setModalError('');
              }}
              disabled={isSending}
            >
              ✕
            </button>

            <h2 className="text-xl font-bold text-darkPurple mb-4">Send a message to {profileUser.fullName}</h2>

            {modalError && (
              <ErrorPopup 
                message={modalError} 
                onClose={() => setModalError('')} 
              />
            )}

            <textarea
              className="w-full bg-purpleWhite h-32 p-3 border rounded-md text-black"
              value={messageText}
              onChange={(e) => setMessageText(e.target.value)}
              placeholder="Type your message..."
              disabled={isSending}
            />
            <button
              className="mt-4 px-4 py-2 bg-darkPurple text-purpleWhite rounded-xl hover:bg-purple disabled:opacity-50"
              onClick={handleSendMessage}
              disabled={isSending}
            >
              {isSending ? 'Sending...' : 'Send Message'}
            </button>
          </div>
        </div>
      )}

      <div className="relative z-10 mt-20 items-center container flex flex-row px-6 mx-auto space-y-0 md:space-y-0">
        <div className="flex flex-col items-center p-6 rounded-xl md:w-1/5">
          <img
            src={`https://ui-avatars.com/api/?name=${profileUser.fullName}&background=random`}
            alt="Profile"
            className="shadow-lg rounded-xl transition-transform duration-300 hover:scale-105"
            style={{ width: '240px', height: '240px' }}
          />

          {/* Only show Friends and Watchlist buttons if user is public or friends */}
          {canViewPrivateContent && (
            <div className="mt-4 grid grid-cols-2 gap-4">
              <Link href={`/friends/${profileUser.userID}`}>
                <div className="bg-black bg-opacity-60 rounded-xl p-3 shadow-md flex flex-col items-center justify-center text-center h-16 transition-all duration-300 hover:scale-105">
                  <p className="text-purpleWhite text-sm md:text-xl font-semibold">Friends</p>
                </div>
              </Link>

              <Link href={`/watchlist/${profileUser.userID}`}>
                <div className="bg-black bg-opacity-60 rounded-xl p-3 shadow-md flex flex-col items-center justify-center text-center h-16 transition-all duration-300 hover:scale-105">
                  <p className="text-purpleWhite text-sm md:text-xl font-semibold">Watchlist</p>
                </div>
              </Link>
            </div>
          )}
        </div>

        <div className="flex flex-col mb-40 md:w-4/5">
          <div className="w-full flex items-center justify-between flex-wrap">
            <div className="flex items-end space-x-4">
              <h1 className="text-white text-3xl font-bold md:text-6xl">{profileUser.fullName}</h1>
            </div>

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
                  {friendStatus ? (
                    <>
                      <button
                        onClick={handleRemoveFriend}
                        className="px-4 py-2 text-darkPurple bg-purpleWhite rounded-xl hover:bg-purple hover:text-purpleWhite"
                        disabled={isSending}
                      >
                        {isSending ? 'Removing...' : 'Remove Friend'}
                      </button>
                      {currentUser && (
                        <button
                          onClick={() => setShowMessageModal(true)}
                          className="p-2 bg-purpleWhite rounded-full hover:bg-purple hover:text-purpleWhite"
                          disabled={isSending}
                        >
                          <MessageSquare className="w-6 h-6 text-darkPurple" />
                        </button>
                      )}
                    </>
                  ) : isLoadingRequestStatus ? (
                    <button
                      className="px-4 py-2 text-darkPurple bg-purpleWhite rounded-xl"
                      disabled
                    >
                      Loading...
                    </button>
                  ) : requestStatus === 'pending-sent' ? (
                    <button
                      className="px-4 py-2 text-darkPurple bg-purpleWhite rounded-xl cursor-default"
                      disabled
                    >
                      Friend Request Sent
                    </button>
                  ) : (
                    <button
                      onClick={handleAddFriend}
                      className="px-4 py-2 text-darkPurple bg-purpleWhite rounded-xl hover:bg-purple hover:text-purpleWhite"
                      disabled={isSending}
                    >
                      {isSending ? 'Sending...' : 'Add Friend'}
                    </button>
                  )}
                </>
              )}

              {profileUser.userType?.toLowerCase() === 'admin' && profileUser.userID === currentUser?.userID && (
                <Link
                  href="/AdminPanel"
                  className="px-4 py-2 text-darkPurple bg-purpleWhite rounded-xl hover:bg-purple hover:text-purpleWhite"
                >
                  Admin Panel
                </Link>
              )}
            </div>
          </div>
          <div className="flex items-end space-x-4">
            <h1 className="text-white text-xl font-bold md:text-3xl">{profileUser.username}</h1>
          </div>
          <div className="mt-2 bg-black bg-opacity-40 p-6 rounded-xl shadow-xl">
            <p className="text-white text-sm md:text-xl leading-relaxed drop-shadow-xl">
              {profileUser.bio || 'No bio provided.'}
            </p>
          </div>

          <div className="mt-2 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
            <StatButton
              label="Movies Watched"
              value={profileUser.basicDetails?.uniqueMoviesWatched}
              href={canViewPrivateContent ? `/watched/${profileUser.userID}` : undefined}
            />

            <StatButton
              label="Movies Logged"
              value={profileUser.basicDetails?.loggedMoviesCount}
              href={canViewPrivateContent ? `/logged/${profileUser.userID}` : undefined}
            />

            <StatButton
              label="Liked Movies"
              value={profileUser.basicDetails?.likedMoviesCount}
              href={canViewPrivateContent ? `/liked/${profileUser.userID}` : undefined}
            />

            <div
              className={`${
                profileUser.userType?.toLowerCase() === 'admin'
                  ? 'bg-emeraldGreen'
                  : profileUser.userType?.toLowerCase() === 'critic'
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