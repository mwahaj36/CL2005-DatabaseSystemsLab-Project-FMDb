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

  useEffect(() => {
    if (!router.isReady || !userID) return;

    const fetchUserProfile = async () => {
      try {
        setLoading(true);
        let response;

        if (currentUser?.userID === parseInt(userID)) {
          response = await fetch(`http://localhost:5000/users/${userID}`, {
            headers: {
              'Authorization': `Bearer ${token}`
            }
          });
        } else {
          response = await fetch(`http://localhost:5000/users/public/${userID}`);
        }

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
          privacy: data.user.Privacy === 'Public',
          profilePic: `https://i.pravatar.cc/150?u=${data.user.Username || userID}`,
          favoriteMovies: data.favoriteMovies || [],
          reviews: data.recentActivities?.filter(activity => activity.Review) || [],
          yearlyStats: data.yearlyStats,
          basicDetails: data.basicDetails,
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
          privacy: false
        });
      } finally {
        setLoading(false);
      }
    };

    fetchUserProfile();
  }, [router.isReady, userID, currentUser, token]);

  const backdropUrl = useMemo(() => {
    if (!profileUser?.basicDetails?.firstFavoriteBackdrop) return '/fallback-backdrop.jpg';
    return profileUser.basicDetails.firstFavoriteBackdrop || '/fallback-backdrop.jpg';
  }, [profileUser]);

  const isCurrentUser = currentUser?.userID === profileUser?.userID;
  const isFriend = currentUser?.friends?.includes(profileUser?.userID);
  const isPublicProfile = profileUser?.privacy === true;
  const showPrivateContent = isCurrentUser || isFriend || isPublicProfile;

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
      const res = await fetch('http://localhost:5000/users/userType', {
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

  if (loading) {
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
        <ProfileHero profileUser={profileUser} currentUser={currentUser} />

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
          </>
        ) : (
          <p className="text-white mt-10 font-semibold text-center text-3xl">
            Shh... this user's movie vault is private.<br></br>
            Become friends to peek behind the scenes!
          </p>
        )}

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
      </div>
      <Footer />
    </section>
  );
};

export default Profile;
