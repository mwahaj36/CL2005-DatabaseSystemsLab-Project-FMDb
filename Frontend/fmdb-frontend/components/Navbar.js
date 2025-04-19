'use client';
import React, { useState, useContext, useEffect, useRef } from 'react';
import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { AuthContext } from '@/context/AuthContext';
import { Bell, X, Search, User, Check, Clock, UserPlus, Film, Settings, LogOut } from 'lucide-react';
import DropdownSearch from '@/components/MovieSearchDropdown';

function Navbar() {
  const [isMobileMenuOpen, setIsMobileMenuOpen] = useState(false);
  const [profileDropdownOpen, setProfileDropdownOpen] = useState(false);
  const [notificationsOpen, setNotificationsOpen] = useState(false);
  const [showDropdownSearch, setShowDropdownSearch] = useState(false);
  const [notifications, setNotifications] = useState([]);
  const [loadingNotifications, setLoadingNotifications] = useState(false);
  const [notificationError, setNotificationError] = useState(null);
  
  const { user, logout, token } = useContext(AuthContext);
  const pathname = usePathname();

  const profileRef = useRef(null);
  const notifRef = useRef(null);

  // Fetch notifications when user is logged in and notifications dropdown opens
  useEffect(() => {
    const fetchNotifications = async () => {
      if (user?.userID && notificationsOpen && token) {
        setLoadingNotifications(true);
        setNotificationError(null);
        try {
          const response = await fetch(`http://localhost:5000/notification/${user.userID}`, {
            headers: {
              'Authorization': `Bearer ${token}`
            }
          });
          
          if (!response.ok) {
            // Handle 404 as empty array (no notifications)
            if (response.status === 404) {
              setNotifications([]);
              return;
            }
            throw new Error('Failed to fetch notifications');
          }

          const data = await response.json();
          
          // Handle response format
          if (data.success === false) {
            // Empty state
            setNotifications([]);
          } else {
            // Successful response with data
            setNotifications(Array.isArray(data) ? data : []);
          }
        } catch (error) {
          console.error('Error fetching notifications:', error);
          setNotificationError(error.message || 'Failed to load notifications');
          setNotifications([]);
        } finally {
          setLoadingNotifications(false);
        }
      }
    };

    fetchNotifications();
  }, [user, notificationsOpen, token]);

  const refreshNotifications = async () => {
    if (!token || !user?.userID) return;
    
    setLoadingNotifications(true);
    setNotificationError(null);
    try {
      const response = await fetch(`http://localhost:5000/notification/${user.userID}`, {
        headers: {
          'Authorization': `Bearer ${token}`
        }
      });
      
      if (!response.ok) {
        if (response.status === 404) {
          setNotifications([]);
          return;
        }
        throw new Error('Failed to refresh notifications');
      }

      const data = await response.json();
      setNotifications(Array.isArray(data) ? data : []);
    } catch (error) {
      console.error('Error refreshing notifications:', error);
      setNotificationError(error.message);
    } finally {
      setLoadingNotifications(false);
    }
  };

  const closeNotification = async (notificationId) => {
    if (!token) return;
    
    try {
      const response = await fetch(
        `http://localhost:5000/notification/${notificationId}`, 
        {
          method: 'DELETE',
          headers: {
            'Authorization': `Bearer ${token}`
          }
        }
      );

      if (!response.ok) {
        throw new Error('Failed to dismiss notification');
      }

      // Remove from UI
      setNotifications(prev => prev.filter(n => n._id !== notificationId));
    } catch (error) {
      console.error('Error dismissing notification:', error);
      setNotificationError(error.message);
    }
  };

  const handleFriendRequest = async (notificationId, action) => {
    if (!token) return;
    
    try {
      const response = await fetch(
        `http://localhost:5000/notification/${action}/${notificationId}`, 
        {
          method: 'POST',
          headers: {
            'Authorization': `Bearer ${token}`,
            'Content-Type': 'application/json'
          }
        }
      );

      if (!response.ok) {
        const errorData = await response.json();
        throw new Error(errorData.message || `Failed to ${action} request`);
      }

      // Remove the notification from UI after successful action
      setNotifications(prev => prev.filter(n => n._id !== notificationId));
      
    } catch (error) {
      console.error(`Error ${action}ing friend request:`, error);
      setNotificationError(error.message);
    }
  };

  const handleMovieSelect = (movie) => {
    setShowDropdownSearch(false);
  };

  const toggleMobileMenu = () => {
    setIsMobileMenuOpen(!isMobileMenuOpen);
  };

  const handleLogout = () => {
    logout();
    setProfileDropdownOpen(false);
    setNotificationsOpen(false);
  };

  const getLinkClass = (href, baseClass = '') =>
    `${baseClass} ${pathname === href ? 'text-purple' : 'text-white'} hover:text-purple transition-colors duration-200`;

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

  const formatNotificationMessage = (notification) => {
    switch (notification.type) {
      case 'friend_request':
        return `${notification.sender?.username || 'Someone'} wants to be friends`;
      case 'movie_recommendation':
        return `${notification.sender?.username || 'Someone'} recommended you a movie`;
      case 'new_follower':
        return `${notification.sender?.username || 'Someone'} started following you`;
      default:
        return notification.message || 'New notification';
    }
  };

  // Update document title with unread count
  useEffect(() => {
    const unreadCount = notifications.filter(n => !n.read).length;
    document.title = unreadCount > 0 ? `(${unreadCount}) FMDB` : 'FMDB';
  }, [notifications]);

  return (
    <div>
      <nav className="fixed top-0 left-0 w-full bg-darkPurple z-50 shadow-xl px-6 py-4">
        <div className="max-w-7xl mx-auto flex items-center justify-between">
          <div className="pt-1">
            <Link href="/">
              <img src="/Light.png" alt="Logo" className="w-[170px] cursor-pointer hover:opacity-90 transition-opacity" />
            </Link>
          </div>

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

          <div className="hidden md:flex items-center space-x-4">
            <button
              onClick={() => setShowDropdownSearch(true)}
              className="relative z-50 w-10 h-10 flex items-center justify-center text-white rounded-xl hover:text-purple transition-all duration-200 hover:bg-purpleWhite hover:bg-opacity-20"
              aria-label="Search"
            >
              <Search className="w-6 h-6" />
            </button>

            {user && (
              <div className="relative" ref={notifRef}>
                <button
                  onClick={() => {
                    setNotificationsOpen(!notificationsOpen);
                    if (!notificationsOpen) {
                      refreshNotifications();
                    }
                  }}
                  className="w-10 h-10 flex items-center justify-center text-white rounded-xl hover:text-purple transition-all duration-200 hover:bg-purpleWhite hover:bg-opacity-20 relative"
                  aria-label="Notifications"
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
                      <div className="flex items-center space-x-2">
                        <button 
                          onClick={refreshNotifications}
                          className="text-gray-500 hover:text-purple transition-colors"
                          aria-label="Refresh notifications"
                          disabled={loadingNotifications}
                        >
                          <svg 
                            className={`w-5 h-5 ${loadingNotifications ? 'animate-spin' : ''}`} 
                            fill="none" 
                            viewBox="0 0 24 24" 
                            stroke="currentColor"
                          >
                            <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15" />
                          </svg>
                        </button>
                        <button 
                          onClick={() => setNotificationsOpen(false)}
                          className="text-gray-500 hover:text-purple transition-colors"
                          aria-label="Close notifications"
                        >
                          <X className="w-5 h-5" />
                        </button>
                      </div>
                    </div>
                    
                    {notificationError ? (
                      <div className="p-4 text-center text-red-500">
                        {notificationError}
                        <button 
                          onClick={refreshNotifications}
                          className="mt-2 text-sm text-purple hover:underline"
                        >
                          Try again
                        </button>
                      </div>
                    ) : loadingNotifications ? (
                      <div className="p-4 text-center text-gray-500">
                        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-purple mx-auto"></div>
                      </div>
                    ) : notifications.length === 0 ? (
                      <div className="p-4 text-center text-gray-500">
                        No new notifications
                      </div>
                    ) : (
                      <div className="max-h-96 overflow-y-auto">
                        {notifications.map((notification) => (
                          <div key={notification._id} className="p-4 border-b border-gray-100 last:border-b-0 hover:bg-gray-50 transition-colors relative">
                            {notification.type !== 'friend_request' && (
                              <button
                                onClick={() => closeNotification(notification._id)}
                                className="absolute top-2 right-2 text-gray-400 hover:text-purple transition-colors"
                                aria-label="Close notification"
                              >
                                <X className="w-4 h-4" />
                              </button>
                            )}
                            <div className="flex items-start space-x-3">
                              <div className="bg-purple bg-opacity-10 p-2 rounded-full">
                                {notification.type === 'friend_request' ? (
                                  <UserPlus className="w-5 h-5 text-purple" />
                                ) : notification.type === 'movie_recommendation' ? (
                                  <Film className="w-5 h-5 text-purple" />
                                ) : (
                                  <Bell className="w-5 h-5 text-purple" />
                                )}
                              </div>
                              <div className="flex-1">
                                <p className="text-sm font-medium">
                                  {formatNotificationMessage(notification)}
                                </p>
                                <p className="text-xs text-gray-500 mt-1">
                                  {new Date(notification.createdAt).toLocaleString()}
                                </p>
                                {notification.type === 'friend_request' && (
                                  <div className="flex space-x-2 mt-2">
                                    <button
                                      onClick={() => handleFriendRequest(notification._id, 'accept')}
                                      className="text-xs px-3 py-1 bg-purple text-white rounded-full hover:bg-opacity-90 transition-colors flex items-center"
                                    >
                                      <Check className="w-3 h-3 mr-1" /> Accept
                                    </button>
                                    <button
                                      onClick={() => handleFriendRequest(notification._id, 'reject')}
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
            )}

            {user ? (
              <div className="relative" ref={profileRef}>
                <button
                  onClick={() => setProfileDropdownOpen(!profileDropdownOpen)}
                  className="flex items-center space-x-2 px-3 py-2 rounded-xl hover:bg-purpleWhite hover:bg-opacity-20 transition-all duration-200"
                  aria-label="User menu"
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
                      <Settings className="w-4 h-4 mr-2" /> Edit Profile
                    </Link>
                    <button 
                      onClick={handleLogout}
                      className="w-full text-left px-4 py-2 hover:bg-purpleWhite transition-colors duration-200 flex items-center"
                    >
                      <LogOut className="w-4 h-4 mr-2" /> Log out
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

      <div className="h-24"></div>

      {/* Mobile menu */}
      {isMobileMenuOpen && (
        <div className="fixed inset-0 bg-darkPurple bg-opacity-95 z-40 pt-24 px-6 md:hidden">
          <div className="flex flex-col space-y-6 text-white font-bold text-lg">
            <Link href="/" className={getLinkClass('/')} onClick={toggleMobileMenu}>Home</Link>
            <Link href="/MoviesListPage" className={getLinkClass('/MoviesListPage')} onClick={toggleMobileMenu}>Films</Link>
            <Link href="/SeriesListPage" className={getLinkClass('/SeriesListPage')} onClick={toggleMobileMenu}>Series</Link>
            <Link href="/Members" className={getLinkClass('/Members')} onClick={toggleMobileMenu}>Members</Link>
            <Link
              href="/VerifiedCritics"
              className={`${pathname === '/VerifiedCritics' ? 'text-purple' : 'text-gold'} hover:text-purple transition-colors duration-200`}
              onClick={toggleMobileMenu}
            >
              Verified Critics
            </Link>
          </div>
        </div>
      )}
      
      {showDropdownSearch && (
        <DropdownSearch onClose={() => setShowDropdownSearch(false)} onSelect={handleMovieSelect} />
      )}
    </div>
  );
}

export default Navbar;