import React, { createContext, useState, useContext } from "react";
import { useRouter } from "next/router";

export const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [error, setError] = useState(null);
  const [token, setToken] = useState(null);
  const router = useRouter();

  const API_BASE_URL = "http://localhost:5000";

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
      setUser({ username: data.username, userID: data.userId });
      setToken(data.token);
      setError(null);

      if (rememberMe) {
        localStorage.setItem('token', data.token);
      } else {
        sessionStorage.setItem('token', data.token);
      }

      router.push("/");
    } catch (err) {
      setError(err.message);
      throw err;
    }
  };

  const logout = () => {
    setUser(null);
    setToken(null);
    setError(null);
    localStorage.removeItem('token');
    sessionStorage.removeItem('token');
    router.push("/");
  };

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
      setUser({ username: data.userName, userID: data.userId });
      setToken(data.token);
      setError(null);
      
      router.push("/EditProfile");
      return data;
    } catch (err) {
      setError(err.message);
      throw err;
    }
  };

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

  const checkAuth = async () => {
    const storedToken = localStorage.getItem('token') || sessionStorage.getItem('token');
    if (storedToken && !user) {
      try {
        setToken(storedToken);
        // You might want to verify the token with your backend here
      } catch (err) {
        console.error('Session validation failed:', err);
        logout();
      }
    }
  };

  return (
    <AuthContext.Provider
      value={{
        user,
        token,
        setUser,
        login,
        signup,
        logout, // Now properly included
        resetPassword,
        error,
        checkAuth
      }}
    >
      {children}
    </AuthContext.Provider>
  );
};

export const useAuth = () => {
  return useContext(AuthContext);
};