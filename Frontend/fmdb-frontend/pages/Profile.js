import React, { useState } from 'react';
import ProfileHero from '@/components/ProfileHero';
import ActivityAndReviewSection from '@/components/ActivityAndReview';
import { useRouter } from 'next/router';
import Navbar from "@/components/Navbar";
import Footer from "@/components/Footer";

export default function Profile() {
  // 👇 Mock data for now
  const currentUser = {
    username: 'wahaj',
    fullName: 'Wahaj Ahmed',
    profilePicture: '/pfp/wahaj.jpg',
    friends: [ 'ali'],
  };

  const profileUser = {
    username: 'ali',
    fullName: 'Ali Raza',
    profilePicture: 'https://tr.rbxcdn.com/180DAY-720f1075bf06dbfd26cabaf061adbd1f/420/420/Hat/Webp/noFilter',
    friends: [ 'wahaj'],
    backdrop:'https://image.tmdb.org/t/p/original/v8Nf6Y1qL1Q3PWTBezXNPPaXqza.jpg',
  };

  const [friendRequestSent, setFriendRequestSent] = useState(false);

  const isOwnProfile = currentUser?.username === profileUser?.username;
  const isFriend = profileUser?.friends?.includes(currentUser?.username);

  return (
    <div
      className="relative bg-cover bg-center bg-fixed min-h-screen"
      style={{ backgroundImage: `url(${profileUser.backdrop})` }}
    >
      {/* Purple Overlay */}
      <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>

      {/* Navbar */}
      <Navbar />

    <div className="p-4 space-y-16">
      {/* Hero Section always visible */}
      <div>
        <ProfileHero currentUser={currentUser} profileUser={profileUser}/>
      </div>

      {/* Activity Section only if friend */}
      {isFriend ? (
        <div>
          <ActivityAndReviewSection currentUser={currentUser} profileUser={profileUser} />
        </div>
      ) : (
        <div className="text-center font-bold text-white text-3xl">
          <p>Add them as your friend to see what they are up to</p>
        </div>
      )}
    </div>
    <Footer />
    </div>
  );
}
