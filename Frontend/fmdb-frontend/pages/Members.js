import React from "react";
import MemberCard from "@/components/MemberCard"; // Import MemberCard component
import Navbar from "@/components/Navbar";
import Footer from "@/components/Footer";
import Leaderboard from "@/components/Leaderboard";


const Members = () => {
  // Static data for members
  const members = [
    {
      userID: "John-Doe",
      imageSrc: "https://tr.rbxcdn.com/180DAY-720f1075bf06dbfd26cabaf061adbd1f/420/420/Hat/Webp/noFilter",
      alt: "John's Profile",
      userType: "admin",
      activities: 25,
      movies: 10,
    },
    {
      userID: "Jane_Smith",
      imageSrc: "https://i.pinimg.com/736x/6a/fc/5c/6afc5c43a5050054d7482202e3b75239.jpg",
      alt: "Jane's Profile",
      userType: "user",
      activities: 20,
      movies: 8,
    },
    {
      userID: "Mike_oxMol",
      imageSrc: "https://i.pinimg.com/564x/48/4c/a1/484ca1f2a76cc0b8fd8955a3700e0d6b.jpg",
      alt: "Mike's Profile",
      userType: "verified critic",
      activities: 18,
      movies: 7,
    },
  ];

  return (
    <div className="relative bg-cover bg-center bg-fixed" style={{ backgroundImage: "url('https://image.tmdb.org/t/p/original/mLyW3UTgi2lsMdtueYODcfAB9Ku.jpg')" }}>
    <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
    <section id="members" className="relative z-10">
    <Navbar />
    <Leaderboard />
      <h2 className="text-white text-6xl mt-20 text-center font-bold mb-8">FMDb Members</h2>
      <div className="grid grid-cols-1 md:grid-cols-3 gap-6 px-8">
        {members.map((member, index) => (
          <MemberCard
            key={index}
            imageSrc={member.imageSrc}
            alt={member.alt}
            userID={member.userID}
            userType={member.userType}
            activities={member.activities}
            movies={member.movies}          />
        ))}
        </div>
      <Footer />
    </section>
    </div>
  );
};

export default Members;
