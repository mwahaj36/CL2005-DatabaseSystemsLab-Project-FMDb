import Navbar from "../components/Navbar";
import HeroSection from "../components/HeroSection";
import Spotlight from "../components/Spotlight";
import Leaderboard from "../components/Leaderboard";
import Footer from "../components/Footer";
import moviesData from "../data/FMDBDatabase.json"; // ✅ FIXED: direct array

const HomePage = () => {
  // ✅ Get top 5 movies by IMDB rating
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
    <div className="relative bg-cover bg-center bg-fixed" style={{ backgroundImage: "url('https://image.tmdb.org/t/p/original/ss0Os3uWJfQAENILHZUdX8Tt1OC.jpg')" }}>
      <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
      <div>
        <Navbar />
        <HeroSection />
        <Spotlight movies={topFiveMovies} />
        <Leaderboard topThree={topThreeUsers} />
        <Footer />
      </div>
    </div>
  );
};

export default HomePage;
