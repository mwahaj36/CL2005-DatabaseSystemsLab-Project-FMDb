import { useState, useRef, useEffect } from "react";

const movies = [
  {
    "MovieID": "tt0129387",
    "Title": "There's Something About Mary",
    "ReleaseDate": "15 Jul 1998",
    "Genre": "Comedy, Romance",
    "IMDB_Rating": 7.1,
    "Length": "119 minutes",
    "Language": "English",
    "Type": "Movie",
    "Synopsis": "Ted was a geek in high school, who was going to go to the prom with one of the most popular girls in school, Mary. The prom date never happened, because Ted had a very unusual accident. Thirteen years later he realizes he is still in love with Mary, so he hires a private investigator to track her down. That investigator discovers he too may be in love with Mary, so he gives Ted some false information to keep him away from her. But soon Ted finds himself back into Mary's life, as we watch one funny scene after another.",
    "Director": "Bobby Farrelly, Peter Farrelly",
    "Writer": "Ed Decter, John J. Strauss, N/A, Ed Decter, John J. Strauss, Peter Farrelly, Bobby Farrelly",
    "TopActors": [
        "Cameron Diaz as Mary",
        "Matt Dillon as Healy",
        "Ben Stiller as Ted",
        "Lee Evans as Tucker",
        "Chris Elliott as Dom",
        "Lin Shaye as Magda",
        "Jeffrey Tambor as Sully",
        "Markie Post as Mary's Mom",
        "Keith David as Mary's Dad",
        "W. Earl Brown as Warren"
    ],
    "Poster": "https://image.tmdb.org/t/p/original/kdT3Wwc11GOHorMA4SLqJzG8NJ4.jpg",
    "Backdrop": "https://image.tmdb.org/t/p/original/egJQ3nIon5fT8wyXcKRHzvmtZpD.jpg",
    "Awards": "17 wins & 17 nominations total",
    "BoxOffice": "$176,484,651",
    "MPAA_Rating": "R",
    "Keywords": "surgeon, romcom, stalker, dream girl, taboo, screwball comedy, frisbee, troubadour, intellectual disability"
},
{
    "MovieID": "tt0097216",
    "Title": "Do the Right Thing",
    "ReleaseDate": "14 Jun 1989",
    "Genre": "Comedy, Drama",
    "IMDB_Rating": 8.0,
    "Length": "120 minutes",
    "Language": "English, Italian, Spanish, Korean",
    "Type": "Movie",
    "Synopsis": "This film looks at life in the Bedford-Stuyvesant district of Brooklyn on a hot summer Sunday. As he does everyday, Sal Fragione opens the pizza parlor he's owned for 25 years. The neighborhood has changed considerably in the time he's been there and is now composed primarily of African-Americans and Hispanics. His son Pino hates it there and would like nothing better than to relocate the eatery to their own neighborhood. For Sal however, the restaurant represents something that is part of his life and sees it as a part of the community. What begins as a simple complaint by one of his customers, Buggin Out - who wonders why he has only pictures of famous Italian-Americans on the wall when most of his customers are black - eventually disintegrates into violence as frustration seemingly brings out the worst in everyone.",
    "Director": "Spike Lee",
    "Writer": "Spike Lee",
    "TopActors": [
        "Danny Aiello as Sal",
        "Ossie Davis as Da Mayor",
        "Ruby Dee as Mother Sister",
        "Richard Edson as Vito",
        "Giancarlo Esposito as Buggin Out",
        "Spike Lee as Mookie",
        "Bill Nunn as Radio Raheem",
        "John Turturro as Pino",
        "Paul Benjamin as ML",
        "Frankie Faison as Coconut Sid"
    ],
    "Poster": "https://image.tmdb.org/t/p/original/63rmSDPahrH7C1gEFYzRuIBAN9W.jpg",
    "Backdrop": "https://image.tmdb.org/t/p/original/v3XlaCNJxJLxby4RAc9gAHEXIe1.jpg",
    "Awards": "Nominated for 2 Oscars. 21 wins & 19 nominations total",
    "BoxOffice": "$27,545,445",
    "MPAA_Rating": "R",
    "Keywords": "new york city, police brutality, hip-hop, italian american, culture clash, chaos, heat, street war, restaurant critic, radio transmission, punk rock, pizzeria, police operation, pizza, love, money, racism, brooklyn, new york city, heatwave"
},
{
    "MovieID": "tt7286456",
    "Title": "Joker",
    "ReleaseDate": "04 Oct 2019",
    "Genre": "Crime, Drama, Thriller",
    "IMDB_Rating": 8.3,
    "Length": "122 minutes",
    "Language": "English, German",
    "Type": "Movie",
    "Synopsis": "A socially inept clown for hire - Arthur Fleck aspires to be a stand up comedian among his small job working dressed as a clown holding a sign for advertising. He takes care of his mother, Penny Fleck, and as he learns more about his mental illness, he learns more about his past. Dealing with all the negativity and bullying from society, he heads downwards on a spiral, in turn showing how his alter ego, \"Joker,\" came to be.",
    "Director": "Todd Phillips",
    "Writer": "Todd Phillips, Scott Silver, N/A, Bob Kane, Bill Finger, Jerry Robinson",
    "TopActors": [
        "Joaquin Phoenix as Arthur Fleck",
        "Robert De Niro as Murray Franklin",
        "Zazie Beetz as Sophie Dumond",
        "Frances Conroy as Penny Fleck",
        "Brett Cullen as Thomas Wayne",
        "Shea Whigham as Detective Burke",
        "Bill Camp as Detective Garrity",
        "Glenn Fleshler as Randall",
        "Leigh Gill as Gary",
        "Josh Pais as Hoyt Vaughn"
    ],
    "Poster": "https://image.tmdb.org/t/p/original/udDclJoHjfjb8Ekgsd4FDteOkCU.jpg",
    "Backdrop": "https://image.tmdb.org/t/p/original/n6bUvigpRFqSwmPp1m2YADdbRBc.jpg",
    "Awards": "Won 2 Oscars. 121 wins & 247 nominations total",
    "BoxOffice": "$335,477,657",
    "MPAA_Rating": "R",
    "Keywords": "dreams, street gang, society, psychopath, clown, villain, based on comic, murder, psychological thriller, criminal mastermind, mental illness, anarchy, character study, clown makeup, subway train, social realism, supervillain, tv host, 1980s, mother son relationship, origin story, falling into madness, frightened, pretentious"
},
{
    "MovieID": "tt1392190",
    "Title": "Mad Max: Fury Road",
    "ReleaseDate": "22 May 2015",
    "Genre": "Action, Adventure, Sci-Fi, Thriller",
    "IMDB_Rating": 8.1,
    "Length": "120 minutes",
    "Language": "English, Russian",
    "Type": "Movie",
    "Synopsis": "An apocalyptic story set in the furthest reaches of our planet, in a stark desert landscape where humanity is broken, and almost everyone is crazed fighting for the necessities of life. Within this world exist two rebels on the run who just might be able to restore order. There's Max, a man of action and a man of few words, who seeks peace of mind following the loss of his wife and child in the aftermath of the chaos. And Furiosa, a woman of action and a woman who believes her path to survival may be achieved if she can make it across the desert back to her childhood homeland.",
    "Director": "George Miller",
    "Writer": "George Miller, Brendan McCarthy, Nick Lathouris",
    "TopActors": [
        "Tom Hardy as Max Rockatansky",
        "Charlize Theron as Imperator Furiosa",
        "Nicholas Hoult as Nux",
        "Hugh Keays-Byrne as Immortan Joe",
        "Josh Helman as Slit",
        "Nathan Jones as Rictus Erectus",
        "Zoë Kravitz as Toast the Knowing",
        "Rosie Huntington-Whiteley as The Splendid Angharad",
        "Riley Keough as Capable",
        "Abbey Lee as The Dag"
    ],
    "Poster": "https://image.tmdb.org/t/p/original/hA2ple9q4qnwxp3hKVNhroipsir.jpg",
    "Backdrop": "https://image.tmdb.org/t/p/original/gqrnQA6Xppdl8vIb2eJc58VC1tW.jpg",
    "Awards": "Won 6 Oscars. 245 wins & 233 nominations total",
    "BoxOffice": "$154,280,290",
    "MPAA_Rating": "R",
    "Keywords": "rescue, future, australia, chase, dystopia, post-apocalyptic future, survival, on the run, on the road, desert, convoy, peak oil, dark future, post-apocalyptic, car, suspenseful, intense, awestruck, commanding, hopeful"
},
{
    "MovieID": "tt1684562",
    "Title": "The Fall Guy",
    "ReleaseDate": "24 Apr 2024",
    "Genre": "Action, Comedy, Drama, Romance",
    "IMDB_Rating": 6.8,
    "Length": "126 minutes",
    "Language": "English",
    "Type": "Movie",
    "Synopsis": "He's a stuntman, and like everyone in the stunt community, he gets blown up, shot, crashed, thrown through windows and dropped from the highest of heights, all for our entertainment. And now, fresh off an almost career-ending accident, this working-class hero has to track down a missing movie star, solve a conspiracy and try to win back the love of his life while still doing his day job. What could possibly go right?",
    "Director": "David Leitch",
    "Writer": "Glen A. Larson, N/A, Drew Pearce",
    "TopActors": [
        "Ryan Gosling as Colt Seavers",
        "Emily Blunt as Jody Moreno",
        "Aaron Taylor-Johnson as Tom Ryder",
        "Hannah Waddingham as Gail Meyer",
        "Teresa Palmer as Iggy Starr",
        "Stephanie Hsu as Alma Milan",
        "Winston Duke as Dan Tucker",
        "Ben Knight as Dressler",
        "Matuse as Doone",
        "Adam Dunn as Nigel"
    ],
    "Poster": "https://image.tmdb.org/t/p/original/e7olqFmzcIX5c23kX4zSmLPJi8c.jpg",
    "Backdrop": "https://image.tmdb.org/t/p/original/H5HjE7Xb9N09rbWn1zBfxgI8uz.jpg",
    "Awards": "13 wins & 37 nominations total",
    "BoxOffice": "$92,900,355",
    "MPAA_Rating": "PG-13",
    "Keywords": "stuntman, missing person, duringcreditsstinger, movie industry, action comedy, playful, based on tv series, grand, romantic, amused, farcical"
}
];

const DropdownSearch = ({ onClose }) => {
  const [query, setQuery] = useState("");
  const [filteredMovies, setFilteredMovies] = useState([]);
  const [selectedMovie, setSelectedMovie] = useState(null);
  const wrapperRef = useRef(null);

  const handleInputChange = (e) => {
    const value = e.target.value;
    setQuery(value);
    if (value.trim() === "") {
      setFilteredMovies([]);
    } else {
      const filtered = movies.filter((movie) =>
        movie.Title.toLowerCase().includes(value.toLowerCase())
      );
      setFilteredMovies(filtered);
    }
  };

  const handleSelect = (movie) => {
    setQuery(movie.Title);
    setSelectedMovie(movie);
    setFilteredMovies([]);
    setTimeout(() => {
      onClose(movie); // Send the entire movie object
    }, 100);
  };

  // Handle outside click to close the dropdown
  useEffect(() => {
    const handleClickOutside = (event) => {
      if (wrapperRef.current && !wrapperRef.current.contains(event.target)) {
        onClose();
      }
    };
    document.addEventListener("mousedown", handleClickOutside);
    return () => document.removeEventListener("mousedown", handleClickOutside);
  }, [onClose]);

  const handleClose = (e) => {
    e.stopPropagation(); // Prevent event from propagating to the document
    onClose(); // Close the dropdown
  };

  return (
    <div className="fixed inset-0 bg-black bg-opacity-60 flex items-center justify-center z-50">
      <div ref={wrapperRef} className="bg-white p-6 rounded-lg w-full max-w-md shadow-lg relative">
        <button
          className="absolute top-2 right-3 text-xl font-bold text-gray-500 hover:text-purple"
          onClick={handleClose}
        >
          &times;
        </button>

        <input
          type="text"
          className="w-full px-4 py-2 border-darkPurple border-2 bg-white rounded-md focus:outline-none focus:ring-2 focus:ring-purple mb-4"
          placeholder="Search for a movie..."
          value={query}
          onChange={handleInputChange}
          autoFocus
        />

        {filteredMovies.length > 0 && (
          <ul className="border rounded-md shadow max-h-60 overflow-y-auto">
            {filteredMovies.map((movie, index) => (
              <li
                key={index}
                className="px-4 py-2 hover:bg-purpleWhite text-darkPurple cursor-pointer flex items-center"
                onClick={() => handleSelect(movie)}
              >
                <img
                  src={movie.Poster}
                  alt={movie.Title}
                  className="w-16 h-24 object-cover mr-4"
                />
                <div className="flex flex-col">
                  <span className="font-semibold">{movie.Title}</span>
                  <span className="text-sm text-left text-gray-500">{movie.Director}</span>
                </div>
              </li>
            ))}
          </ul>
        )}
      </div>
    </div>
  );
};

export default DropdownSearch;