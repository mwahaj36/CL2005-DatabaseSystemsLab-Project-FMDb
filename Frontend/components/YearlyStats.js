import React, { useMemo } from 'react';


const YearlyStats = ({
  yearlyStats,
  uniqueMoviesWatched,
  loggedMoviesCount,
  activitiesCount,
  mostLoggedMovie,
  activityLikes,
}) => {
  // Transform the API data into a consistent format
  const stats = useMemo(() => {
    // If we have yearlyStats from API, use that as base
    const baseStats = yearlyStats || {};
    
    return {
      year: new Date().getFullYear(),
      moviesWatched: uniqueMoviesWatched || baseStats.moviesWatched || 0,
      moviesLogged: loggedMoviesCount || baseStats.moviesLogged || 0,
      likes: activityLikes || baseStats.activityLikes || 0,
      topGenre: baseStats.topGenre || 'Unknown',
      mostLoggedMovie: Array.isArray(baseStats.mostLoggedMovie) && baseStats.mostLoggedMovie.length > 0 
        ? {
            title: baseStats.mostLoggedMovie[0].Title,
            poster: baseStats.mostLoggedMovie[0].MoviePosterLink || '/placeholder-movie.jpg'
          }
        : {
            title: mostLoggedMovie?.Title || 'No data',
            poster: mostLoggedMovie?.MoviePosterLink || '/placeholder-movie.jpg'
          },
      mostWatchedActor: baseStats.mostWatchedActor || 'Unknown',
      mostWatchedDirector: baseStats.mostWatchedDirector || 'Unknown',
      topKeywords: baseStats.topKeywords || [],
      reviewsWritten: baseStats.reviewsWritten || 0,
      activitiesCount: activitiesCount || baseStats.activitiesCount || 0,
    };
  }, [yearlyStats, uniqueMoviesWatched, loggedMoviesCount, activitiesCount, mostLoggedMovie, activityLikes]);

  return (
    <section id="yearly-stats" className="relative">
      <div className="container px-6 mx-auto max-w-7xl">
        <div className="px-6 rounded-xl">
          <h2 className="text-white text-3xl md:text-5xl font-bold mb-6 text-center">
            Yearly Statistics {stats.year}
          </h2>

          {/* Most Logged Movie */}
          <div className="bg-black bg-opacity-60 rounded-xl p-6 shadow-md mb-6 flex flex-col md:flex-row items-center md:items-start gap-6 transition-transform duration-300 hover:scale-105">
            <img
              src={stats.mostLoggedMovie.poster}
              alt={stats.mostLoggedMovie.title}
              className="w-24 h-36 rounded-lg object-cover shadow"
              onError={(e) => {
                e.target.src = '/placeholder-movie.jpg';
              }}
            />
            <div className="text-center md:text-left">
              <p className="text-purpleWhite text-md md:text-lg font-semibold mb-2">
                Most Logged Movie
              </p>
              <h3
                className="text-white text-5xl font-bold truncate max-w-[240px]"
                title={stats.mostLoggedMovie.title}
              >
                {stats.mostLoggedMovie.title}
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
                title={stats.mostWatchedDirector}
              >
                {stats.mostWatchedDirector}
              </h4>
            </div>
            <div className="bg-black bg-opacity-60 rounded-xl p-6 shadow-md text-center transition-transform duration-300 hover:scale-105">
              <p className="text-purpleWhite text-md md:text-lg font-semibold mb-2">
                Most Watched Actor
              </p>
              <h4
                className="text-white text-4xl font-bold truncate max-w-[700px] mx-auto"
                title={stats.mostWatchedActor}
              >
                {stats.mostWatchedActor}
              </h4>
            </div>
          </div>

          {/* Stats Grid */}
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6 mb-6">
            <StatBox 
              title="Movies Watched" 
              value={stats.moviesWatched} 
              tooltip="Unique movies watched this year"
            />
            <StatBox 
              title="Movies Logged" 
              value={stats.moviesLogged} 
              tooltip="Total movie logging activities"
            />
            <StatBox 
              title="Likes Received" 
              value={stats.likes} 
              tooltip="Total likes on your activities"
            />
            <StatBox 
              title="Reviews Written" 
              value={stats.reviewsWritten} 
              tooltip="Total reviews submitted"
            />
            <StatBox
              title="Activities Count"
              value={stats.activitiesCount}
              tooltip="Total activities (logs, reviews, likes)"
              isWide
            />
          </div>

          {/* Top Genre */}
          <div className="mb-6">
            <StatBox 
              title="Top Genre" 
              value={stats.topGenre} 
              isText 
              isWide
              tooltip="Your most watched genre this year"
            />
          </div>

          {/* Top Keywords */}
          {stats.topKeywords.length > 0 && (
            <div className="bg-black bg-opacity-60 rounded-xl p-6 shadow-md text-center transition-transform duration-300 hover:scale-105">
              <p className="text-purpleWhite text-md md:text-lg font-semibold mb-2">
                Top Keywords
                <span className="text-sm block opacity-80">From your watched movies</span>
              </p>
              <div className="flex flex-wrap justify-center gap-2 mt-2">
                {stats.topKeywords.slice(0, 10).map((keyword, index) => (
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

// Enhanced Stat Box component with tooltip
const StatBox = ({ title, value, isText = false, isWide = false, tooltip = '' }) => (
  <div
    className={`bg-black bg-opacity-60 rounded-xl p-6 shadow-md text-center transition-transform duration-300 hover:scale-105 relative group ${
      isWide ? 'lg:col-span-2' : ''
    }`}
    title={tooltip}
  >
    <p className="text-purpleWhite text-md md:text-lg font-semibold">
      {title}
      {tooltip && (
        <span className="ml-1 text-xs opacity-0 group-hover:opacity-80 transition-opacity">
          ⓘ
        </span>
      )}
    </p>
    <p
      className={`text-white mt-2 font-bold ${
        isText ? 'text-xl md:text-2xl truncate max-w-[200px] mx-auto' : 'text-4xl md:text-6xl'
      }`}
    >
      {value}
    </p>
  </div>
);

export default YearlyStats;