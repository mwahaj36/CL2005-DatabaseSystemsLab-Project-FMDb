import React from "react";
import Link from "next/link"; // ✅ Next.js Link for client-side routing

const Leaderboard = () => {
  const topThree = [
    {
      username: "john_doe",
      image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzqVf5Tl5ULlCK3DBDOTjDEt23eKSYMOl33A&s",
      activities: 42,
      moviesWatched: 14,
    },
    {
      username: "jane_smith",
      image:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShs8BCMNDaaydLAWMp9FZDjd2niJyTiHBCog&s",
      activities: 38,
      moviesWatched: 12,
    },
    {
      username: "alex_lee",
      image:
        "https://preview.redd.it/cool-pfp-type-fanart-i-made-v0-000ob270kp7e1.png?width=640&crop=smart&auto=webp&s=0e399d56fac07442153386515fbb7a9bffff4c8c",
      activities: 33,
      moviesWatched: 11,
    },
  ];

  const medalColors = ["#d4af37", "#C0C0C0", "#FF5733"];
  const places = ["1st Place", "2nd Place", "3rd Place"];

  return (
    <section id="leaderboard" className="relative">
      <div>
        <h2 className="text-white text-6xl mt-20 text-center font-bold mb-8">
          Leaderboard
        </h2>
        <div className="ml-60 grid grid-cols-3">
          {topThree.map((user, index) => (
            <Link href={`/profile/${user.username}`} key={index}>
              <div
                className={`flex items-center p-4 bg-opacity-60 rounded-2xl shadow-xl hover:scale-105 transition mt-10 max-w-xs cursor-pointer`}
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
              </div>
            </Link>
          ))}
        </div>
      </div>
    </section>
  );
};

export default Leaderboard;
