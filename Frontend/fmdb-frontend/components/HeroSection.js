import React from "react";

const HeroSection = () => {
  return (
    <section id="hero">
      <div className="pt-24 space-y-10 md:space-y-20 flex flex-col relative z-10 items-center h-full">
        <h1 className="text-6xl md:text-7xl font-bold text-white text-center leading-snug text-shadow drop-shadow-xl">
          Track the movies you've binge-watched.<br />
          Stash the ones you can't wait to see.<br />
          Tell your squad what’s a must-watch!
        </h1>
        <a href="/LoginSignup" className="px-6 py-2 text-darkPurple text-center text-2xl md:text-4xl font-bold rounded-xl bg-purpleWhite hover:bg-darkPurple hover:text-purpleWhite focus:outline-none md:flex md:items-center md:justify-center">
          Get Started - It's Free
        </a>
        <h1 className="text-2xl md:text-2xl text-white text-center leading-snug text-shadow">
          The social network for film lovers.
        </h1>
      </div>
    </section>
  );
};

export default HeroSection;
