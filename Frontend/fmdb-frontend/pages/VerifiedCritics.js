import { useState, useEffect, useContext } from "react";
import { AuthContext } from "../context/AuthContext";
import ThirdScreenReviews from "@/components/ThirdScreenReviews";
import Spotlight from "../components/Spotlight";
import Navbar from "../components/Navbar";
import HeroSection from "../components/HeroSection";
import MovieList from "../components/MovieList";
import Leaderboard from "../components/Leaderboard";
import Footer from "../components/Footer";
import UserSpotlight from "../components/UserSpotlight";

const HomePage = () => {
  const { user } = useContext(AuthContext);
  const [topMovies, setTopMovies] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // Fetch top 5 movies based on critic ratings
  useEffect(() => {
    const fetchTopMovies = async () => {
      try {
        const response = await fetch('http://localhost:5000/movies/critics');
        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }
        const data = await response.json();
        if (data.success && data.movies) {
          setTopMovies(data.movies);
        } else {
          setError('No movies found');
        }
      } catch (err) {
        setError(err.message);
      } finally {
        setLoading(false);
      }
    };

    fetchTopMovies();
  }, []);

  const topThreeUsers = [
    {
      username: "john_doe",
      image: "https://example.com/gold.jpg",
      activities: 50,
      moviesWatched: 20,
    },
    {
      username: "jane_smith",
      image: "https://example.com/silver.jpg",
      activities: 38,
      moviesWatched: 12,
    },
    {
      username: "mark_twain",
      image: "https://example.com/bronze.jpg",
      activities: 30,
      moviesWatched: 10,
    },
  ];

  return (
    <div>
      <div className="relative bg-cover bg-center bg-fixed" style={{ backgroundImage: "url('https://image.tmdb.org/t/p/original/nvxrQQspxmSblCYDtvDAbVFX8Jt.jpg')" }}>
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
        <Navbar />
        
        <h2 className="text-5xl md:text-7xl mt-5 text-gold font-bold text-center drop-shadow-lg">
          This Week's Top 5
        </h2>
        
        {loading ? (
          <div className="text-center text-white py-10">Loading top movies...</div>
        ) : error ? (
          <div className="text-center text-red-400 py-10">{error}</div>
        ) : (
          <Spotlight movies={topMovies} />
        )}
        
        <h2 className="text-5xl md:text-6xl mt-10 mb-10 text-gold font-bold text-center drop-shadow-lg">
          Top Critics' Activity
        </h2>
        <ThirdScreenReviews />
        <Footer />
      </div>
    </div>
  );
};

export default HomePage;