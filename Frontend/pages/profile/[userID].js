return (
  <>
    <Head>
      <title>{profileUser?.username ? `${profileUser.username}'s Profile` : 'User Profile'}</title>
    </Head>

    <section
      className="relative bg-cover bg-center bg-fixed"
      style={{ backgroundImage: `url(${backdropUrl})` }}
    >
      <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
      <div className="relative p-4 z-10">
        <Navbar />
        <ProfileHero 
          profileUser={profileUser} 
          isFriend={isFriend}
          onRemoveFriend={() => handleFriendUpdate(false)}
          currentUser={currentUser}
        />

        {showPrivateContent ? (
          <>
            <p className="text-2xl mt-6 mb-10 md:text-4xl font-bold text-center">Favorites</p>

            <div className="relative flex flex-wrap justify-center z-10 mt-6 space-y-6 md:space-y-0 md:space-x-6">
              {profileUser.favoriteMovies?.map((movie, index) => (
                <MovieCard 
                  key={index} 
                  movie={{
                    movieid: movie.movieid,
                    title: movie.title,
                    movieposterlink: movie.movieposterlink,
                    directors: movie.directors
                  }} 
                  className="w-full sm:w-1/2 md:w-1/3 lg:w-1/4"
                />
              ))}
            </div>

            <div className="grid grid-cols-1 gap-6 mt-12 md:grid-cols-2">
              <div className="w-full flex flex-col p-4 rounded-xl">
                <h1 className="text-3xl font-bold mb-4 text-white text-center">Recent Reviews</h1>
                <ThirdScreenReviewsP 
                  reviews={formattedReviews} 
                  userId={profileUser.userID}
                  userType={profileUser.userType}
                />
              </div>

              {profileUser.yearlyStats && (
                <div className="w-full flex flex-col p-4 rounded-xl">
                  <YearlyStats 
                    yearlyStats={profileUser.yearlyStats} 
                    uniqueMoviesWatched={profileUser.basicDetails?.uniqueMoviesWatched}
                    loggedMoviesCount={profileUser.basicDetails?.loggedMoviesCount}
                    activitiesCount={profileUser.basicDetails?.activitiesCount}
                    mostLoggedMovie={profileUser.basicDetails?.mostLoggedMovie}
                    activityLikes={profileUser.basicDetails?.activityLikes}
                  />
                </div>
              )}
            </div>

            {isCurrentUser && currentUser?.userType === 'User' && (
              <div className="flex flex-col items-center space-y-4 mt-8">
                <div className="flex flex-wrap justify-center space-x-4">
                  <button
                    onClick={() => requestUserTypeChange('Critic')}
                    disabled={apiLoading}
                    className="bg-purple text-white px-3 py-2 rounded-lg hover:bg-darkPurple transition disabled:opacity-50"
                  >
                    Apply to be Critic
                  </button>
                  <button
                    onClick={() => requestUserTypeChange('Admin')}
                    disabled={apiLoading}
                    className="bg-purple text-white px-3 py-2 rounded-lg hover:bg-darkPurple transition disabled:opacity-50"
                  >
                    Apply to be Admin
                  </button>
                </div>
                {responseMsg && <p className="text-purpleWhite text-center">{responseMsg}</p>}
              </div>
            )}
          </>
        ) : (
          <div className="mt-6 text-center">
            <p className="text-white mt-6 font-semibold text-center text-xl md:text-2xl">
              Shh... this user's movie vault is private.<br />
              {currentUser ? "Become friends to peek behind the scenes!" : "Log in and become friends to see more!"}
            </p>
          </div>
        )}
      </div>
      <Footer />
    </section>
  </>
);
