import { useState, useEffect, useContext } from "react";
import { AuthContext } from "../context/AuthContext";
import ThirdScreenReviews from "@/components/ThirdScreenReviews";
import Spotlight from "../components/Spotlight";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import Head from "next/head";
const HomePage = () => {
  const { user } = useContext(AuthContext);
  const [topMovies, setTopMovies] = useState([]);
  const [topReviews, setTopReviews] = useState([]);
  const [loading, setLoading] = useState({
    movies: true,
    reviews: true
  });
  const [error, setError] = useState({
    movies: null,
    reviews: null
  });

  // Fetch top 5 movies based on critic ratings
  useEffect(() => {
    const fetchTopMovies = async () => {
      try {
       const API_URL = process.env.NEXT_PUBLIC_API_URL;
        const response = await fetch(`${API_URL}/critic/movies`);
        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }
        const data = await response.json();
        if (data.success && data.movies) {
          setTopMovies(data.movies);
        } else {
          setError(prev => ({...prev, movies: 'No movies found'}));
        }
      } catch (err) {
        setError(prev => ({...prev, movies: err.message}));
      } finally {
        setLoading(prev => ({...prev, movies: false}));
      }
    };

    fetchTopMovies();
  }, []);

  // Fetch top 10 critic reviews from past 7 days
  useEffect(() => {
    const fetchTopReviews = async () => {
      try {
        const API_URL = process.env.NEXT_PUBLIC_API_URL;
        const publicResponse = await fetch(`${API_URL}/critic/reviews`);

        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }
        const data = await response.json();
        if (data.success && data.reviews) {
          setTopReviews(data.reviews);
        } else {
          setError(prev => ({...prev, reviews: 'No reviews found'}));
        }
      } catch (err) {
        setError(prev => ({...prev, reviews: err.message}));
      } finally {
        setLoading(prev => ({...prev, reviews: false}));
      }
    };

    fetchTopReviews();
  }, []);


  return (
    <>
    <Head>
      <title>Verified Critics</title>  
      </Head>
    <div>
      <div className="relative bg-cover bg-center bg-fixed" style={{ backgroundImage: "url('https://image.tmdb.org/t/p/original/nvxrQQspxmSblCYDtvDAbVFX8Jt.jpg')" }}>
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
        <Navbar />
        
        <h2 className="text-5xl md:text-7xl mt-5 text-gold font-bold text-center drop-shadow-lg">
          This Week's Top 5
        </h2>
        
        {loading.movies ? (
          <div className="text-center text-white py-10">Loading top movies...</div>
        ) : error.movies ? (
          <div className="text-center text-red-400 py-10">{error.movies}</div>
        ) : (
          <Spotlight movies={topMovies} />
        )}
        
        <h2 className="text-5xl md:text-6xl mt-10 mb-10 text-gold font-bold text-center drop-shadow-lg">
          Top Critics' Activity
        </h2>
        
        {loading.reviews ? (
          <div className="text-center text-white py-10">Loading top reviews...</div>
        ) : error.reviews ? (
          <div className="text-center text-red-400 py-10">{error.reviews}</div>
        ) : (
          <ThirdScreenReviews reviews={topReviews} />
        )}
        
        <Footer />
      </div>
    </div></>
    
  );
};

export default HomePage;