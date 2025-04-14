import React, { useEffect, useState } from 'react';
import { useRouter } from 'next/router';

const LoggedMovies = () => {
  const router = useRouter();
  const { userID } = router.query;  // Get the userID from the URL
  const [userData, setUserData] = useState(null);
  const [errorMessage, setErrorMessage] = useState('');
  const [movies, setMovies] = useState([]);
  const [loading, setLoading] = useState(true);

  // Mock data for users and movies
  const usersData = [
    { id: 'chamkadar1234', access: 'private', friends: ['2'] },
    { id: '2', access: 'friend', friends: ['chamkadar1234'] },
    { id: '3', access: 'private' },
  ];

  const mockMovies = [
    {
      date: 'April 25, 2025',
      title: 'Dev.D',
      year: 2009,
      description: 'A hauntingly brilliant modern retelling of Devdas.',
      rating: 10,
      poster: 'https://rukminim2.flixcart.com/image/850/1000/poster/z/f/7/dev-d-pbutv28dev16p23-medium-original-imadkj7dnujg4pgg.jpeg?q=90&crop=false',
    },
    {
      date: 'April 6, 2025',
      title: 'Mickey 17',
      year: 2025,
      description: '',
      rating: 9.1,
      poster: 'https://image.tmdb.org/t/p/original/sY4n1osXuddwZokEmWUu1kq7U8g.jpg',
    },
    {
      date: 'April 6, 2025',
      title: 'A Minecraft Movie',
      year: 2025,
      description: null,  // No description available
      rating: null,  // No rating available
      poster: 'https://m.media-amazon.com/images/M/MV5BYzFjMzNjOTktNDBlNy00YWZhLWExYTctZDcxNDA4OWVhOTJjXkEyXkFqcGc@._V1_.jpg',
    },
  ];

  // Mock current user for this example
  const currentUser = 'chamkadar1234';  // Assume user 1 is the logged-in user

  useEffect(() => {
    if (userID) {
      setLoading(true);

      const user = usersData.find((user) => user.id === userID);

      if (!user) {
        setErrorMessage('User not found.');
        setLoading(false);
        return;
      }

      if (
        user.access === 'public' ||
        user.id === currentUser ||
        user.friends?.includes(currentUser)
      ) {
        setUserData(user);
        setMovies(mockMovies);
      } else {
        setErrorMessage('You don’t have access to this user’s data.');
      }

      setLoading(false);
    }
  }, [userID]);

  if (loading) {
    return (
      <div className="text-center text-white mt-20">
        <h2 className="text-4xl">Loading...</h2>
      </div>
    );
  }

  if (errorMessage) {
    return (
      <div className="text-center text-white mt-20">
        <h2 className="text-4xl">{errorMessage}</h2>
      </div>
    );
  }

  return (
    <section id="LoggedMovies" className="relative z-10 px-4 md:px-0">
      <h2 className="text-5xl md:text-6xl mt-10 mb-10 text-white font-bold text-center drop-shadow-lg">
        {userData.id === currentUser || userData.friends?.includes(currentUser)
          ? `${userID}'s Logged Movies`
          : "You don’t have access to this user's movies"}
      </h2>
      <div className="max-w-6xl mx-auto flex flex-col gap-4">
        {movies.map((movie, index) => (
          <div
            key={index}
            className="flex items-center bg-darkPurple bg-opacity-90 rounded-2xl shadow-md px-6 py-4 hover:scale-[1.01] transition-transform duration-300"
          >
            <div className="w-12 text-center text-purpleWhite font-semibold text-md leading-tight mr-2">
              <p>{movie.date.split(' ')[0]}</p>
              <p className="text-2xl">{movie.date.split(' ')[1]}</p>
              <p>{movie.date.split(' ')[2]}</p>
            </div>

            <img
              src={movie.poster}
              alt="Movie Poster"
              className="w-12 h-16 rounded-lg object-cover"
            />

            <div className="flex flex-col ml-4 flex-1">
              <div className="text-white font-bold text-lg flex items-center gap-2">
                {movie.title}{' '}
                <span className="text-purpleWhite text-base font-medium">
                  ({movie.year})
                </span>
              </div>
              {movie.description && (
                <p className="text-purpleWhite text-sm mt-1">{movie.description}</p>
              )}
            </div>

            {/* Only render the rating card if a rating is available */}
            {movie.rating !== null && (
              <div className="ml-4 px-4 py-5 bg-white text-darkPurple font-bold text-xl rounded-xl text-center">
                {movie.rating}
              </div>
            )}

            {/* Trash button */}
            {userData?.id === currentUser && (
              <div className="ml-auto">
                <button className="text-purpleWhite hover:text-purple text-xl">
                  <i className="fas fa-trash-alt text-2xl"></i>  {/* Trash Icon */}
                </button>
              </div>
            )}
          </div>
        ))}
      </div>
    </section>
  );
};

export default LoggedMovies;
