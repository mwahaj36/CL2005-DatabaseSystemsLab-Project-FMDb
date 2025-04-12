import Navbar from "../components/Navbar";
import HeroSection from "../components/HeroSection";
import MovieList from "../components/MovieList";
import Leaderboard from "../components/Leaderboard";
import Footer from "../components/Footer";

const HomePage = () => {
  return (
    <div>
      <Navbar />
      <HeroSection />
      <MovieList />
      <Leaderboard />
      <Footer />
    </div>
  );
};

export default HomePage;
