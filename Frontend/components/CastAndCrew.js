import React from 'react';

const CastAndCrew = ({ crewData }) => {
  if (!crewData) {
    return (
      <div className="p-4">
        <h2 className="text-purpleWhite text-xl md:text-3xl font-bold mb-4">Cast & Crew</h2>
        <p className="text-white text-sm md:text-base">No cast and crew information available</p>
      </div>
    );
  }

  const parsedCast = () => {
    if (!crewData.cast) return [];
    
    if (Array.isArray(crewData.cast) && typeof crewData.cast[0] === 'string') {
      return crewData.cast.map((entry) => {
        const [actor, character] = entry.split(' as ');
        return { 
          actor: actor?.trim() || 'Unknown Actor', 
          character: character?.trim() || 'Unknown Character' 
        };
      });
    }
    
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
    <div className="p-4">
      <h2 className="text-purpleWhite text-xl md:text-3xl font-bold mb-4">Cast & Crew</h2>
      <ul className="text-white space-y-4 text-sm md:text-lg">
        {crewData.director && (
          <li className="text-sm md:text-xl">
            <span className="font-bold text-purpleWhite">Director:</span>
            <span className="text-white"> {crewData.director}</span>
          </li>
        )}
        {crewData.writer && (
          <li className="text-sm md:text-xl">
            <span className="font-bold text-purpleWhite">Writer:</span>
            <span className="text-white"> {crewData.writer}</span>
          </li>
        )}

        {castMembers.length > 0 && (
          <>
            <li className="pt-4 font-bold text-purpleWhite text-lg md:text-2xl">Top Cast</li>
            {castMembers.map((castMember, index) => (
              <li key={index} className="border-l-4 border-purple px-2 md:px-4">
                <p className="text-purpleWhite text-base md:text-xl font-bold">
                  {castMember.character}
                </p>
                <p className="text-white text-xs md:text-base">
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
