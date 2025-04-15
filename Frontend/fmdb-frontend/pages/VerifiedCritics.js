import { useContext } from "react";
import { AuthContext } from "../context/AuthContext";
import ThirdScreenReviews from "@/components/ThirdScreenReviews";
import Spotlight from "../components/Spotlight";
import Navbar from "../components/Navbar";
import HeroSection from "../components/HeroSection";
import MovieList from "../components/MovieList";
import Leaderboard from "../components/Leaderboard";
import Footer from "../components/Footer";
import UserSpotlight from "../components/UserSpotlight"; // Spotlight for logged-in users
import moviesData from "../data/FMDBDatabase.json"; // ✅ FIXED: direct array

const HomePage = () => {
  const { user } = useContext(AuthContext); // Getting user from context
    const topFiveMovies = [...moviesData]
      .filter(movie => movie.IMDB_Rating && !isNaN(parseFloat(movie.IMDB_Rating)))
      .sort((a, b) => parseFloat(b.IMDB_Rating) - parseFloat(a.IMDB_Rating))
      .slice(0, 5);
  
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
      <h2 className="text-5xl md:text-6xl mt-10 mb-10 text-white font-bold text-center drop-shadow-lg">
        This Week's Top 4
      </h2>
      <Spotlight movies={topFiveMovies} />
      <h2 className="text-5xl md:text-6xl mt-10 mb-10 text-white font-bold text-center drop-shadow-lg">
        Top Critics' Activity
      </h2>
      <ThirdScreenReviews />
      <Footer />
    </div>
    </div>
  );
};

export default HomePage;
