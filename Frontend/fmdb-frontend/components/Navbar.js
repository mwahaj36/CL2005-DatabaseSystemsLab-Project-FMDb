'use client';
import React, { useState, useContext, useEffect, useRef } from 'react';
import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { AuthContext } from '@/context/AuthContext';
import { Bell, X } from 'lucide-react'; // for bell and close icon
import DropdownSearch from '@/components/MovieSearchDropdown'; // adjust path if needed
import { Search } from 'lucide-react'; // Import Search icon from lucide-react


function Navbar() {
  const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false);
  const [profileDropdownOpen, setProfileDropdownOpen] = useState(false);
  const [notificationsOpen, setNotificationsOpen] = useState(false);
  const [showDropdownSearch, setShowDropdownSearch] = useState(false);
  
  const handleMovieSelect = (movie) => {
    setShowDropdownSearch(false);
    // Navigate to the movie page or handle the selected movie object
    console.log("Selected movie:", movie);
  };
  
  const { user } = useContext(AuthContext);
  const pathname = usePathname();

  const profileRef = useRef(null);
  const notifRef = useRef(null);

  const toggleMobileMenu = () => {
    setIsMobileMenuOpen(!isMobileMenuOpen);
  };

  const getLinkClass = (href, baseClass = '') =>
    `${baseClass} ${pathname === href ? 'text-purple' : 'text-white'} hover:text-purple`;

  // 📦 Close dropdowns if clicked outside
  useEffect(() => {
    const handleClickOutside = (event) => {
      if (
        profileRef.current &&
        !profileRef.current.contains(event.target)
      ) {
        setProfileDropdownOpen(false);
      }
      if (
        notifRef.current &&
        !notifRef.current.contains(event.target)
      ) {
        setNotificationsOpen(false);
      }
    };
    document.addEventListener('mousedown', handleClickOutside);
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, []);

  return (
    <div>
      <nav className="fixed top-0 left-0 w-full bg-darkPurple z-50 shadow-xl px-6 py-4">
        <div className="max-w-7xl mx-auto flex items-center justify-between">
          {/* Logo */}
          <div className="pt-1">
            <Link href="/">
              <img src="/Light.png" alt="Logo" className="w-[170px] cursor-pointer" />
            </Link>
          </div>

          {/* Desktop Menu */}
          <div className="hidden md:flex items-center space-x-10 font-bold">
            <Link href="/" className={getLinkClass('/')}>Home</Link>

            {user ? (
              <div
                className="relative"
                ref={profileRef}
              >
                <button
                  onClick={() => setProfileDropdownOpen((prev) => !prev)}
                  className="text-white hover:text-purple"
                >
                  My Profile
                </button>
                {profileDropdownOpen && (
                  <div className="absolute top-10 right-0 bg-white text-darkPurple rounded-xl shadow-lg w-40 py-2 space-y-2">
                    <Link href={`/profile/${user.userID}`} className="block px-4 py-2 hover:bg-purpleWhite">See Profile</Link>
                    <button className="block w-full text-left px-4 py-2 hover:bg-purpleWhite">Log out</button>
                  </div>
                )}
              </div>
            ) : (
              <Link href="/LoginSignup" className={getLinkClass('/LoginSignup')}>Login / Signup</Link>
            )}

            <Link href="/MoviesListPage" className={getLinkClass('/MoviesListPage')}>Films</Link>
            <Link href="/SeriesListPage" className={getLinkClass('/SeriesListPage')}>Series</Link>
            <Link href="/Members" className={getLinkClass('/Members')}>Members</Link>
            <Link
              href="/VerifiedCritics"
              className={`${pathname === '/VerifiedCritics' ? 'text-purple' : 'text-gold'} hover:text-purple`}
            >
              Verified Critics
            </Link>
          </div>

          {/* Desktop Right Section: Search + Notification */}
          <div className="hidden md:flex items-center space-x-4">
          <button
  onClick={() => setShowDropdownSearch(true)}
  className="relative z-50 w-12 h-12 flex items-center justify-center bg-white text-darkPurple rounded-xl hover:bg-purpleWhite hover:text-purple transition"
>
  <Search className="w-6 h-6" />
</button>

            {/* 🔔 Notifications */}
            <div className="relative mt-1" ref={notifRef}>
              <button
                onClick={() => setNotificationsOpen(!notificationsOpen)}
                className="text-white hover:text-purple"
              >
                <Bell className="w-6 h-6" />
              </button>
              {notificationsOpen && (
                <div className="absolute right-0 top-10 w-72 bg-white text-darkPurple rounded-xl shadow-xl z-50 p-4 space-y-3">
                  <div className="flex justify-between items-center">
                    <p className="font-semibold">Notifications</p>
                    <button onClick={() => setNotificationsOpen(false)}>
                      <X className="w-5 h-5 text-darkPurple hover:text-purple" />
                    </button>
                  </div>
                  <div className="text-sm text-gray-700 space-y-2">
                    <p>You have a new review reply.</p>
                    <p>Someone followed you.</p>
                    <p>Film added to your watchlist.</p>
                  </div>
                </div>
              )}
            </div>
          </div>

          {/* Hamburger for Mobile */}
          <button className="block md:hidden focus:outline-none" onClick={toggleMobileMenu}>
            <div className="space-y-1.5">
              <span className="block w-6 h-0.5 bg-white"></span>
              <span className="block w-6 h-0.5 bg-white"></span>
              <span className="block w-6 h-0.5 bg-white"></span>
            </div>
          </button>
        </div>
      </nav>

      <div className="h-24"></div>

      {/* Mobile Menu */}
      <div className={`md:hidden relative z-40 ${isMobileMenuOpen ? 'block' : 'hidden'}`}>
        <div className="absolute left-6 right-6 rounded-3xl flex-col items-center py-8 mt-4 space-y-6 font-bold bg-purpleWhite drop-shadow-md">
          <Link href="/" className={getLinkClass('/', 'text-darkPurple')}>Home</Link>
          {user ? (
            <div className="space-y-2 text-center">
              <Link href={`/profile/${user.userID}`} className={getLinkClass(`/profile/${user.userID}`, 'text-darkPurple')}>See Profile</Link>
              <button className="text-darkPurple hover:text-purple">Log out</button>
            </div>
          ) : (
            <Link href="/LoginSignup" className={getLinkClass('/LoginSignup', 'text-darkPurple')}>Login / Signup</Link>
          )}
          <Link href="/MoviesListPage" className={getLinkClass('/MoviesListPage', 'text-darkPurple')}>Films</Link>
          <Link href="/SeriesListPage" className={getLinkClass('/SeriesListPage', 'text-darkPurple')}>Series</Link>
          <Link href="/Members" className={getLinkClass('/Members', 'text-darkPurple')}>Members</Link>
          <Link
            href="/VerifiedCritics"
            className={`${pathname === '/VerifiedCritics' ? 'text-purple' : 'text-gold'} hover:text-purple`}
          >
            Verified Critics
          </Link>

          {/* Mobile Search */}
          <form className="w-full px-4">
            <input
              type="text"
              placeholder="Quick Search for a film"
              className="w-full px-4 py-2 rounded-xl text-darkPurple focus:outline-none"
            />
            <button
              type="submit"
              className="w-full mt-3 px-6 py-2 bg-purple text-white font-semibold rounded-xl hover:bg-darkPurple hover:text-purpleWhite transition"
            >
              Go
            </button>
          </form>
        </div>
      </div>

      {/* Movie Search Dropdown */}
      {showDropdownSearch && (
        <DropdownSearch onClose={handleMovieSelect} />
      )}
    </div>
  );
}

export default Navbar;
