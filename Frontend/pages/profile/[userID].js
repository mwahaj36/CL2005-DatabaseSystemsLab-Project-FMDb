import { useRouter } from 'next/router';
import { useEffect, useState, useMemo } from 'react';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import ProfileHero from '@/components/ProfileHero';
import { useAuth } from '@/context/AuthContext';
import MovieCard from '@/components/MovieCard';
import YearlyStats from '@/components/YearlyStats';
import ThirdScreenReviewsP from '@/components/ThirdScreenReviewsP';

const Profile = () => {
  const router = useRouter();
  const { userID } = router.query;
  const { user: currentUser, token } = useAuth();
  const [profileUser, setProfileUser] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [responseMsg, setResponseMsg] = useState('');
  const [apiLoading, setApiLoading] = useState(false);
  const [isFriend, setIsFriend] = useState(false);
  const [loadingFriendStatus, setLoadingFriendStatus] = useState(true);

  useEffect(() => {
    if (!router.isReady || !userID) return;

    const fetchUserProfile = async () => {
      try {
        setLoading(true);
        let response;
        let endpoint;

        if (currentUser) {
          // Use logged-in endpoint if user is authenticated
          endpoint = `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/logged/${userID}`;
        } else {
          // Use public endpoint if user is not authenticated
          endpoint = `https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/public/${userID}`;
        }

        const headers = currentUser 
          ? { 'Authorization': `Bearer ${token}` }
          : {};

        response = await fetch(endpoint, { headers });

        if (!response.ok) {
          throw new Error('Failed to fetch user data');
        }

        const data = await response.json();

        const transformedUser = {
          userID: data.user.UserID || parseInt(userID),
          fullName: data.user.FullName || `User ${userID}`,
          username: data.user.Username,
          email: data.user.Email,
          gender: data.user.Gender,
          dateOfBirth: data.user.DateOfBirth,
          bio: data.user.Bio || 'This user has not written a bio yet.',
          userType: data.user.UserType,
          privacy: data.user.Privacy === 'Private', // Note: Changed to match API response
          profilePic: `https://i.pravatar.cc/150?u=${data.user.Username || userID}`,
          favoriteMovies: data.favoriteMovies || [],
          reviews: data.recentActivities?.filter(activity => activity.Review) || [],
          yearlyStats: data.yearlyStats,
          basicDetails: data.basicDetails || {},
          recentActivities: data.recentActivities || []
        };

        setProfileUser(transformedUser);
      } catch (err) {
        console.error('Error fetching user profile:', err);
        setError(err.message);
        setProfileUser({
          userID: parseInt(userID),
          fullName: `User ${userID}`,
          profilePic: `https://i.pravatar.cc/150?u=${userID}`,
          bio: 'This user profile could not be loaded.',
          favoriteMovies: [],
          reviews: [],
          recentActivities: [],
          privacy: true // Default to private if error occurs
        });
      } finally {
        setLoading(false);
      }
    };

    const fetchFriendStatus = async () => {
      if (!currentUser || !userID) return;
      
      try {
        setLoadingFriendStatus(true);
        const response = await fetch(`https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/isFriend/${userID}`, {
          headers: {
            'Authorization': `Bearer ${token}`
          }
        });

        const data = await response.json();
        
        if (!response.ok) {
          throw new Error(data.message || 'Failed to fetch friend status');
        }

        setIsFriend(data.isFriend);
      } catch (error) {
        console.error('Error fetching friend status:', error);
        setIsFriend(false);
      } finally {
        setLoadingFriendStatus(false);
      }
    };

    fetchUserProfile();
    if (currentUser) {
      fetchFriendStatus();
    }
  }, [router.isReady, userID, currentUser, token]);

  const backdropUrl = useMemo(() => {
    if (!profileUser?.basicDetails?.firstFavoriteBackdrop) return '/fallback-backdrop.jpg';
    return profileUser.basicDetails.firstFavoriteBackdrop || '/fallback-backdrop.jpg';
  }, [profileUser]);

  const isCurrentUser = currentUser?.userID === profileUser?.userID;
  const showPrivateContent = isCurrentUser || isFriend || !profileUser?.privacy;

  const formattedReviews = profileUser?.recentActivities
    ?.filter(activity => activity.Review)
    .map(activity => ({
      id: activity.ActivityID,
      movieId: activity.MovieID,
      rating: activity.Ratings,
      review: activity.Review,
      date: activity.ActivityDateTime
    })) || [];

  const requestUserTypeChange = async (type) => {
    setApiLoading(true);
    setResponseMsg('');
    try {
      const res = await fetch('https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/userType', {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
          Authorization: `Bearer ${token}`
        },
        body: JSON.stringify({
          userType: type,
          message: `Requesting upgrade to ${type}`
        })
      });

      const data = await res.json();
      setResponseMsg(data?.message || 'Request sent');
    } catch (err) {
      console.error(err);
      setResponseMsg('Failed to send request.');
    } finally {
      setApiLoading(false);
    }
  };

  const handleFriendUpdate = (newStatus) => {
    setIsFriend(newStatus);
  };

  if (loading || (currentUser && loadingFriendStatus)) {
    return <div className="text-white text-center p-10">Loading profile...</div>;
  }

  if (!profileUser) {
    return <div className="text-white text-center p-10">User not found</div>;
  }

  return (
    <section
      className="relative bg-cover bg-center bg-fixed"
      style={{ backgroundImage: `url(${backdropUrl})` }}
    >
      <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
      <div className="relative p-4 z-10">
        <Navbar />
        <ProfileHero 
          profileUser={profileUser} 
          isFriend={isFriend}
          onRemoveFriend={() => handleFriendUpdate(false)}
          currentUser={currentUser}
        />

        {showPrivateContent ? (
          <>
            <p className="text-3xl mt-10 mb-20 md:text-6xl font-bold text-center">Favorites</p>

            <div className="relative flex flex-col z-10 mt-10 md:flex-row md:space-x-6 space-y-20 md:space-y-0">
              {profileUser.favoriteMovies?.map((movie, index) => (
                <MovieCard 
                  key={index} 
                  movie={{
                    movieid: movie.movieid,
                    title: movie.title,
                    movieposterlink: movie.movieposterlink,
                    directors: movie.directors
                  }} 
                />
              ))}
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mt-24">
              <div className="w-full flex flex-col p-6 rounded-xl">
                <h1 className='text-5xl font-bold mb-5 text-white text-center'>Recent Reviews</h1>
                <ThirdScreenReviewsP 
                  reviews={formattedReviews} 
                  userId={profileUser.userID}
                  userType={profileUser.userType}
                />
              </div>

              {profileUser.yearlyStats && (
                <div className="w-full flex flex-col p-6 rounded-xl">
                  <YearlyStats 
                    yearlyStats={profileUser.yearlyStats} 
                    uniqueMoviesWatched={profileUser.basicDetails?.uniqueMoviesWatched}
                    loggedMoviesCount={profileUser.basicDetails?.loggedMoviesCount}
                    activitiesCount={profileUser.basicDetails?.activitiesCount}
                    mostLoggedMovie={profileUser.basicDetails?.mostLoggedMovie}
                    activityLikes={profileUser.basicDetails?.activityLikes}
                  />
                </div>
              )}
            </div>

            {isCurrentUser && currentUser?.userType === 'User' && (
              <div className="flex flex-col items-center space-y-4 mt-12">
                <div className="flex justify-center space-x-6">
                  <button
                    onClick={() => requestUserTypeChange('Critic')}
                    disabled={apiLoading}
                    className="bg-purple text-white px-4 py-3 rounded-xl hover:bg-darkPurple transition disabled:opacity-50"
                  >
                    Apply to be Verified Critic
                  </button>
                  <button
                    onClick={() => requestUserTypeChange('Admin')}
                    disabled={apiLoading}
                    className="bg-purple text-white px-4 py-3 rounded-xl hover:bg-darkPurple transition disabled:opacity-50"
                  >
                    Apply to be Admin
                  </button>
                </div>
                {responseMsg && <p className="text-purpleWhite text-center">{responseMsg}</p>}
              </div>
            )}
          </>
        ) : (
          <div className="mt-10 text-center">
            <p className="text-white mt-10 font-semibold text-center text-3xl">
              Shh... this user's movie vault is private.<br></br>
              {currentUser ? "Become friends to peek behind the scenes!" : "Log in and become friends to see more!"}
            </p>
          </div>
        )}
      </div>
      <Footer />
    </section>
  );
};

export default Profile;