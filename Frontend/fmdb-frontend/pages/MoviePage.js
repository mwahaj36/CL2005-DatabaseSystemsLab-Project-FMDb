import React from 'react';
import CastAndCrew from '../components/CastAndCrew';
import TrendingReviews from '../components/TrendingReviews';
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import MovieHero from "../components/MovieHero";

const MoviePage = () => {
  // Example data for cast, crew, and reviews
  const crewData = {
    director: 'Todd Phillips',
    writer: 'Todd Phillips, Scott Silver, Bob Kane, Bill Finger, Jerry Robinson',
    cast: [
      { character: 'Arthur Fleck / Joker', actor: 'Joaquin Phoenix' },
      { character: 'Murray Franklin', actor: 'Robert De Niro' },
      { character: 'Sophia Dumond', actor: 'Zazie Beetz' },
      { character: 'Thomas Wayne', actor: 'Brett Cullen' },
      { character: 'Alfred Pennyworth', actor: 'Douglas Hodge' },
      // Add more as needed
    ]
  };

  const reviewsData = [
    {
      rating: 9.2,
      text: '“Phoenix delivers a career-defining performance — I was haunted and mesmerized at the same time.”',
      username: '@cinemaniac22',
      usertype: 'Verified Critic',
    },
    {
      rating: 9.5,
      text: '“A raw, unsettling deep dive into the making of a villain. This is not just a movie, it’s a psychological experience.”',
      username: '@moviebuff_kay',
      usertype: 'User',
    },
    {
      rating: 9.1,
      text: '“The cinematography, the score, the storytelling — everything was top-tier. Joker will stay with you.”',
      username: '@reelreaper',
      usertype: 'Verified Critic',
    },
    {
      rating: 8.7,
      text: '“This film is a chilling reminder of how society treats the broken. Every frame is a punch to the gut.”',
      username: '@framebyframe',
      usertype: 'Admin',
    },
    {
      rating: 9.4,
      text: '“Dark, disturbing, and absolutely brilliant. Joker deserves all the praise it gets and more.”',
      username: '@gothamreviews',
      usertype: 'User',
    },
  ];

  const movieData = {
    title: "Joker",
    year: "2019",
    synopsis: "A socially inept clown for hire - Arthur Fleck aspires to be a stand up comedian among his small job working dressed as a clown holding a sign for advertising. He takes care of his mother, Penny Fleck, and as he learns more about his mental illness, he learns more about his past. Dealing with all the negativity and bullying from society, he heads downwards on a spiral, in turn showing how his alter ego, Joker, came to be.",
    imdbRating: 8.3,
    fmdbRating: 9.0,
    boxOffice: "$335,477,657",
    awards: "Won 2 Oscars. 121 wins & 247 nominations total",
    releaseDate: "04 Oct 2019",
    genre: "Crime, Drama, Thriller",
    length: "122 minutes",
    language: "English, German",
    type: "Movie",
    mpaaRating: "R",
    posterUrl: "https://image.tmdb.org/t/p/original/udDclJoHjfjb8Ekgsd4FDteOkCU.jpg",
  };

  // Dynamic background image URL
  const backgroundImageUrl = 'https://image.tmdb.org/t/p/original/n6bUvigpRFqSwmPp1m2YADdbRBc.jpg'; // Replace with dynamic data

  return (
    <div>
      {/* Background Section */}
      <section
        className="relative bg-cover bg-center bg-fixed"
        style={{ backgroundImage: `url(${backgroundImageUrl})` }}
      >
        {/* Purple Overlay */}
        <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
        <Navbar />
        <MovieHero movieData={movieData} />
        <div className="container px-6 mx-auto mt-16 relative z-10">
          <div className="grid grid-cols-1 md:grid-cols-2 gap-10">
            {/* Cast & Crew Section */}
            <CastAndCrew crewData={crewData} />

            {/* Trending Reviews Section */}
            <TrendingReviews reviewsData={reviewsData} />
          </div>
        </div>
        <Footer />
      </section>
    </div>
  );
};

export default MoviePage;
