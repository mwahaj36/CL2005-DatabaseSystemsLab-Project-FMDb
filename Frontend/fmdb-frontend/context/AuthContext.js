import React, { createContext, useState, useContext, useEffect } from "react";
import { users } from "../data/Users"; // Simulated static data (read-only in frontend)
import { useRouter } from "next/router";

export const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [error, setError] = useState(null);
  const router = useRouter();

  // On initial load, check if user is stored in localStorage
  useEffect(() => {
    const storedUser = localStorage.getItem("fmdb-user");
    if (storedUser) {
      setUser(JSON.parse(storedUser));
    }
  }, []);

  // Login function with rememberMe flag
  const login = (email, password, rememberMe = false) => {
    const foundUser = users.find((user) => user.email === email);

    if (!foundUser) {
      setError("User not found");
      return;
    }

    if (foundUser.password !== password) {
      setError("Incorrect password");
      return;
    }

    setUser(foundUser);
    setError(null);

    if (rememberMe) {
      localStorage.setItem("fmdb-user", JSON.stringify(foundUser));
    }

    router.push("/");
  };

  // Logout clears both state and localStorage
  const logout = () => {
    setUser(null);
    localStorage.removeItem("fmdb-user");
    router.push("/");
  };

  const signup = (firstName, lastName, username, email, password) => {
    const existingUser = users.find(
      (user) => user.email === email || user.username === username
    );

    if (existingUser) {
      setError("User with this email or username already exists.");
      return;
    }

    const newUser = {
      userID: `u00${users.length + 1}`,
      fullName: `${firstName} ${lastName}`,
      email,
      username,
      password,
      bio: "This user hasn't written a bio yet.",
      dob: "2000-01-01",
      userType: "user",
      gender: "unspecified",
      privacy: true,
      userFavs: [],
      friends: [],
      profilePic: "https://i.pravatar.cc/150?img=65",
    };

    console.log("New user created (mock):", newUser);
    setUser(newUser);
    setError(null);
  };

  const addFavorite = (movieId) => {
    if (!user) {
      setError("Please log in first");
      return;
    }

    if (user.userFavs.includes(movieId)) {
      setError("This movie is already in your favorites");
      return;
    }

    const updatedUser = {
      ...user,
      userFavs: [...user.userFavs, movieId],
    };

    setUser(updatedUser);
    localStorage.setItem("fmdb-user", JSON.stringify(updatedUser)); // Update localStorage
    setError(null);
  };

  const removeFavorite = (movieId) => {
    if (!user) {
      setError("Please log in first");
      return;
    }

    const updatedUser = {
      ...user,
      userFavs: user.userFavs.filter((favId) => favId !== movieId),
    };

    setUser(updatedUser);
    localStorage.setItem("fmdb-user", JSON.stringify(updatedUser)); // Update localStorage
    setError(null);
  };

  return (
    <AuthContext.Provider
      value={{
        user,
        setUser,
        login,
        signup,
        logout,
        addFavorite,
        removeFavorite,
        error,
      }}
    >
      {children}
    </AuthContext.Provider>
  );
};

export const useAuth = () => useContext(AuthContext);
