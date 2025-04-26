import React from "react";
import Navbar from "@/components/Navbar";
import Footer from "@/components/Footer";
import { useLocation } from "react-router-dom"; // If using React Router
// Or pass `movie` as prop if you're using Next.js routing

export default function AllReviews() {
  const location = useLocation();
  const { movie } = location.state || {};

  if (!movie) {
    return (
      <div className="flex items-center justify-center h-screen bg-darkPurple text-white text-xl">
        No movie data provided.
      </div>
    );
  }

  const { title, year, director, backdrop, reviews } = movie;

  return (
    <div
      className="relative bg-cover bg-center bg-fixed min-h-screen"
      style={{ backgroundImage: `url(${backdrop})` }}
    >
      {/* Purple Overlay */}
      <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>

      {/* Navbar */}
      <Navbar />

      {/* Spacer */}
      <div className="h-24"></div>

      {/* Main Content */}
      <section className="relative z-10 mt-5 px-4 md:px-20">
        {/* Movie Info */}
        <div className="max-w-7xl mx-auto text-center mb-10">
          <h1 className="text-white text-5xl md:text-7xl font-bold">
            {title}{" "}
            <span className="text-purpleWhite font-semibold text-3xl md:text-5xl">
              ({year})
            </span>
          </h1>
          {director && (
            <p className="text-purpleWhite text-2xl md:text-3xl font-semibold mt-2">
              Directed by {director}
            </p>
          )}
        </div>

        {/* Heading */}
        <h2 className="text-white text-4xl md:text-5xl font-bold text-center mb-10">
          Reviews
        </h2>

        {/* Reviews Grid or Empty Message */}
        {reviews && reviews.length > 0 ? (
          <div className="grid grid-cols-1 md:grid-cols-2 gap-8 max-w-7xl mx-auto">
            {reviews.map((review, index) => (
              <div
                key={index}
                className="bg-black bg-opacity-60 p-6 rounded-3xl shadow-md hover:scale-[1.02] transition-transform duration-300 relative"
              >
                <div className="flex items-start space-x-6">
                  <div className="bg-purpleWhite font-bold text-2xl md:text-3xl px-6 py-9 rounded-xl shadow-inner">
                    {review.rating}
                  </div>
                  <div className="text-left flex-1">
                    <p className="text-white text-lg md:text-xl italic">
                      “{review.text}”
                    </p>
                    <p className="text-purpleWhite font-bold mt-3 text-md">
                      @{review.author}
                    </p>
                  </div>
                </div>
                <div className="absolute bottom-4 right-4">
                  <button className="text-purpleWhite hover:text-pink-500 text-2xl md:text-3xl transition-transform duration-200 hover:scale-125 focus:outline-none">
                    <i className="fas fa-heart"></i>
                  </button>
                </div>
              </div>
            ))}
          </div>
        ) : (
          <p className="text-white text-center text-2xl mt-16">
            No reviews yet for this film.
          </p>
        )}
      </section>

      {/* Footer */}
      <Footer />
    </div>
  );
}
