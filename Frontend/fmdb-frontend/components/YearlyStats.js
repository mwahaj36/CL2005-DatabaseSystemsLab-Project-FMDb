const YearlyStats = () => {
    // Dummy yearly stats
    const year = 2024;
  
    const stats = {
      moviesWatched: 125,
      moviesLogged: 98,
      likes: 340,
      topGenre: 'Action',
      mostWatchedMovie: {
        title: 'The Dark Knight',
        poster: 'https://image.tmdb.org/t/p/original/qJ2tW6WMUDux911r6m7haRef0WH.jpg', // Make sure this image exists in your public folder
      },
      mostWatchedActor: 'Christian Bale',
      topKeywords: ['Hero', 'Crime', 'Gotham', 'Batman', 'DC'],
      reviewsWritten: 28,
    };
  
    const totalActivity =
      stats.moviesWatched + stats.moviesLogged + stats.likes + stats.reviewsWritten;
  
    return (
      <section id="yearly-stats" className="relative mt-5">
        <div className="container px-6 mx-auto">
          <div className=" px-6 rounded-xl  ">
            <h2 className="text-white text-3xl md:text-5xl font-bold mb-6 text-center">
              Yearly Recap: {year}
            </h2>
  
            {/* Top Movie & Actor */}
            <div className="flex flex-col md:flex-row items-center justify-between bg-black bg-opacity-60 rounded-xl p-4 mb-6 shadow-lg">
              <div className="flex items-center space-x-4">
                <img
                  src={stats.mostWatchedMovie.poster}
                  alt={stats.mostWatchedMovie.title}
                  className="w-20 h-28 rounded-lg shadow-md object-cover"
                />
                <div>
                  <p className="text-purpleWhite text-sm md:text-lg">Most Watched Movie</p>
                  <h3 className="text-white text-xl md:text-3xl font-semibold">
                    {stats.mostWatchedMovie.title}
                  </h3>
                </div>
              </div>
              <div className="text-right mt-4 md:mt-0">
                <p className="text-purpleWhite text-sm md:text-lg">Most Watched Actor</p>
                <h4 className="text-white text-xl font-semibold">{stats.mostWatchedActor}</h4>
              </div>
            </div>
  
            {/* Stats Grid */}
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
              <StatBox title="Movies Watched" value={stats.moviesWatched} />
              <StatBox title="Movies Logged" value={stats.moviesLogged} />
              <StatBox title="Likes Received" value={stats.likes} />
              <StatBox title="Top Genre" value={stats.topGenre} isText />
  
              <StatBox title="Reviews Written" value={stats.reviewsWritten} />
              <StatBox title="Total Activity" value={totalActivity} />
  
              {/* Top Keywords */}
              <div className="bg-black bg-opacity-60 rounded-xl p-6 shadow-md text-center col-span-1 sm:col-span-2 lg:col-span-2 transition-transform duration-300 hover:scale-105">
                <p className="text-purpleWhite text-md md:text-lg font-semibold mb-2">Top Keywords</p>
                <div className="flex flex-wrap justify-center gap-2 mt-2">
                  {stats.topKeywords.map((keyword, index) => (
                    <span
                      key={index}
                      className="bg-purple bg-opacity-80 text-white px-3 py-1 rounded-xl text-sm font-medium shadow-md"
                    >
                      {keyword}
                    </span>
                  ))}
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
    );
  };
  
  // Reusable stat box
  const StatBox = ({ title, value, isText = false }) => (
    <div className="bg-black bg-opacity-60 rounded-xl p-6 shadow-md text-center transition-transform duration-300 hover:scale-105">
      <p className="text-purpleWhite text-md md:text-lg font-semibold">{title}</p>
      <p className={`text-white mt-2 font-bold ${isText ? 'text-2xl md:text-4xl' : 'text-4xl md:text-6xl'}`}>
        {value}
      </p>
    </div>
  );
  
  export default YearlyStats;
  