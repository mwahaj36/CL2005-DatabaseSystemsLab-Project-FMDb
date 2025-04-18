import React from 'react';

const CastAndCrew = ({ crewData }) => {
  // Ensure crewData exists and has the expected structure
  if (!crewData) {
    return (
      <div>
        <h2 className="text-purpleWhite text-2xl md:text-3xl font-bold mb-4">Cast & Crew</h2>
        <p className="text-white">No cast and crew information available</p>
      </div>
    );
  }

  // Parse cast data - handles both string format ("Actor as Character") and object format
  const parsedCast = () => {
    if (!crewData.cast) return [];
    
    // If cast is an array of strings in "Actor as Character" format
    if (Array.isArray(crewData.cast) && typeof crewData.cast[0] === 'string') {
      return crewData.cast.map((entry) => {
        const [actor, character] = entry.split(' as ');
        return { 
          actor: actor?.trim() || 'Unknown Actor', 
          character: character?.trim() || 'Unknown Character' 
        };
      });
    }
    
    // If cast is already in object format
    if (Array.isArray(crewData.cast) && typeof crewData.cast[0] === 'object') {
      return crewData.cast.map(member => ({
        actor: member.name || member.actor || 'Unknown Actor',
        character: member.character || 'Unknown Character'
      }));
    }
    
    return [];
  };

  const castMembers = parsedCast();

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

        {castMembers.length > 0 && (
          <>
            <li className="pt-4 font-bold text-purpleWhite text-xl md:text-2xl">Top Cast</li>
            {castMembers.map((castMember, index) => (
              <li key={index} className="border-l-4 border-purple px-4">
                <p className="text-purpleWhite text-lg md:text-xl font-bold">
                  {castMember.character}
                </p>
                <p className="text-white text-sm md:text-base">
                  {castMember.actor}
                </p>
              </li>
            ))}
          </>
        )}
      </ul>
    </div>
  );
};

export default CastAndCrew;