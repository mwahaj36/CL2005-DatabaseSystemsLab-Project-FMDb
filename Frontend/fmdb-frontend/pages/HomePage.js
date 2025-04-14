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


  return (
    <div className="relative bg-cover bg-center bg-fixed" style={{ backgroundImage: "url('https://image.tmdb.org/t/p/original/ss0Os3uWJfQAENILHZUdX8Tt1OC.jpg')" }}>
      <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
      <div>
        <Navbar />
        <HeroSection />
        <Spotlight movies={topFiveMovies} />
        <Leaderboard />
        <Footer />
      </div>
    </div>
  );
};

export default HomePage;
