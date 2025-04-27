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
  const [searchQuery, setSearchQuery] = useState("");
  const [searchResults, setSearchResults] = useState([]);
  const [isSearching, setIsSearching] = useState(false);

  useEffect(() => {
    const fetchPageCount = async () => {
      try {
        const response = await fetch('https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/pageCount');
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
        const response = await fetch(`https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/page?page=${currentPage}`);
        const data = await response.json();
        if (data.success) {
          const transformedMembers = data.users.map(user => ({
            userName:user.Username,
            userID: user.UserID,
            fullName: user.FullName,
            imageSrc: `https://ui-avatars.com/api/?name=${encodeURIComponent(user.FullName)}&background=random`,
            alt: `${user.Username}'s Profile`,
            userType: user.UserType.toLowerCase(),
            activities: Math.floor(Math.random() * 50),
            movies: Math.floor(Math.random() * 20)
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

  const handleSearch = async (e) => {
    e.preventDefault();
    if (!searchQuery.trim()) {
      setSearchResults([]);
      return;
    }

    setIsSearching(true);
    try {
      const response = await fetch(`https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/search/${encodeURIComponent(searchQuery)}`);
      const data = await response.json();
      if (data.success) {
        const transformedResults = data.users.map(user => ({
          userName:user.Username,
          userID: user.UserID,
          fullName: user.FullName,
          imageSrc: `https://ui-avatars.com/api/?name=${encodeURIComponent(user.FullName)}&background=random`,
          alt: `${user.Username}'s Profile`,
          userType: user.UserType.toLowerCase(),
          activities: Math.floor(Math.random() * 50),
          movies: Math.floor(Math.random() * 20)
        }));
        setSearchResults(transformedResults);
      }
    } catch (error) {
      console.error('Error searching users:', error);
    } finally {
      setIsSearching(false);
    }
  };

  const resetSearch = () => {
    setSearchQuery("");
    setSearchResults([]);
  };

  // Sort members by movies watched if sortByMovies is true
  const sortedMembers = useMemo(() => {
    const membersToSort = searchResults.length > 0 ? searchResults : members;
    if (!sortByMovies) return membersToSort;
    return [...membersToSort].sort((a, b) => b.movies - a.movies);
  }, [members, searchResults, sortByMovies]);

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
        
        {/* Search Bar */}
        <div className="max-w-md mx-auto mb-8 px-4">
          <form onSubmit={handleSearch} className="relative">
            <input
              type="text"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              placeholder="Search members by username or name..."
              className="w-full bg-darkPurple bg-opacity-90 border-2 border-purple-500 rounded-full py-3 px-6 text-white placeholder-purple-300 focus:outline-none focus:ring-2 focus:ring-purple-500 focus:border-transparent"
            />
            <button
              type="submit"
              className="absolute right-3 top-1/2 transform -translate-y-1/2 bg-purple-600 hover:bg-purple-700 text-white rounded-full p-2 transition-colors duration-200"
            >
              <svg xmlns="http://www.w3.org/2000/svg" className="h-5 w-5" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z" />
              </svg>
            </button>
          </form>
        </div>

        
        {isSearching ? (
          <div className="flex justify-center items-center h-64">
            <div className="animate-spin rounded-full h-12 w-12 border-t-2 border-b-2 border-purple-500"></div>
          </div>
        ) : (
          <>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-6 px-8">
              {sortedMembers.map((member, index) => (
                <MemberCard
                  key={index}
                  imageSrc={member.imageSrc}
                  alt={member.alt}
                  userName={member.userName}
                  userID={member.userID}
                  userType={member.userType}
                  activities={member.activities}
                  movies={member.movies}
                />
              ))}
            </div>
            
            {/* Pagination controls - only show when not showing search results */}
            {searchResults.length === 0 && (
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
            )}
          </>
        )}
        
        <Footer />
      </section>
    </div>
  );
};

export default Members;