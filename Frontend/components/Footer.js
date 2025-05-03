import React from "react";

const Footer = () => {
  return (
    <section
      id="footer"
      className="mt-auto w-full p-6 bg-darkPurple z-50 shadow-xl"
    >
      <footer>
        <div className="mt-10 flex flex-col items-center space-y-3">
          <img src="/Light.png" alt="Logo" className="w-40" />
          <p className="text-sm text-white">
            &copy; 2025 FMDb. All rights reserved.
          </p>
        </div>
      </footer>
    </section>
  );
};

export default Footer;
