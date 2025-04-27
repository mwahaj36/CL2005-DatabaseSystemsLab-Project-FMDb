import React, { useState, useEffect, useMemo } from "react";
import { useRouter } from "next/router";
import MemberCard from "@/components/MemberCard";
import Navbar from "@/components/Navbar";
import Footer from "@/components/Footer";
import { useAuth } from "@/context/AuthContext"; // Assuming you have an auth context

const FriendsPage = () => {
  const router = useRouter();
  const { userID } = router.query;
  const { user, token } = useAuth(); // Get auth state
  const [friends, setFriends] = useState([]);
  const [loading, setLoading] = useState(true);
  const [sortByMovies, setSortByMovies] = useState(true);

  useEffect(() => {
    if (!userID) return;

    const fetchFriends = async () => {
      try {
        let response;

        if (token) {
          // Use authenticated endpoint if user is logged in
          response = await fetch(`https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/friends/${userID}`, {
            headers: {
              'Authorization': `Bearer ${token}`
            }
          });
        } else {
          // Use public endpoint if user is not logged in
          response = await fetch(`https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/public/friends/${userID}`);
        }

        const data = await response.json();

        if (data.success) {
          // Transform the API data to match the expected MemberCard props
          const transformedFriends = data.friends.map(friend => ({
            userID: friend.UserID,
            fullName: friend.FullName,
            userName: friend.Username,
            imageSrc: `https://ui-avatars.com/api/?name=${encodeURIComponent(friend.FullName)}&background=random`,
            alt: `${friend.Username}'s Profile`,
            userType: friend.UserType.toLowerCase(),
            privacy: friend.Privacy,
            bio: friend.Bio,
            gender: friend.Gender,
          }));
          
          setFriends(transformedFriends);
        }
      } catch (error) {
        console.error('Error fetching friends:', error);
      } finally {
        setLoading(false);
      }
    };

    fetchFriends();
  }, [userID, token]); // Add token to dependency array

  // Sort friends by movies watched if sortByMovies is true
  const sortedFriends = useMemo(() => {
    if (!sortByMovies) return friends;
    return [...friends].sort((a, b) => b.movies - a.movies);
  }, [friends, sortByMovies]);

  if (loading) {
    return (
      <div
        className="relative bg-cover bg-center bg-fixed"
        style={{ backgroundImage: "url('https://image.tmdb.org/t/p/original/mLyW3UTgi2lsMdtueYODcfAB9Ku.jpg')" }}
      >
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
        <section id="friends" className="relative z-10">
          <Navbar />
          <div className="flex justify-center items-center h-screen">
            <p className="text-white text-xl">Loading friends...</p>
          </div>
        </section>
      </div>
    );
  }

  return (
    <div
      className="relative bg-cover bg-center bg-fixed"
      style={{ backgroundImage: "url('https://image.tmdb.org/t/p/original/mLyW3UTgi2lsMdtueYODcfAB9Ku.jpg')" }}
    >
      <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
      <section id="friends" className="relative z-10">
        <Navbar />
        <h2 className="text-white text-6xl mt-20 text-center font-bold mb-8">{userID}'s Friends</h2>

        {sortedFriends.length > 0 ? (
          <div className="grid grid-cols-1 md:grid-cols-3 gap-6 px-8">
            {sortedFriends.map((friend, index) => (
              <MemberCard
                key={index}
                imageSrc={friend.imageSrc}
                alt={friend.alt}
                userID={friend.userID}
                userType={friend.userType}
                userName={friend.userName} // <-- Passed to MemberCard
                activities={friend.activities}
                movies={friend.movies}
                bio={friend.bio}
                gender={friend.gender}
                privacy={friend.privacy}
              />
            ))}
          </div>
        ) : (
          <div className="text-center text-white text-xl py-12">
            <p>No friends to display.</p>
          </div>
        )}

        <Footer />
      </section>
    </div>
  );
};

export default FriendsPage;
