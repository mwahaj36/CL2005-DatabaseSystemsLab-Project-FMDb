import React from 'react';

const MovieHero = ({ movieData }) => {
  return (
    <section id="hero" className="relative -mt-14">
      <div className="relative z-10 mt-10 container flex flex-row px-6 mx-auto space-y-0 md:space-y-0">
        {/* Poster */}
        <div className="flex mt-24 flex-col items-center p-6 space-y-6 rounded-lg bg-veryLightGray md:w-1/3">
          <img
            src={movieData.Poster}
            className="-mt-14 shadow-lg shadow-xl rounded-lg transition-transform duration-300 hover:scale-105"
            alt={movieData.Title}
          />
        </div>

        <div className="flex flex-col mb-40 md:w-4/5">
          {/* Title, Year, and Log Button */}
          <div className="w-full flex items-end justify-between mt-20 flex-wrap gap-4">
            {/* Left: Title & Year */}
            <div className="flex items-end space-x-4">
              <h1 className="text-white text-3xl font-bold md:text-6xl">{movieData.Title}</h1>
              {movieData.ReleaseDate && !isNaN(new Date(movieData.ReleaseDate).getFullYear()) && (
  <h2 className="text-purpleWhite text-xl font-bold md:text-3xl">
    {new Date(movieData.ReleaseDate).getFullYear()}
  </h2>
)}

            </div>

            {/* Right: Log Button */}
            <div className="mt-6 flex space-x-5 justify-end">
              <button className="bg-purpleWhite hover:bg-purple hover:text-purple transition-colors duration-200 text-darkPurple hover:text-white font-semibold py-2 px-4 rounded-2xl shadow-md">
                Add Activity
              </button>
            </div>
          </div>

          {/* Synopsis */}
          <div className="mt-8 bg-black bg-opacity-40 p-6 rounded-xl shadow-xl">
            <p className="text-white text-sm md:text-xl leading-relaxed drop-shadow-xl">
              {movieData.Synopsis}
            </p>
          </div>

          {/* Stats Boxes */}
          <div className="mt-8 grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
            {/* IMDb Rating */}
            <div className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-xl p-4 shadow-lg flex flex-col items-center justify-center text-center">
              <p className="text-purpleWhite text-md md:text-lg font-semibold">IMDb Rating</p>
              <p className="text-white text-sm md:text-7xl font-bold">{movieData.IMDB_Rating}</p>
            </div>

            {/* FMDb Rating (Placeholder) */}
            <div className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-xl p-4 shadow-lg flex flex-col items-center justify-center text-center">
              <p className="text-purpleWhite text-md md:text-lg font-semibold">FMDb Rating</p>
              <p className="text-white text-sm md:text-7xl font-bold">-</p>
            </div>

            {/* Box Office */}
            <div className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-xl p-4 shadow-lg flex flex-col items-center justify-center text-center">
              <p className="text-purpleWhite text-md md:text-lg font-semibold">Box Office</p>
              <p className="text-white text-sm md:text-3xl font-bold">{movieData.BoxOffice}</p>
            </div>

            {/* Awards */}
            <div className="bg-black bg-opacity-60 transition-transform duration-300 hover:scale-105 rounded-xl p-4 shadow-lg flex flex-col items-center justify-center text-center">
              <p className="text-purpleWhite text-md md:text-lg font-semibold">Awards</p>
              <p className="text-white text-sm md:text-xl font-bold leading-tight">
                {movieData.Awards}
              </p>
            </div>
          </div>

          {/* Extra Movie Info */}
          <div className="mt-6 space-y-4 text-white text-sm md:text-lg">
            {/* Row 1 */}
            <div className="flex flex-col sm:flex-row justify-between gap-y-2 gap-x-6">
              <span><span className="font-bold text-purpleWhite">Release Date:</span> {movieData.ReleaseDate}</span>
              <span><span className="font-bold text-purpleWhite">Genre:</span> {movieData.Genre}</span>
              <span><span className="font-bold text-purpleWhite">Length:</span> {movieData.Length}</span>
            </div>
            {/* Row 2 */}
            <div className="flex flex-col sm:flex-row justify-between gap-y-2 gap-x-6">
              <span><span className="font-bold text-purpleWhite">Language:</span> {movieData.Language}</span>
              <span><span className="font-bold text-purpleWhite">Type:</span> {movieData.Type}</span>
              <span><span className="font-bold text-purpleWhite">MPAA Rating:</span> {movieData.MPAA_Rating}</span>
            </div>
          </div>
        </div>
      </div>
    </section>
  );
};

export default MovieHero;
