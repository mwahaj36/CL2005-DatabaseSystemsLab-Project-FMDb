import React, { useState, useContext, useEffect } from "react";
import { AuthContext } from "../context/AuthContext";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";

export default function LoginSignupPage() {
  const { login, signup, error } = useContext(AuthContext);
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [firstName, setFirstName] = useState("");
  const [lastName, setLastName] = useState("");
  const [username, setUsername] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [isSignup, setIsSignup] = useState(false);
  const [signupError, setSignupError] = useState("");
  const [signupSuccess, setSignupSuccess] = useState(false);

  const handleLogin = (e) => {
    e.preventDefault();
    login(email, password);
  };

  const handleSignup = async (e) => {
    e.preventDefault();
    if (password !== confirmPassword) {
      setSignupError("Passwords do not match");
      return;
    }

    setSignupError("");
    await signup(firstName, lastName, username, email, password);
    if (!error) {
      setSignupSuccess(true);
    }
  };

  useEffect(() => {
    if (signupSuccess && !error) {
      const timer = setTimeout(() => {
        setIsSignup(false);
        setSignupSuccess(false);
        setFirstName("");
        setLastName("");
        setUsername("");
        setEmail("");
        setPassword("");
        setConfirmPassword("");
      }, 2000);
      return () => clearTimeout(timer);
    }
  }, [signupSuccess, error]);

  return (
    <div
      className="relative bg-cover bg-center bg-fixed min-h-screen"
      style={{
        backgroundImage:
          "url('https://image.tmdb.org/t/p/original/8mnXR9rey5uQ08rZAvzojKWbDQS.jpg')",
      }}
    >
      <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
      <Navbar />
      <section
        id="hero"
        className="relative z-10 flex items-center justify-center min-h-screen"
      >
        <div className="container flex flex-col ml-20 justify-center items-center px-6 mx-auto space-y-20 md:space-y-0">
          <div className="flex flex-col mb-32 space-y-5 md:space-y-5 md:w-1/2 text-center">
            <h1 className="max-w-md ml-24 text-center text-white text-7xl font-bold md:text-7xl">
              {isSignup ? "Sign Up" : "Login"}
            </h1>

            <form
              className="w-full max-w-lg ml-16 bg-purpleWhite bg-opacity-80 px-5 py-8 rounded-3xl space-y-6 drop-shadow-xl"
              onSubmit={isSignup ? handleSignup : handleLogin}
            >
              {isSignup && (
                <div className="flex flex-wrap -mx-3">
                  <div className="w-full md:w-1/2 px-3">
                    <input
                      type="text"
                      placeholder="First Name"
                      className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-3 px-4 leading-tight focus:outline-none focus:bg-purpleWhite focus:border-purple"
                      value={firstName}
                      onChange={(e) => setFirstName(e.target.value)}
                      required
                    />
                  </div>
                  <div className="w-full md:w-1/2 px-3">
                    <input
                      type="text"
                      placeholder="Last Name"
                      className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-3 px-4 leading-tight focus:outline-none focus:bg-purpleWhite focus:border-purple"
                      value={lastName}
                      onChange={(e) => setLastName(e.target.value)}
                      required
                    />
                  </div>
                </div>
              )}

              <input
                type="email"
                placeholder="Email"
                className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-3 px-4 leading-tight focus:outline-none focus:bg-purpleWhite focus:border-darkPurple"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                required
              />

              {!isSignup && (
                <input
                  type="password"
                  placeholder="Password"
                  className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-3 px-4 leading-tight focus:outline-none focus:bg-purpleWhite focus:border-purple"
                  value={password}
                  onChange={(e) => setPassword(e.target.value)}
                  required
                />
              )}

              {isSignup && (
                <>
                  <input
                    type="text"
                    placeholder="Username"
                    className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-3 px-4 leading-tight focus:outline-none focus:bg-purpleWhite focus:border-purple"
                    value={username}
                    onChange={(e) => setUsername(e.target.value)}
                    required
                  />
                  <input
                    type="password"
                    placeholder="Password"
                    className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-3 px-4 leading-tight focus:outline-none focus:bg-purpleWhite focus:border-purple"
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                    required
                  />
                  <input
                    type="password"
                    placeholder="Confirm Password"
                    className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-3 px-4 leading-tight focus:outline-none focus:bg-purpleWhite focus:border-purple"
                    value={confirmPassword}
                    onChange={(e) => setConfirmPassword(e.target.value)}
                    required
                  />
                </>
              )}

              {error && (
                <p className="text-red-500 font-semibold text-md text-center">
                  {error}
                </p>
              )}

              {signupError && (
                <p className="text-red-500 font-semibold text-md text-center">
                  {signupError}
                </p>
              )}

              {signupSuccess && !error && (
                <p className="text-green-600 font-semibold text-md text-center">
                  Signed Up
                </p>
              )}

              {!isSignup && (
                <a
                  href="#"
                  className="text-left text-md text-darkPurple hover:text-purple font-bold"
                >
                  Forgot Username / Password
                </a>
              )}

              <button
                type="submit"
                className="w-full px-6 py-3 text-xl font-bold text-white rounded-xl bg-darkPurple hover:bg-purpleWhite hover:text-darkPurple transition-all duration-300"
              >
                {isSignup ? "Sign Up" : "Login"}
              </button>
            </form>

            <p className="text-center text-white text-lg">
              {isSignup
                ? "Already have an account?"
                : "Don't have an account?"}{" "}
              <button
                className="text-purple font-bold"
                onClick={() => {
                  setIsSignup(!isSignup);
                  setSignupError("");
                  setSignupSuccess(false);
                }}
              >
                {isSignup ? "Login here" : "Sign up here"}
              </button>
            </p>
          </div>
        </div>
      </section>
      <Footer />
    </div>
  );
}
