import React, { useState, useEffect } from "react";
import Link from "next/link";
import ErrorPopup from "@/components/Error";

const Leaderboard = () => {
  const [leaderboardData, setLeaderboardData] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [showErrorPopup, setShowErrorPopup] = useState(false);

  useEffect(() => {
    const fetchLeaderboard = async () => {
      try {
        const response = await fetch('https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net//users/leaderboard');
        
        if (!response.ok) {
          throw new Error('Failed to fetch leaderboard data');
        }

        const data = await response.json();
        
        if (!data.success) {
          throw new Error('Failed to load leaderboard');
        }

        setLeaderboardData(data.users.slice(0, 3)); // Only take top 3 users
      } catch (err) {
        console.error('Error fetching leaderboard:', err);
        setError(err.message);
        setShowErrorPopup(true);
      } finally {
        setLoading(false);
      }
    };

    fetchLeaderboard();
  }, []);

  const medalColors = [
    "rgba(214, 175, 54, 0.6)",  // Gold with 70% opacity
    "rgba(167, 167, 173, 0.6)", // Silver with 70% opacity
    "rgba(130, 74, 2, 0.6)",    // Bronze with 70% opacity
  ];  const places = ["1st Place", "2nd Place", "3rd Place"];

  const closeErrorPopup = () => {
    setShowErrorPopup(false);
    setError(null);
  };

  if (loading) {
    return (
      <section id="leaderboard" className="relative">
        <div className="text-center py-20">
          <h2 className="text-white text-6xl font-bold mb-8">Leaderboard</h2>
          <div className="text-white text-xl">Loading leaderboard...</div>
        </div>
      </section>
    );
  }

  if (leaderboardData.length === 0 && !loading) {
    return (
      <section id="leaderboard" className="relative">
        <div className="text-center py-20">
          <h2 className="text-white text-6xl font-bold mb-8">Leaderboard</h2>
          <div className="text-white text-xl">No leaderboard data available</div>
        </div>
      </section>
    );
  }

  return (
    <section id="leaderboard" className="relative">
      <div>
        <h2 className="text-white text-6xl mt-20 text-center font-bold mb-8">
          Leaderboard
        </h2>
        <div className="flex justify-center space-x-20">
          {leaderboardData.map((user, index) => (
            <Link href={`/profile/${user.UserID}`} key={user.UserID}>
              <div
                className={`flex items-center p-4 bg-opacity-60 rounded-xl shadow-xl hover:scale-105 transition mt-10 max-w-xs cursor-pointer`}
                style={{ backgroundColor: medalColors[index]  }}
              >
                <div className="w-32 h-32 bg-white rounded-xl overflow-hidden shadow-md">
                  <img
                    src={`https://ui-avatars.com/api/?name=${user.Username}&background=random`}
                    alt={user.Username}
                    className="w-full h-full object-cover"
                  />
                </div>
                <div className="flex flex-col items-center justify-center mx-4 text-center flex-1">
                  <h3 className="text-white text-lg font-semibold">
                    {user.Username}
                  </h3>
                  <span
                    className="text-white text-xl font-bold py-1 px-3 rounded-full"
                    style={{ backgroundColor: medalColors[index] }}
                  >
                    {places[index]}
                  </span>
                  <p className="text-white text-sm mt-2">
                    Activities: {user.ActivityCount}
                  </p>
                  <p className="text-white text-sm mt-2">
                    Movies Watched: {user.MoviesWatchedCount}
                  </p>
                  <p className="text-white text-sm mt-2 font-bold">
                    Total Score: {user.Score}
                  </p>
                </div>
              </div>
            </Link>
          ))}
        </div>
      </div>

      {showErrorPopup && (
        <ErrorPopup 
          message={error || 'An error occurred while loading the leaderboard'} 
          onClose={closeErrorPopup} 
        />
      )}
    </section>
  );
};

export default Leaderboard;