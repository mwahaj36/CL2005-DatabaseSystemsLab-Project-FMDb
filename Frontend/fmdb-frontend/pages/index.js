import Navbar from "../components/Navbar";
import HeroSection from "../components/HeroSection";
import Spotlight from "../components/Spotlight";
import Leaderboard from "../components/Leaderboard";
import Footer from "../components/Footer";

const HomePage = () => {

  const movies = [
    {
      MovieID: "tt2975590",
      Title: "Batman V Superman: Dawn Of Justice",
      Poster: "https://image.tmdb.org/t/p/original/5UsK3grJvtQrtzEgqNlDljJW96w.jpg"
    },
    {
      MovieID: "tt0109424",
      Title: "Chungking Express",
      Poster: "https://image.tmdb.org/t/p/original/43I9DcNoCzpyzK8JCkJYpHqHqGG.jpg"
    },
    {
      MovieID: "tt0068646",
      Title: "The Godfather",
      Poster: "https://image.tmdb.org/t/p/original/3bhkrj58Vtu7enYsRolD1fZdja1.jpg"
    },
    {
      MovieID: "tt15398776",
      Title: "Oppenheimer",
      Poster: "https://image.tmdb.org/t/p/original/8Gxv8gSFCU0XGDykEGv7zR1n2ua.jpg"
    }
  ];
  


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
    {/* Purple Overlay on background */}
    <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
    <div>
      <Navbar />
      <HeroSection />
      <Spotlight movies={movies} />
      <Leaderboard topThree={topThreeUsers} />
      <Footer />
    </div>
    </div>
  );
};

export default HomePage;
