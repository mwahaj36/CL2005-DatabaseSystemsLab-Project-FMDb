'use client';
import React, { useState, useContext } from 'react';
import Link from 'next/link';
import { usePathname } from 'next/navigation'; // 👈 NEW
import { AuthContext } from '@/context/AuthContext';

function Navbar() {
  const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false);
  const { user } = useContext(AuthContext);
  const pathname = usePathname(); // 👈 CURRENT ROUTE

  const toggleMobileMenu = () => {
    setIsMobileMenuOpen(!isMobileMenuOpen);
  };

  // 🔁 Reusable function to check active page
  const getLinkClass = (href, baseClass = '') =>
    `${baseClass} ${pathname === href ? 'text-purple' : 'text-white'} hover:text-purple`;

  return (
    <div>
      <nav className="fixed top-0 left-0 w-full bg-darkPurple z-50 shadow-xl px-6 py-4">
        <div className="max-w-7xl mx-auto flex items-center justify-between">
          <div className="pt-1">
            <Link href="/">
              <img src="/Light.png" alt="Logo" className="w-[170px] cursor-pointer" />
            </Link>
          </div>

          {/* Desktop Menu */}
          <div className="hidden md:flex items-center space-x-10 font-bold">
            <Link href="/" className={getLinkClass('/')}>Home</Link>
            {user ? (
            <li>
            <Link href={`/profile/${user.userID}`}>My Profile</Link>
          </li>
            ) : (
              <Link href="/LoginSignup" className={getLinkClass('/LoginSignup')}>Login / Signup</Link>
            )}
            <Link href="/MoviesListPage" className={getLinkClass('/MoviesListPage')}>Films</Link>
            <Link href="/SeriesListPage" className={getLinkClass('/SeriesListPage')}>Series</Link>
            <Link href="/members" className={getLinkClass('/members')}>Members</Link>
            <Link
              href="/verifiedReviews"
              className={`${pathname === '/verifiedReviews' ? 'text-purple' : 'text-gold'} hover:text-purple`}
            >
              Verified Critics
            </Link>
          </div>

          {/* Desktop Search */}
          <div className="hidden md:flex items-center space-x-2">
            <input
              type="text"
              placeholder="Search for a film/ genre/ year"
              className="w-72 px-4 py-2 rounded-xl focus:outline-none"
            />
            <button className="px-4 py-2 bg-purple text-white rounded-xl hover:bg-purpleWhite hover:text-darkPurple transition">
              Go
            </button>
          </div>

          {/* Mobile Hamburger */}
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
            <Link href="/Profile" className={getLinkClass('/profile', 'text-darkPurple')}>Profile</Link>
          ) : (
            <Link href="/LoginSignup" className={getLinkClass('/LoginSignup', 'text-darkPurple')}>Login / Signup</Link>
          )}
          <Link href="/MoviesListPage" className={getLinkClass('/MoviesListPage', 'text-darkPurple')}>Films</Link>
          <Link href="/SeriesListPage" className={getLinkClass('/SeriesListPage', 'text-darkPurple')}>Series</Link>
          <Link href="/members" className={getLinkClass('/members', 'text-darkPurple')}>Members</Link>
          <Link
            href="/verifiedReviews"
            className={`${pathname === '/verifiedReviews' ? 'text-purple' : 'text-gold'} hover:text-purple`}
          >
            Verified Critics
          </Link>

          <form className="w-full px-4">
            <input
              type="text"
              placeholder="Search for a film/ genre/ year"
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
    </div>
  );
}

export default Navbar;
