<section
  className="relative bg-cover bg-center bg-fixed min-h-screen"
  style={{
    backgroundImage: backdropUrl
      ? `url(${backdropUrl})`
      : "url('https://image.tmdb.org/t/p/original/aCHn2TXYJfzPXQKA6r9mKPbMlUB.jpg')",
  }}
>
  <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
  <div className="relative z-10 container mx-auto p-4 sm:p-6">
    <Navbar />

    <div className="relative z-10 pb-16 sm:pb-20">
      <section className="text-center pt-6 sm:pt-10">
        <h2 className="text-4xl sm:text-6xl text-white font-bold text-shadow">
          {profileUsername
            ? `${profileUsername}'s Watchlist`
            : 'Watchlist'}
        </h2>
        <p className="text-purple-300 mt-2 text-sm sm:text-base">
          {loading
            ? 'Loading...'
            : isPrivate
            ? 'This profile is private'
            : error
            ? 'Error loading watchlist'
            : `${movies.length} ${
                movies.length === 1 ? 'movie' : 'movies'
              } in watchlist`}
        </p>
      </section>

      {loading ? (
        <div className="flex justify-center items-center h-48 sm:h-64">
          <div className="animate-spin rounded-full h-10 w-10 sm:h-12 sm:w-12 border-t-2 border-b-2 border-purple-500"></div>
        </div>
      ) : isPrivate && !isOwnWatchlist ? (
        <div className="flex justify-center items-center h-48 sm:h-64">
          <div className="text-center p-4 sm:p-6 bg-darkPurple bg-opacity-90 rounded-lg max-w-sm">
            <h3 className="text-lg sm:text-xl text-white font-semibold mb-2">
              Private Profile
            </h3>
            <p className="text-purple-200 mb-4 text-sm sm:text-base">
              {token
                ? "This user has set their profile to private."
                : "This profile is private. Log in to see if you have access."}
            </p>
            {!token && (
              <button
                onClick={handleLoginRedirect}
                className="mt-2 px-3 py-2 sm:px-4 sm:py-2 bg-purple-600 rounded-lg hover:bg-purple-700 transition-colors text-sm sm:text-base"
              >
                Log In
              </button>
            )}
          </div>
        </div>
      ) : error ? (
        <div className="flex justify-center items-center h-48 sm:h-64">
          <div className="text-center p-4 sm:p-6 bg-darkPurple bg-opacity-90 rounded-lg max-w-sm">
            <h3 className="text-lg sm:text-xl text-white font-semibold mb-2">
              Error
            </h3>
            <p className="text-purple-200 text-sm sm:text-base">{error}</p>
            <button
              onClick={() => window.location.reload()}
              className="mt-4 px-3 py-2 sm:px-4 sm:py-2 bg-purple-600 rounded-lg hover:bg-purple-700 transition-colors text-sm sm:text-base"
            >
              Try Again
            </button>
          </div>
        </div>
      ) : movies.length > 0 ? (
        <>
          <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 gap-4 sm:gap-6 px-2 sm:px-4 lg:px-8">
            {movies.map((movie) => (
              <MovieCard key={movie.movieid} movie={movie} />
            ))}
          </div>
          {!token && (
            <div className="mt-6 sm:mt-8 text-center">
              <p className="text-purple-200 mb-4 text-sm sm:text-base">
                Want to create your own watchlist?
              </p>
              <button
                onClick={handleLoginRedirect}
                className="px-4 py-2 sm:px-6 sm:py-2 bg-purple-600 rounded-lg hover:bg-purple-700 transition-colors text-white font-medium text-sm sm:text-base"
              >
                Sign Up / Log In
              </button>
            </div>
          )}
        </>
      ) : (
        <div className="flex justify-center items-center h-48 sm:h-64">
          <div className="text-center p-4 sm:p-6 bg-darkPurple bg-opacity-90 rounded-lg max-w-sm">
            <h3 className="text-lg sm:text-xl text-white font-semibold mb-2">
              {isOwnWatchlist ? 'Your Watchlist is Empty' : 'No Movies Found'}
            </h3>
            <p className="text-purple-200 text-sm sm:text-base">
              {isOwnWatchlist
                ? 'Start adding movies to your watchlist!'
                : profileUsername
                ? `${profileUsername} hasn't added any movies yet.`
                : 'This watchlist is empty.'}
            </p>
            {!token && (
              <button
                onClick={handleLoginRedirect}
                className="mt-4 px-3 py-2 sm:px-4 sm:py-2 bg-purple-600 rounded-lg hover:bg-purple-700 transition-colors text-sm sm:text-base"
              >
                Log In to Create Your Watchlist
              </button>
            )}
          </div>
        </div>
      )}
    </div>
  </div>
  <Footer />
</section>
