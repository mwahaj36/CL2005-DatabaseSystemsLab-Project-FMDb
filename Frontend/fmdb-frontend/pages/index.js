import { useState, useEffect, useContext } from "react";
import { AuthContext } from "../context/AuthContext";
import Spotlight from "../components/Spotlight";
import Navbar from "../components/Navbar";
import HeroSection from "../components/HeroSection";
import Leaderboard from "../components/Leaderboard";
import Footer from "../components/Footer";
import UserSpotlight from "../components/UserSpotlight";

const HomePage = () => {
  const { user } = useContext(AuthContext);
  const [apiState, setApiState] = useState({
    trending: { data: [], loading: true, error: null },
    friendsActivity: { data: [], loading: false, error: null },
    friendsWatchlist: { data: [], loading: false, error: null }
  });

  // Fetch trending movies
  useEffect(() => {
    let isMounted = true;

    const fetchTrending = async () => {
      try {
        const res = await fetch('http://localhost:5000/movies/trending');
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

  // Fetch friends activity
  useEffect(() => {
    if (!user) return;

    let isMounted = true;
    setApiState(prev => ({ ...prev, friendsActivity: { ...prev.friendsActivity, loading: true } }));

    const fetchFriendsActivity = async () => {
      try {
        const res = await fetch('http://localhost:5000/movies/friends', {
          credentials: 'include'
        });
        if (!res.ok) throw new Error(`HTTP ${res.status}`);
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

  // Fetch friends watchlist
  useEffect(() => {
    if (!user) return;

    let isMounted = true;
    setApiState(prev => ({ ...prev, friendsWatchlist: { ...prev.friendsWatchlist, loading: true } }));

    const fetchFriendsWatchlist = async () => {
      try {
        const res = await fetch('http://localhost:5000/movies/friends/watchlist', {
          headers: {
            'Authorization': `Bearer ${user.token}` // Assuming token is stored in user context
          }
        });
        if (!res.ok) throw new Error(`HTTP ${res.status}`);
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

  return (
    <div className="relative bg-cover bg-center bg-fixed min-h-screen" 
         style={{ backgroundImage: "url('https://image.tmdb.org/t/p/original/ss0Os3uWJfQAENILHZUdX8Tt1OC.jpg')" }}>
      <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
      <Navbar />
      
      <h1 className="mt-10 relative z-10 text-8xl text-white text-shadow font-bold text-center">
        Welcome Back!        
        </h1>

      {/* Trending Movies */}
      <section className="relative z-10 pt-10">
        <h2 className="text-6xl text-white text-shadow font-bold text-center">
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

      {/* Friends Activity */}
      {user && (
        <section className="relative z-10 pt-16">
          <h2 className="text-6xl text-white text-shadow font-bold text-center mb-8">
            Friends' Recent Activity
          </h2>
          {apiState.friendsActivity.loading ? (
            <div className="text-center text-white py-10">Loading friends activity...</div>
          ) : apiState.friendsActivity.error ? (
            <div className="text-center text-red-400 py-10">{apiState.friendsActivity.error}</div>
          ) : apiState.friendsActivity.data.length > 0 ? (
            <Spotlight movies={apiState.friendsActivity.data} />
          ) : (
            <div className="text-center text-white py-10">No recent friend activity</div>
          )}
        </section>
      )}

      {/* Popular in Your Circle (Friends Watchlist) */}
      {user && (
        <section className="relative z-10 pt-16 pb-32">
          <h2 className="text-6xl text-white text-shadow font-bold text-center mb-8">
            Popular in Your Circle
          </h2>
          {apiState.friendsWatchlist.loading ? (
            <div className="text-center text-white py-10">Loading watchlist...</div>
          ) : apiState.friendsWatchlist.error ? (
            <div className="text-center text-red-400 py-10">{apiState.friendsWatchlist.error}</div>
          ) : apiState.friendsWatchlist.data.length > 0 ? (
            <Spotlight movies={apiState.friendsWatchlist.data} />
          ) : (
            <div className="text-center text-white py-10">No watchlist items found</div>
          )}
        </section>
      )}

      <Leaderboard topThree={topThreeUsers} />

      <Footer />
    </div>
  );
};

export default HomePage;