import { useRouter } from 'next/router';
import { useEffect, useState, useMemo } from 'react';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import ProfileHero from '@/components/ProfileHero';
import { useAuth } from '@/context/AuthContext';
import { users } from '@/data/Users'; // Used for mock profile lookup
import movies from '@/data/FMDbDatabase.json'; // mock movies array
import MovieCard from '@/components/EditFavorite';
import YearlyStats from '@/components/YearlyStats'; // Import YearlyStats component
import ActivityAndReviewSection from '@/components/ActivityAndReview';

const Profile = () => {
  const router = useRouter();
  const { userID } = router.query;
  const { user: currentUser } = useAuth();
  const [profileUser, setProfileUser] = useState(null);

  useEffect(() => {
    if (!router.isReady) return;

    // If currentUser is null or userID doesn't match currentUser, fetch the profile from URL
    if (!currentUser || userID !== currentUser.userID) {
      const foundUser = users.find((u) => u.userID === userID);

      if (foundUser) {
        setProfileUser(foundUser);
      } else {
        setProfileUser({
          userID,
          fullName: `${userID} Name`,
          profilePic: `https://i.pravatar.cc/150?u=${userID}`,
          bio: 'This user has not written a bio yet.',
          friends: [],
          userFavs: [],
          reviews: [], // Add mock reviews if necessary
        });
      }
    } else {
      // If it's the current user's profile, set currentUser as the profileUser
      setProfileUser(currentUser);
    }
  }, [router.isReady, userID, currentUser]);

  const firstFavMovie = useMemo(() => {
    if (!profileUser?.userFavs?.length) return null;
    const firstFavID = profileUser.userFavs[0];
    return movies?.find((movie) => movie.MovieID === firstFavID);
  }, [profileUser]);

  const backdropUrl = firstFavMovie?.Backdrop ?? '/fallback-backdrop.jpg';

  if (!profileUser) {
    return <div className="text-white text-center p-10">Loading profile...</div>;
  }

  return (
    <section
      className="relative bg-cover bg-center bg-fixed"
      style={{ backgroundImage: `url(${backdropUrl})` }}
    >
      <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
      <div className="relative p-4 z-10 ">
        <Navbar />
        <ProfileHero profileUser={profileUser} currentUser={currentUser} />

        {/* Conditional rendering based on user's relationship */}
        {profileUser.userID === currentUser?.userID || currentUser?.friends.includes(profileUser.userID) || profileUser.privacy === false ? (
          <>
            <p className="text-3xl mt-10 mb-20 md:text-6xl font-bold text-center">Favorites</p>

            <div className="relative flex flex-col z-10 mt-10 md:flex-row md:space-x-6 space-y-20 md:space-y-0">
              {/* Dynamically render each favorite movie */}
              {profileUser.userFavs.map((userFavID, index) => {
                const movie = movies.find((m) => m.MovieID === userFavID);
                return movie ? <MovieCard key={index} movie={movie} /> : null;
              })}
            </div>

            {/* Section with Reviews (Limited to 5) and Yearly Stats */}
            <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mt-24">
              {/* Limited Reviews Section */}
              <div className="w-full flex flex-col p-6 rounded-xl ">
              {profileUser.reviews?.slice(0, 3).map((review, index) => {
                  const movie = movies.find((m) => m.MovieID === review.movieID);
                  return (
                    <div key={index} className="mb-6 border-b border-purpleWhite pb-4">
                      <p className="text-purpleWhite font-semibold">
                        {movie ? movie.Title : 'Unknown Movie'}
                      </p>
                      <p className="text-white italic">"{review.text}"</p>
                    </div>
                  );
                })}
                    <ActivityAndReviewSection currentUser={currentUser} profileUser={profileUser} />
              </div>

              {/* Yearly Stats Section */}
              <YearlyStats profileUser={profileUser} />
            </div>
          </>
        ) : (
          <p className="text-white mt-10 font-semibold text-center text-3xl">
            Shh... this user’s movie vault is private.<br></br>
            Become friends to peek behind the scenes!
          </p>
        )}
      </div>
      <div className="flex justify-center space-x-6 mt-12">
      {profileUser.userID === currentUser?.userID && currentUser?.userType === 'User' && (
  <div className="flex justify-center space-x-6 mt-12">
    <a 
      href='/Apply'
      className="relative z-10 bg-purple text-white p-3 rounded-xl hover:bg-darkPurple transition"
    >
      Apply to be Verified Critic Or Admin
    </a>
  </div>
)}

</div>
      <Footer />
    </section>
  );
};

export default Profile;
