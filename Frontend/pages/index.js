import { useState, useEffect, useContext } from "react";
import { AuthContext } from "../context/AuthContext";
import Spotlight from "../components/Spotlight";
import Navbar from "../components/Navbar";
import HeroSection from "../components/HeroSection";
import Leaderboard from "../components/Leaderboard";
import Footer from "../components/Footer";
import UserSpotlight from "../components/UserSpotlight";

const HomePage = () => {
  const { user, token } = useContext(AuthContext);

  const [apiState, setApiState] = useState({
    trending: { data: [], loading: true, error: null },
    recommended: { data: [], loading: false, error: null, recommendedOn: "" },
    friendsActivity: { data: [], loading: false, error: null },
    friendsWatchlist: { data: [], loading: false, error: null }
  });

  // Fetch trending movies (for all users)
  useEffect(() => {
    let isMounted = true;

    const fetchTrending = async () => {
      try {
        const res = await fetch('https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net//movies/trending');
        if (!res.ok) throw new Error(`HTTP ${res.status}`);
        const json = await res.json();

        if (isMounted) {
          setApiState(prev => ({
            ...prev,
            trending: {
              data: json.movies || [],
              loading: false,
              error: null
            }
          }));
        }
      } catch (err) {
        if (isMounted) {
          setApiState(prev => ({
            ...prev,
            trending: {
              ...prev.trending,
              loading: false,
              error: err.message
            }
          }));
        }
      }
    };

    fetchTrending();
    return () => { isMounted = false };
  }, []);

  // Fetch recommended movies (only for logged in users)
  useEffect(() => {
    if (!user) return;

    let isMounted = true;
    setApiState(prev => ({ ...prev, recommended: { ...prev.recommended, loading: true } }));

    const fetchRecommended = async () => {
      try {
        const res = await fetch('https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net//movies/recommended', {
          credentials: 'include',
          headers: {
            Authorization: `Bearer ${token}`
          }
        });
        if (!res.ok) {
          // If 404, set empty data and no error (we'll hide the section)
          if (res.status === 404) {
            if (isMounted) {
              setApiState(prev => ({
                ...prev,
                recommended: {
                  data: [],
                  recommendedOn: "",
                  loading: false,
                  error: null
                }
              }));
            }
            return;
          }
          throw new Error(`HTTP ${res.status}`);
        }
        const json = await res.json();

        if (isMounted) {
          setApiState(prev => ({
            ...prev,
            recommended: {
              data: json.movies || [],
              recommendedOn: json.recommendedOn || "",
              loading: false,
              error: null
            }
          }));
        }
      } catch (err) {
        if (isMounted) {
          setApiState(prev => ({
            ...prev,
            recommended: {
              ...prev.recommended,
              loading: false,
              error: err.message
            }
          }));
        }
      }
    };

    fetchRecommended();
    return () => { isMounted = false };
  }, [user]);

  // Fetch friends activity (only for logged in users)
  useEffect(() => {
    if (!user) return;

    let isMounted = true;
    setApiState(prev => ({ ...prev, friendsActivity: { ...prev.friendsActivity, loading: true } }));

    const fetchFriendsActivity = async () => {
      try {
        const res = await fetch('https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net//movies/friends', {
          credentials: 'include',
          headers: {
            Authorization: `Bearer ${token}`
          }
        });
        if (!res.ok) {
          // If 404, set empty data and no error (we'll hide the section)
          if (res.status === 404) {
            if (isMounted) {
              setApiState(prev => ({
                ...prev,
                friendsActivity: {
                  data: [],
                  loading: false,
                  error: null
                }
              }));
            }
            return;
          }
          throw new Error(`HTTP ${res.status}`);
        }
        const json = await res.json();

        if (isMounted) {
          setApiState(prev => ({
            ...prev,
            friendsActivity: {
              data: json.movies || [],
              loading: false,
              error: null
            }
          }));
        }
      } catch (err) {
        if (isMounted) {
          setApiState(prev => ({
            ...prev,
            friendsActivity: {
              ...prev.friendsActivity,
              loading: false,
              error: err.message
            }
          }));
        }
      }
    };

    fetchFriendsActivity();
    return () => { isMounted = false };
  }, [user]);

  // Fetch friends watchlist (only for logged in users)
  useEffect(() => {
    if (!user) return;

    let isMounted = true;
    setApiState(prev => ({ ...prev, friendsWatchlist: { ...prev.friendsWatchlist, loading: true } }));

    const fetchFriendsWatchlist = async () => {
      try {
        const res = await fetch('https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net//movies/friends/watchlist', {
          credentials: 'include',
          headers: {
            'Authorization': `Bearer ${token}`
          }
        });
        if (!res.ok) {
          // If 404, set empty data and no error (we'll hide the section)
          if (res.status === 404) {
            if (isMounted) {
              setApiState(prev => ({
                ...prev,
                friendsWatchlist: {
                  data: [],
                  loading: false,
                  error: null
                }
              }));
            }
            return;
          }
          throw new Error(`HTTP ${res.status}`);
        }
        const json = await res.json();

        if (isMounted) {
          setApiState(prev => ({
            ...prev,
            friendsWatchlist: {
              data: json.movies || [],
              loading: false,
              error: null
            }
          }));
        }
      } catch (err) {
        if (isMounted) {
          setApiState(prev => ({
            ...prev,
            friendsWatchlist: {
              ...prev.friendsWatchlist,
              loading: false,
              error: err.message
            }
          }));
        }
      }
    };

    fetchFriendsWatchlist();
    return () => { isMounted = false };
  }, [user]);

  const topThreeUsers = [
    { username: "john_doe", image: "", activities: 50, moviesWatched: 20 },
    { username: "jane_smith", image: "", activities: 38, moviesWatched: 12 },
    { username: "mark_twain", image: "", activities: 30, moviesWatched: 10 }
  ];

  // Helper to determine if a section should be shown
  const shouldShowSection = (section) => {
    // Don't show if there was an error (other than 404 which we've handled)
    if (section.error && section.error.includes('404')) return false;
    if (section.error) return false;
    
    // Show if there's data or if it's still loading (we'll show loading state)
    return section.data.length > 0 || section.loading;
  };

  return (
    <div className="relative bg-cover bg-center bg-fixed min-h-screen" 
         style={{ backgroundImage: "url('https://image.tmdb.org/t/p/original/ss0Os3uWJfQAENILHZUdX8Tt1OC.jpg')" }}>
      <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
      <Navbar />
      
      {/* Welcome message for logged in users */}
      {user && (
        <h1 className=" relative z-10 text-8xl text-white text-shadow font-bold text-center">
          Welcome Back!
        </h1>
      )}

      {/* Hero section for non-logged in users */}
      {!user && <HeroSection />}

      {/* Spotlight section (for all users) */}
      <section className="relative z-10 pt-10">
        <h2 className="-mt-5 text-6xl text-white text-shadow font-bold text-center">
          In the Spotlight
        </h2>
        {apiState.trending.loading ? (
          <div className="text-center text-white py-10">Loading trending movies...</div>
        ) : apiState.trending.error ? (
          <div className="text-center text-red-400 py-10">{apiState.trending.error}</div>
        ) : (
          <Spotlight movies={apiState.trending.data} />
        )}
      </section>

      {/* Logged in user content */}
      {user && (
        <>
          {/* Recommended for you - only show if there's data or loading */}
          {shouldShowSection(apiState.recommended) && (
            <section className="relative z-10 pt-16">
              <h2 className="text-6xl text-white text-shadow font-bold text-center mb-2">
                Recommended For You
              </h2>
              {apiState.recommended.recommendedOn && (
                <p className="text-center text-purple-300 text-xl mb-6]]">
                  Based on your interest in: {apiState.recommended.recommendedOn}
                </p>
              )}
              {apiState.recommended.loading ? (
                <div className="text-center text-white py-10">Loading recommendations...</div>
              ) : apiState.recommended.data.length > 0 ? (
                <Spotlight movies={apiState.recommended.data} />
              ) : null}
            </section>
          )}

          {/* Friends' Recent Activity - only show if there's data or loading */}
          {shouldShowSection(apiState.friendsActivity) && (
            <section className="relative z-10 pt-16">
              <h2 className="text-6xl text-white text-shadow font-bold text-center mb-8">
                Friends' Recent Activity
              </h2>
              {apiState.friendsActivity.loading ? (
                <div className="text-center text-white py-10">Loading friends activity...</div>
              ) : apiState.friendsActivity.data.length > 0 ? (
                <Spotlight movies={apiState.friendsActivity.data} />
              ) : null}
            </section>
          )}

          {/* Popular in Your Circle - only show if there's data or loading */}
          {shouldShowSection(apiState.friendsWatchlist) && (
            <section className="relative z-10 pt-16">
              <h2 className="text-6xl text-white text-shadow font-bold text-center mb-8">
                Popular in Your Circle
              </h2>
              {apiState.friendsWatchlist.loading ? (
                <div className="text-center text-white py-10">Loading watchlist...</div>
              ) : apiState.friendsWatchlist.data.length > 0 ? (
                <Spotlight movies={apiState.friendsWatchlist.data} />
              ) : null}
            </section>
          )}
        </>
      )}

      {/* Leaderboard (for all users) */}
      <Leaderboard topThree={topThreeUsers} />

      <Footer />
    </div>
  );
};

export default HomePage;