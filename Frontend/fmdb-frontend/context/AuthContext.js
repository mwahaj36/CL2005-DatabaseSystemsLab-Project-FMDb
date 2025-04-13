import React, { createContext, useState } from "react";
import { users } from "../data/Users"; // Simulated static data (read-only in frontend)
import { useRouter } from "next/router";

export const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(null);
  const [error, setError] = useState(null);
  const router = useRouter();

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

  const logout = () => {
    setUser(null);
    router.push("/");
  };

  // ✅ Signup mock logic
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
      userFavs: [],
      friends: [],
      profilePic: "https://i.pravatar.cc/150?img=65" // random avatar
    };

    // ❗ This just logs to the console; it doesn't persist
    console.log("New user created (mock):", newUser);

    setUser(newUser);
    setError(null);
    router.push("/");
  };

  return (
    <AuthContext.Provider value={{ user, setUser, login, signup, logout, error }}>
      {children}
    </AuthContext.Provider>
  );
};
