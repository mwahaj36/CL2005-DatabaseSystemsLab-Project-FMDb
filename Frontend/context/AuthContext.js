import { createContext, useState, useEffect, useContext } from "react";
import { useRouter } from "next/router";

export const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [error, setError] = useState(null);
  const [token, setToken] = useState(null);
  const [loading, setLoading] = useState(true);
  const router = useRouter();

  const API_BASE_URL = process.env.NEXT_PUBLIC_API_URL;

  // 1. Restore session on initial load
  useEffect(() => {
    const initializeAuth = async () => {
      const storedToken = localStorage.getItem('token') || sessionStorage.getItem('token');
      const storedUser = localStorage.getItem('user') || sessionStorage.getItem('user');

      if (storedToken && storedUser) {
        try {
          // Immediately set user for UI (navbar)
          setUser(JSON.parse(storedUser));
          setToken(storedToken);
          
          // Verify token in background
          await verifyToken(storedToken);
        } catch (err) {
          console.error('Session restoration failed:', err);
          logout();
        }
      }
      setLoading(false);
    };

    initializeAuth();
  }, []);

  // 2. Token verification function
  const verifyToken = async (token) => {
    try {
      // Use any protected endpoint - we'll use critic/movies as example
      const response = await fetch(`${API_BASE_URL}/auth/verify`, {
        headers: {
          'Authorization': `Bearer ${token}`
        }
      });

      if (!response.ok) {
        throw new Error('Token verification failed');
      }
    } catch (err) {
      throw err;
    }
  };

  // 3. Login function
  const login = async (username, password, rememberMe) => {
    try {
      const response = await fetch(`${API_BASE_URL}/auth/signin`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          userName: username,
          password: password
        }),
        credentials: 'include'
      });

      if (!response.ok) {
        const errorData = await response.json();
        throw new Error(errorData.message || 'Login failed');
      }

      const data = await response.json();
      const userData = {
        userID: data.user.userId,
        username: data.user.userName,
        userType: data.user.userType,
        privacy: data.user.privacy
      };
      
      // Update state
      setUser(userData);
      setToken(data.token);
      setError(null);

      // Store data
      if (rememberMe) {
        localStorage.setItem('token', data.token);
        localStorage.setItem('user', JSON.stringify(userData));
      } else {
        sessionStorage.setItem('token', data.token);
        sessionStorage.setItem('user', JSON.stringify(userData));
      }

      router.push("/");
    } catch (err) {
      setError(err.message);
      throw err;
    }
  };

  // 4. Logout function
  const logout = () => {
    // Clear state
    setUser(null);
    setToken(null);
    setError(null);
    
    // Clear all storage
    localStorage.removeItem('token');
    localStorage.removeItem('user');
    sessionStorage.removeItem('token');
    sessionStorage.removeItem('user');
    
    router.push("/");
  };

  // 5. Signup function
  const signup = async (firstName, lastName, username, email, password) => {
    try {
      const response = await fetch(`${API_BASE_URL}/auth/signup`, {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          fullName: `${firstName} ${lastName}`,
          userName: username,
          email: email,
          password: password
        }),
        credentials: 'include'
      });

      if (!response.ok) {
        const errorData = await response.json();
        throw new Error(errorData.message || 'Signup failed');
      }

      const data = await response.json();
      const userData = {
        userID: data.user.userId,
        username: data.user.userName,
        userType: data.user.userType,
        privacy: data.user.privacy
      };
      
      // Update state and storage
      setUser(userData);
      setToken(data.token);
      setError(null);
      
      localStorage.setItem('token', data.token);
      localStorage.setItem('user', JSON.stringify(userData));
      
      router.push("/EditProfile");
      return data;
    } catch (err) {
      setError(err.message);
      throw err;
    }
  };

  // 6. Reset password function
  const resetPassword = async (email, newPassword) => {
    try {
      const response = await fetch(`${API_BASE_URL}/auth/reset`, {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          email,
          password: newPassword
        })
      });

      const data = await response.json();

      if (!response.ok) {
        throw new Error(data.message || 'Password reset failed');
      }

      return data;
    } catch (err) {
      setError(err.message);
      throw err;
    }
  };

  return (
    <AuthContext.Provider
      value={{
        user,
        token,
        error,
        loading,
        login,
        logout,
        signup,
        resetPassword
      }}
    >
      {!loading && children}
    </AuthContext.Provider>
  );
};

export const useAuth = () => {
  return useContext(AuthContext);
};