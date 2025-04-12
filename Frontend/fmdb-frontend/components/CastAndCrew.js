// components/CastAndCrew.js

import React from 'react';

const CastAndCrew = ({ crewData }) => {
  // Parse cast if it's an array of strings like "Actor as Character"
  const parsedCast =
    crewData.cast && crewData.cast.length > 0
      ? crewData.cast.map((entry) => {
          const [actor, character] = entry.split(' as ');
          return { actor: actor?.trim(), character: character?.trim() };
        })
      : [];

  return (
    <div>
      <h2 className="text-purpleWhite text-2xl md:text-3xl font-bold mb-4">Cast & Crew</h2>
      <ul className="text-white space-y-4 text-sm md:text-lg">
        {crewData.director && (
          <li className="text-base md:text-xl">
            <span className="font-bold text-purpleWhite">Director:</span>
            <span className="text-white"> {crewData.director}</span>
          </li>
        )}
        {crewData.writer && (
          <li className="text-base md:text-xl">
            <span className="font-bold text-purpleWhite">Writer:</span>
            <span className="text-white"> {crewData.writer}</span>
          </li>
        )}

        {parsedCast.length > 0 && (
          <>
            <li className="pt-4 font-bold text-purpleWhite text-xl md:text-2xl">Top Cast</li>
            {parsedCast.map((castMember, index) => (
              <li key={index} className="border-l-4 border-purple px-4">
                <p className="text-purpleWhite text-lg md:text-xl font-bold">{castMember.character}</p>
                <p className="text-white text-sm md:text-base">{castMember.actor}</p>
              </li>
            ))}
          </>
        )}
      </ul>
    </div>
  );
};

export default CastAndCrew;
