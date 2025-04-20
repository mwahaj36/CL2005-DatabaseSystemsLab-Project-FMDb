const YearlyStats = ({
  yearlyStats,
  uniqueMoviesWatched,
  loggedMoviesCount,
  activitiesCount,
  mostLoggedMovie,
  activityLikes,
}) => {
  const stats = yearlyStats || {
    year: new Date().getFullYear(),
    moviesWatched: uniqueMoviesWatched || 0,
    moviesLogged: loggedMoviesCount || 0,
    likes: activityLikes || 0,
    topGenre: 'Unknown',
    mostWatchedMovie: {
      title: mostLoggedMovie || 'No data',
      poster: '/placeholder-movie.jpg',
    },
    mostWatchedActor: 'Unknown',
    mostWatchedDirector: 'Unknown',
    topKeywords: [],
    reviewsWritten: 0,
    activitiesCount: activitiesCount || 0,
  };

  return (
    <section id="yearly-stats" className="relative ">
      <div className="container px-6 mx-auto max-w-7xl">
        <div className="px-6 rounded-xl">
          <h2 className="text-white text-3xl md:text-5xl font-bold mb-6 text-center">
            Yearly Statistics {stats.year}
          </h2>

          {/* Most Logged Movie */}
          <div className="bg-black bg-opacity-60 rounded-xl p-6 shadow-md mb-6 flex flex-col md:flex-row items-center md:items-start gap-6 transition-transform duration-300 hover:scale-105">
            <img
              src={stats.mostWatchedMovie?.poster || '/placeholder-movie.jpg'}
              alt={yearlyStats.mostLoggedMovie}
              className="w-24 h-36 rounded-lg object-cover shadow"
            />
            <div className="text-center md:text-left">
              <p className="text-purpleWhite text-md md:text-lg font-semibold mb-2">
                Most Logged Movie
              </p>
              <h3
                className="text-white text-5xl font-bold truncate max-w-[240px]"
                title={yearlyStats.mostLoggedMovie}
              >
                {yearlyStats.mostLoggedMovie || 'No data'}
              </h3>
            </div>
          </div>

          {/* Director & Actor */}
          <div className="space-y-4 mb-6">
            <div className="bg-black bg-opacity-60 rounded-xl p-6 shadow-md text-center transition-transform duration-300 hover:scale-105">
              <p className="text-purpleWhite text-md md:text-lg font-semibold mb-2">
                Most Watched Director
              </p>
              <h4
                className="text-white text-4xl font-bold truncate max-w-[240px] mx-auto"
                title={yearlyStats.mostWatchedDirector}
              >
                {yearlyStats.mostWatchedDirector || 'No data'}
              </h4>
            </div>
            <div className="bg-black bg-opacity-60 rounded-xl p-6 shadow-md text-center transition-transform duration-300 hover:scale-105">
              <p className="text-purpleWhite text-md md:text-lg font-semibold mb-2">
                Most Watched Actor
              </p>
              <h4
                className="text-white text-4xl font-bold truncate max-w-[700px] mx-auto"
                title={yearlyStats.mostWatchedActor}
              >
                {yearlyStats.mostWatchedActor || 'No data'}
              </h4>
            </div>
          </div>

          {/* Stats Grid */}
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 mb-6">
            <StatBox title="Movies Watched" value={stats.moviesWatched} />
            <StatBox title="Movies Logged" value={stats.moviesLogged} />
            <StatBox title="Likes Received" value={stats.activityLikes || 0} />
            <StatBox title="Reviews Written" value={stats.reviewsWritten || 0} />
            <StatBox
              title="Activities Count"
              value={stats.activitiesCount || 0}
              isWide
            />
          </div>

          {/* Top Genre */}
          <div className="mb-6">
            <StatBox title="Top Genre" value={stats.topGenre} isText isWide />
          </div>

          {/* Top Keywords */}
          {stats.topKeywords?.length > 0 && (
            <div className="bg-black bg-opacity-60 rounded-xl p-6 shadow-md text-center transition-transform duration-300 hover:scale-105">
              <p className="text-purpleWhite text-md md:text-lg font-semibold mb-2">
                Top Keywords
              </p>
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
          )}
        </div>
      </div>
    </section>
  );
};

// Reusable Stat Box
const StatBox = ({ title, value, isText = false, isWide = false }) => (
  <div
    className={`bg-black bg-opacity-60 rounded-xl p-6 shadow-md text-center transition-transform duration-300 hover:scale-105 ${
      isWide ? 'lg:col-span-2' : ''
    }`}
  >
    <p className="text-purpleWhite text-md md:text-lg font-semibold">{title}</p>
    <p
      className={`text-white mt-2 font-bold ${
        isText ? 'text-xl md:text-2xl truncate max-w-[200px] mx-auto' : 'text-4xl md:text-6xl'
      }`}
      title={value}
    >
      {value}
    </p>
  </div>
);

export default YearlyStats;
