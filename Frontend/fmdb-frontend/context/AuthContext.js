import React, { createContext, useState, useContext } from "react";
import { users } from "../data/Users"; // Simulated static data (read-only in frontend)
import { useRouter } from "next/router";

export const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [error, setError] = useState(null);
  const router = useRouter();

  // Function to login
  const login = (email, password) => {
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
    router.push("/");
  };

  // Function to logout
  const logout = () => {
    setUser(null);
    router.push("/");
  };

  // Function to signup (mock)
  const signup = (firstName, lastName, username, email, password) => {
    const existingUser = users.find((user) => user.email === email || user.username === username);

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
      dob: "2000-01-01", // default
      userType: "user",
      gender: "unspecified",
      privacy: true,
      userFavs: [], // empty list initially
      friends: [],
      profilePic: "https://i.pravatar.cc/150?img=65" // random avatar
    };

    // ❗ This just logs to the console; it doesn't persist
    console.log("New user created (mock):", newUser);

    setUser(newUser);
    setError(null);
    router.push("/");
  };

  // Function to add a movie to favorites
  const addFavorite = (movieId) => {
    if (!user) {
      setError("Please log in first");
      return;
    }

    // Check if the movie is already in the favorites
    if (user.userFavs.includes(movieId)) {
      setError("This movie is already in your favorites");
      return;
    }

    // Add the movieId to userFavs
    const updatedUser = {
      ...user,
      userFavs: [...user.userFavs, movieId],
    };

    // Update user in state
    setUser(updatedUser);
    setError(null);
  };

  // Function to remove a movie from favorites
  const removeFavorite = (movieId) => {
    if (!user) {
      setError("Please log in first");
      return;
    }

    // Remove the movieId from userFavs
    const updatedUser = {
      ...user,
      userFavs: user.userFavs.filter((favId) => favId !== movieId),
    };

    // Update user in state
    setUser(updatedUser);
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

// Custom hook to use the AuthContext
export const useAuth = () => {
  return useContext(AuthContext);
};
