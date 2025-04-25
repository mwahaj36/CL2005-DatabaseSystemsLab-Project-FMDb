import React, { useState, useEffect, useMemo } from "react";
import MemberCard from "@/components/MemberCard";
import Navbar from "@/components/Navbar";
import Footer from "@/components/Footer";
import Leaderboard from "@/components/Leaderboard";

const Members = () => {
  const [members, setMembers] = useState([]);
  const [currentPage, setCurrentPage] = useState(1);
  const [totalPages, setTotalPages] = useState(1);
  const [loading, setLoading] = useState(true);
  const [sortByMovies, setSortByMovies] = useState(false);

  useEffect(() => {
    const fetchPageCount = async () => {
      try {
        const response = await fetch('http://localhost:5000/users/pageCount');
        const data = await response.json();
        if (data.success) {
          setTotalPages(data.totalPages);
        }
      } catch (error) {
        console.error('Error fetching page count:', error);
      }
    };

    const fetchUsers = async () => {
      try {
        const response = await fetch(`http://localhost:5000/users/page?page=${currentPage}`);
        const data = await response.json();
        if (data.success) {
          // Transform the API data to match the expected MemberCard props
          const transformedMembers = data.users.map(user => ({
            userID: user.Username,
            fullName: user.FullName,
            imageSrc: `https://ui-avatars.com/api/?name=${encodeURIComponent(user.FullName)}&background=random`,
            alt: `${user.Username}'s Profile`,
            userType: user.UserType.toLowerCase(),
            activities: Math.floor(Math.random() * 50), // Placeholder - replace with actual data if available
            movies: Math.floor(Math.random() * 20) // Placeholder - replace with actual data if available
          }));
          setMembers(transformedMembers);
        }
      } catch (error) {
        console.error('Error fetching users:', error);
      } finally {
        setLoading(false);
      }
    };

    fetchPageCount();
    fetchUsers();
  }, [currentPage]);

  // Sort members by movies watched if sortByMovies is true
  const sortedMembers = useMemo(() => {
    if (!sortByMovies) return members;
    return [...members].sort((a, b) => b.movies - a.movies);
  }, [members, sortByMovies]);

  const handlePageChange = (newPage) => {
    if (newPage >= 1 && newPage <= totalPages) {
      setCurrentPage(newPage);
    }
  };

  if (loading) {
    return (
      <div className="relative bg-cover bg-center bg-fixed" style={{ backgroundImage: "url('https://image.tmdb.org/t/p/original/mLyW3UTgi2lsMdtueYODcfAB9Ku.jpg')" }}>
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
        <section id="members" className="relative z-10">
          <Navbar />
          <div className="flex justify-center items-center h-screen">
            <p className="text-white text-xl">Loading members...</p>
          </div>
        </section>
      </div>
    );
  }

  return (
    <div className="relative bg-cover bg-center bg-fixed" style={{ backgroundImage: "url('https://image.tmdb.org/t/p/original/mLyW3UTgi2lsMdtueYODcfAB9Ku.jpg')" }}>
      <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
      <section id="members" className="relative z-10">
        <Navbar />
        <Leaderboard />
        <h2 className="text-white text-6xl mt-20 text-center font-bold mb-8">FMDb Members</h2>
        
        {/* Sorting controls */}
        <div className="flex justify-center mb-6">
          <button
            onClick={() => setSortByMovies(!sortByMovies)}
            className={`px-4 py-2 mx-1 ${sortByMovies ? 'bg-purple-800' : 'bg-purple-600'} text-white rounded`}
          >
            {sortByMovies ? 'Sorted by Movies Watched' : 'Sort by Movies Watched'}
          </button>
        </div>
        
        <div className="grid grid-cols-1 md:grid-cols-3 gap-6 px-8">
          {sortedMembers.map((member, index) => (
            <MemberCard
              key={index}
              imageSrc={member.imageSrc}
              alt={member.alt}
              userID={member.userID}
              userType={member.userType}
              activities={member.activities}
              movies={member.movies}
            />
          ))}
        </div>
        
        {/* Pagination controls */}
        <div className="flex justify-center mt-8 mb-8">
          <button 
            onClick={() => handlePageChange(currentPage - 1)} 
            disabled={currentPage === 1}
            className="px-4 py-2 mx-1 bg-purple-600 text-white rounded disabled:opacity-50"
          >
            Previous
          </button>
          <span className="px-4 py-2 mx-1 text-white">
            Page {currentPage} of {totalPages}
          </span>
          <button 
            onClick={() => handlePageChange(currentPage + 1)} 
            disabled={currentPage === totalPages}
            className="px-4 py-2 mx-1 bg-purple-600 text-white rounded disabled:opacity-50"
          >
            Next
          </button>
        </div>
        
        <Footer />
      </section>
    </div>
  );
};

export default Members;