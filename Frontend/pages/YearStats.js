import React, { useState } from 'react';
import ProfileHero from '@/components/ProfileHero';
import ActivityAndReviewSection from '@/components/ActivityAndReview';
import { useRouter } from 'next/router';
import Navbar from "@/components/Navbar";
import Footer from "@/components/Footer";
import YearlyStats from '@/components/YearlyStats';
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

  return (
    <div
      className="relative bg-cover bg-center bg-fixed min-h-screen"
      style={{ backgroundImage: `url(${profileUser.backdrop})` }}
    >
      {/* Purple Overlay */}
      <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>

      {/* Navbar */}
      <Navbar />
      <YearlyStats />
    <Footer />
    </div>
  );
}
