'use client';
import React, { useState, useContext, useEffect, useRef } from 'react';
import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { AuthContext } from '@/context/AuthContext';
import { Bell, X, Search, User, Check, Clock, UserPlus, Trash2 } from 'lucide-react';
import DropdownSearch from '@/components/MovieSearchDropdown';

function Navbar() {
  const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false);
  const [profileDropdownOpen, setProfileDropdownOpen] = useState(false);
  const [notificationsOpen, setNotificationsOpen] = useState(false);
  const [showDropdownSearch, setShowDropdownSearch] = useState(false);
  const [notifications, setNotifications] = useState([]);
  const [loadingNotifications, setLoadingNotifications] = useState(false);
  
  const { user, logout } = useContext(AuthContext);
  const pathname = usePathname();

  const profileRef = useRef(null);
  const notifRef = useRef(null);

  // Fetch notifications when user is logged in and notifications dropdown opens
  useEffect(() => {
    const fetchNotifications = async () => {
      if (user && notificationsOpen) {
        setLoadingNotifications(true);
        try {
          const token = localStorage.getItem('token') || sessionStorage.getItem('token');
          const response = await fetch('http://localhost:5000/notification/user', {
            headers: {
              'Authorization': `Bearer ${token}`
            }
          });
          
          if (response.ok) {
            const data = await response.json();
            // Sort notifications by SentAt (newest first)
            const sortedNotifications = (data.requests || []).sort((a, b) => 
              new Date(b.SentAt) - new Date(a.SentAt)
            );
            setNotifications(sortedNotifications);
          } else {
            setNotifications([]);
          }
        } catch (error) {
          console.error('Error fetching notifications:', error);
          setNotifications([]);
        } finally {
          setLoadingNotifications(false);
        }
      }
    };

    fetchNotifications();
  }, [user, notificationsOpen]);

  const handleMovieSelect = (movie) => {
    setShowDropdownSearch(false);
    console.log("Selected movie:", movie);
  };

  const toggleMobileMenu = () => {
    setIsMobileMenuOpen(!isMobileMenuOpen);
  };

  const handleLogout = () => {
    logout();
    setProfileDropdownOpen(false);
  };

  const getLinkClass = (href, baseClass = '') =>
    `${baseClass} ${pathname === href ? 'text-purple' : 'text-white'} hover:text-purple transition-colors duration-200`;

  // Handle accept notification
  const handleAccept = async (notificationId) => {
    try {
      const token = localStorage.getItem('token') || sessionStorage.getItem('token');
      const response = await fetch(`http://localhost:5000/notification/accept/${notificationId}`, {
        method: 'POST',
        headers: {
          'Authorization': `Bearer ${token}`
        }
      });

      if (response.ok) {
        setNotifications(prev => prev.filter(n => n.NotificationID !== notificationId));
      }
    } catch (error) {
      console.error('Error accepting notification:', error);
    }
  };

  // Handle reject notification
  const handleReject = async (notificationId) => {
    try {
      const token = localStorage.getItem('token') || sessionStorage.getItem('token');
      const response = await fetch(`http://localhost:5000/notification/reject/${notificationId}`, {
        method: 'POST',
        headers: {
          'Authorization': `Bearer ${token}`
        }
      });

      if (response.ok) {
        setNotifications(prev => prev.filter(n => n.NotificationID !== notificationId));
      }
    } catch (error) {
      console.error('Error rejecting notification:', error);
    }
  };

  // Handle close notification
  const handleClose = async (notificationId) => {
    try {
      const token = localStorage.getItem('token') || sessionStorage.getItem('token');
      const response = await fetch(`http://localhost:5000/notification/close/${notificationId}`, {
        method: 'DELETE',
        headers: {
          'Authorization': `Bearer ${token}`
        }
      });

      if (response.ok) {
        setNotifications(prev => prev.filter(n => n.NotificationID !== notificationId));
      }
    } catch (error) {
      console.error('Error closing notification:', error);
    }
  };

  useEffect(() => {
    const handleClickOutside = (event) => {
      if (profileRef.current && !profileRef.current.contains(event.target)) {
        setProfileDropdownOpen(false);
      }
      if (notifRef.current && !notifRef.current.contains(event.target)) {
        setNotificationsOpen(false);
      }
    };
    document.addEventListener('mousedown', handleClickOutside);
    return () => document.removeEventListener('mousedown', handleClickOutside);
  }, []);

  // Function to get notification icon based on type
  const getNotificationIcon = (type) => {
    switch(type) {
      case 'FriendReq':
        return <UserPlus className="w-5 h-5 text-purple" />;
      case 'Message':
        return <Clock className="w-5 h-5 text-purple" />;
      case 'AdminReq':
      case 'CriticReq':
        return <User className="w-5 h-5 text-purple" />;
      default:
        return <Bell className="w-5 h-5 text-purple" />;
    }
  };

  return (
    <div>
      <nav className="fixed top-0 left-0 w-full bg-darkPurple z-50 shadow-xl px-6 py-4">
        <div className="max-w-7xl mx-auto flex items-center justify-between">
          {/* Logo */}
          <div className="pt-1">
            <Link href="/">
              <img src="/Light.png" alt="Logo" className="w-[170px] cursor-pointer hover:opacity-90 transition-opacity" />
            </Link>
          </div>

          {/* Desktop Menu */}
          <div className="hidden md:flex items-center space-x-8 font-bold">
            <Link href="/" className={getLinkClass('/')}>Home</Link>
            <Link href="/MoviesListPage" className={getLinkClass('/MoviesListPage')}>Films</Link>
            <Link href="/SeriesListPage" className={getLinkClass('/SeriesListPage')}>Series</Link>
            <Link href="/Members" className={getLinkClass('/Members')}>Members</Link>
            <Link
              href="/VerifiedCritics"
              className={`${pathname === '/VerifiedCritics' ? 'text-purple' : 'text-gold'} hover:text-purple transition-colors duration-200`}
            >
              Verified Critics
            </Link>
          </div>

          {/* Desktop Right Section */}
          <div className="hidden md:flex items-center space-x-4">
            {/* Search Button */}
            <button
              onClick={() => setShowDropdownSearch(true)}
              className="relative z-50 w-10 h-10 flex items-center justify-center text-white rounded-xl hover:text-purple transition-all duration-200 hover:bg-purpleWhite hover:bg-opacity-20"
            >
              <Search className="w-6 h-6" />
            </button>

            {/* Notifications */}
            <div className="relative" ref={notifRef}>
              <button
                onClick={() => setNotificationsOpen(!notificationsOpen)}
                className="w-10 h-10 flex items-center justify-center text-white rounded-xl hover:text-purple transition-all duration-200 hover:bg-purpleWhite hover:bg-opacity-20 relative"
              >
                <Bell className="w-6 h-6" />
                {notifications.length > 0 && (
                  <span className="absolute -top-1 -right-1 bg-red-500 text-white text-xs rounded-full w-5 h-5 flex items-center justify-center">
                    {notifications.length}
                  </span>
                )}
              </button>
              
              {notificationsOpen && (
                <div className="absolute right-0 top-12 w-80 bg-white text-darkPurple rounded-xl shadow-xl z-50 overflow-hidden">
                  <div className="flex justify-between items-center p-4 border-b border-gray-200">
                    <p className="font-semibold text-lg">Notifications</p>
                    <button 
                      onClick={() => setNotificationsOpen(false)}
                      className="text-gray-500 hover:text-purple transition-colors"
                    >
                      <X className="w-5 h-5" />
                    </button>
                  </div>
                  
                  {loadingNotifications ? (
                    <div className="p-4 text-center text-gray-500">
                      Loading notifications...
                    </div>
                  ) : notifications.length === 0 ? (
                    <div className="p-4 text-center text-gray-500">
                      No new notifications
                    </div>
                  ) : (
                    <div className="max-h-96 overflow-y-auto">
                      {notifications.map((notification) => (
                        <div key={notification.NotificationID} className="p-4 border-b border-gray-100 last:border-b-0 hover:bg-gray-50 transition-colors">
                          <div className="flex items-start space-x-3">
                            <div className="bg-purple bg-opacity-10 p-2 rounded-full">
                              {getNotificationIcon(notification.NotificationType)}
                            </div>
                            <div className="flex-1">
                              <div className="flex justify-between items-start">
                                <div>
                                  <p className="text-sm font-medium">{notification.Message}</p>
                                  <p className="text-xs text-gray-500 mt-1">
                                    From: {notification.Username} • {new Date(notification.SentAt).toLocaleString()}
                                  </p>
                                </div>
                                <button 
                                  onClick={() => handleClose(notification.NotificationID)}
                                  className="text-gray-400 hover:text-gray-600 ml-2"
                                >
                                  <X className="w-4 h-4" />
                                </button>
                              </div>
                              {notification.NotificationType !== 'General' && (
                                <div className="flex space-x-2 mt-2">
                                  <button
                                    onClick={() => handleAccept(notification.NotificationID)}
                                    className="text-xs px-3 py-1 bg-purple text-white rounded-full hover:bg-opacity-90 transition-colors flex items-center"
                                  >
                                    <Check className="w-3 h-3 mr-1" /> Accept
                                  </button>
                                  <button
                                    onClick={() => handleReject(notification.NotificationID)}
                                    className="text-xs px-3 py-1 bg-gray-200 text-gray-700 rounded-full hover:bg-gray-300 transition-colors"
                                  >
                                    Reject
                                  </button>
                                </div>
                              )}
                            </div>
                          </div>
                        </div>
                      ))}
                    </div>
                  )}
                </div>
              )}
            </div>

            {/* User Profile */}
            {user ? (
              <div className="relative" ref={profileRef}>
                <button
                  onClick={() => setProfileDropdownOpen(!profileDropdownOpen)}
                  className="flex items-center space-x-2 px-3 py-2 rounded-xl hover:bg-purpleWhite hover:bg-opacity-20 transition-all duration-200"
                >
                  <User className="w-5 h-5 text-white" />
                  <span className="text-white font-medium">{user.username}</span>
                </button>
                {profileDropdownOpen && (
                  <div className="absolute top-12 right-0 bg-white text-darkPurple rounded-xl shadow-lg w-48 py-2 space-y-1 z-50">
                    <Link 
                      href={`/profile/${user.userID}`} 
                      className="block px-4 py-2 hover:bg-purpleWhite transition-colors duration-200 flex items-center"
                      onClick={() => setProfileDropdownOpen(false)}
                    >
                      <User className="w-4 h-4 mr-2" /> My Profile
                    </Link>
                    <Link 
                      href="/EditProfile" 
                      className="block px-4 py-2 hover:bg-purpleWhite transition-colors duration-200 flex items-center"
                      onClick={() => setProfileDropdownOpen(false)}
                    >
                      <svg className="w-4 h-4 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M10.325 4.317c.426-1.756 2.924-1.756 3.35 0a1.724 1.724 0 002.573 1.066c1.543-.94 3.31.826 2.37 2.37a1.724 1.724 0 001.065 2.572c1.756.426 1.756 2.924 0 3.35a1.724 1.724 0 00-1.066 2.573c.94 1.543-.826 3.31-2.37 2.37a1.724 1.724 0 00-2.572 1.065c-.426 1.756-2.924 1.756-3.35 0a1.724 1.724 0 00-2.573-1.066c-1.543.94-3.31-.826-2.37-2.37a1.724 1.724 0 00-1.065-2.572c-1.756-.426-1.756-2.924 0-3.35a1.724 1.724 0 001.066-2.573c-.94-1.543.826-3.31 2.37-2.37.996.608 2.296.07 2.572-1.065z" />
                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                      </svg>
                      Edit Profile
                    </Link>
                    <button 
                      onClick={handleLogout}
                      className="block w-full text-left px-4 py-2 hover:bg-purpleWhite transition-colors duration-200 flex items-center"
                    >
                      <svg className="w-4 h-4 mr-2" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M17 16l4-4m0 0l-4-4m4 4H7m6 4v1a3 3 0 01-3 3H6a3 3 0 01-3-3V7a3 3 0 013-3h4a3 3 0 013 3v1" />
                      </svg>
                      Log out
                    </button>
                  </div>
                )}
              </div>
            ) : (
              <Link 
                href="/LoginSignup" 
                className="px-4 py-2 rounded-xl bg-purple text-white hover:bg-purpleWhite hover:text-darkPurple transition-colors duration-200 font-medium"
              >
                Login / Signup
              </Link>
            )}
          </div>

          {/* Mobile Menu Button */}
          <button 
            className="block md:hidden focus:outline-none" 
            onClick={toggleMobileMenu}
            aria-label="Toggle menu"
          >
            <div className="space-y-1.5">
              <span className={`block w-6 h-0.5 bg-white transition-all ${isMobileMenuOpen ? 'rotate-45 translate-y-2' : ''}`}></span>
              <span className={`block w-6 h-0.5 bg-white ${isMobileMenuOpen ? 'opacity-0' : ''}`}></span>
              <span className={`block w-6 h-0.5 bg-white transition-all ${isMobileMenuOpen ? '-rotate-45 -translate-y-2' : ''}`}></span>
            </div>
          </button>
        </div>
      </nav>

      {/* Spacer for fixed nav */}
      <div className="h-24"></div>

      {/* Mobile Menu */}
      <div className={`md:hidden fixed top-24 left-0 right-0 z-40 transition-all duration-300 ${isMobileMenuOpen ? 'opacity-100 translate-y-0' : 'opacity-0 -translate-y-4 pointer-events-none'}`}>
        <div className="mx-6 bg-purpleWhite rounded-2xl shadow-lg py-6 px-4 space-y-6 font-bold">
          <Link 
            href="/" 
            className={`block text-center py-2 ${getLinkClass('/', 'rounded-lg hover:bg-purpleWhite hover:bg-opacity-50')}`}
            onClick={toggleMobileMenu}
          >
            Home
          </Link>
          <Link 
            href="/MoviesListPage" 
            className={`block text-center py-2 ${getLinkClass('/MoviesListPage', 'rounded-lg hover:bg-purpleWhite hover:bg-opacity-50')}`}
            onClick={toggleMobileMenu}
          >
            Films
          </Link>
          <Link 
            href="/SeriesListPage" 
            className={`block text-center py-2 ${getLinkClass('/SeriesListPage', 'rounded-lg hover:bg-purpleWhite hover:bg-opacity-50')}`}
            onClick={toggleMobileMenu}
          >
            Series
          </Link>
          <Link 
            href="/Members" 
            className={`block text-center py-2 ${getLinkClass('/Members', 'rounded-lg hover:bg-purpleWhite hover:bg-opacity-50')}`}
            onClick={toggleMobileMenu}
          >
            Members
          </Link>
          <Link 
            href="/VerifiedCritics" 
            className={`block text-center py-2 ${pathname === '/VerifiedCritics' ? 'text-purple' : 'text-gold'} rounded-lg hover:bg-purpleWhite hover:bg-opacity-50`}
            onClick={toggleMobileMenu}
          >
            Verified Critics
          </Link>

          {/* Mobile Auth Section */}
          {user ? (
            <div className="space-y-4 pt-4 border-t border-purpleWhite border-opacity-30">
              <Link
                href={`/profile/${user.userID}`}
                className="block text-center py-2 text-white bg-purple rounded-lg hover:bg-opacity-90 transition-colors"
                onClick={toggleMobileMenu}
              >
                {user.username}
              </Link>
              <button
                onClick={handleLogout}
                className="w-full text-center py-2 text-white bg-darkPurple rounded-lg hover:bg-opacity-90 transition-colors"
              >
                Log out
              </button>
            </div>
          ) : (
            <Link
              href="/LoginSignup"
              className="block text-center py-2 text-white bg-purple rounded-lg hover:bg-opacity-90 transition-colors"
              onClick={toggleMobileMenu}
            >
              Login / Signup
            </Link>
          )}

          {/* Mobile Search */}
          <div className="pt-4 border-t border-purpleWhite border-opacity-30">
            <button
              onClick={() => {
                setShowDropdownSearch(true);
                toggleMobileMenu();
              }}
              className="w-full flex items-center justify-center space-x-2 py-2 px-4 bg-white text-darkPurple rounded-lg hover:bg-opacity-90 transition-colors"
            >
              <Search className="w-5 h-5" />
              <span>Search Films</span>
            </button>
          </div>
        </div>
      </div>

      {/* Movie Search Dropdown */}
      {showDropdownSearch && (
        <DropdownSearch onClose={() => setShowDropdownSearch(false)} />
      )}
    </div>
  );
}

export default Navbar;