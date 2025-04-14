import { useRouter } from 'next/router';
import { useEffect, useState, useMemo } from 'react';
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
import ProfileHero from '@/components/ProfileHero';
import ActivityAndReviewSection from '@/components/ActivityAndReview';
import { useAuth } from '@/context/AuthContext';
import { users } from '@/data/Users'; // Used for mock profile lookup
import movies from '@/data/FMDbDatabase.json'; // mock movies array
import MovieCard from '@/components/EditFavorite';

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
    <ActivityAndReviewSection currentUser={currentUser} profileUser={profileUser} />
  </>
) : (
<p className="text-white mt-10 font-semibold text-center text-3xl">
  Shh... this user’s movie vault is private.<br></br>
  Become friends to peek behind the scenes!
</p>
)}

      </div>
      <Footer />
    </section>
  );
};

export default Profile;
