import React from "react";

const Leaderboard = ({ topThree }) => {
  const medalColors = ["#FFD700", "#C0C0C0", "#CD7F32"]; // Gold, Silver, Bronze
  const places = ["1st Place", "2nd Place", "3rd Place"];

  return (
    <section id="leaderboard" className="relative">
      <div>
        <h2 className="text-white text-6xl mt-20 text-center font-bold mb-8">
          Leaderboard
        </h2>
        <div className="ml-60 grid grid-cols-3">
          {topThree.map((user, index) => (
            <a
              key={index}
              href="#"
              className={`flex items-center p-4 bg-opacity-60 rounded-2xl shadow-xl hover:scale-105 transition mt-10 max-w-xs`}
              style={{ backgroundColor: medalColors[index] }}
            >
              <div className="w-32 h-32 bg-white rounded-md overflow-hidden shadow-md">
                <img
                  src={user.image}
                  alt={user.username}
                  className="w-full h-full object-cover"
                />
              </div>
              <div className="flex flex-col items-center justify-center mx-4 text-center flex-1">
                <h3 className="text-white text-lg font-semibold">
                  {user.username}
                </h3>
                <span
                  className="text-white text-xl font-bold py-1 px-3 rounded-full"
                  style={{ backgroundColor: medalColors[index] }}
                >
                  {places[index]}
                </span>
                <p className="text-white text-sm mt-2">
                  Activities Last Week: {user.activities}
                </p>
                <p className="text-white text-sm mt-2">
                  Movies Watched: {user.moviesWatched}
                </p>
              </div>
            </a>
          ))}
        </div>
      </div>
    </section>
  );
};

export default Leaderboard;
