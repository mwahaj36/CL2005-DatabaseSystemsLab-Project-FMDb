import React, { useState, useContext, useEffect } from "react";
import { AuthContext } from "../context/AuthContext";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import { useRouter } from "next/router";

export default function LoginSignupPage() {
  const router = useRouter();
  const { login, signup, error, resetPassword } = useContext(AuthContext);
  const [username, setUsername] = useState("");
  const [password, setPassword] = useState("");
  const [firstName, setFirstName] = useState("");
  const [lastName, setLastName] = useState("");
  const [email, setEmail] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [isSignup, setIsSignup] = useState(false);
  const [isResetPassword, setIsResetPassword] = useState(false);
  const [signupError, setSignupError] = useState("");
  const [signupSuccess, setSignupSuccess] = useState(false);
  const [rememberMe, setRememberMe] = useState(false);
  const [isLoading, setIsLoading] = useState(false);

  const handleLogin = async (e) => {
    e.preventDefault();
    setIsLoading(true);
    try {
      await login(username, password, rememberMe);
    } finally {
      setIsLoading(false);
    }
  };
  const handleSignup = async (e) => {
    e.preventDefault();
    
    // Client-side validation
    if (password !== confirmPassword) {
      setSignupError("Passwords do not match");
      return;
    }
  
    if (password.length < 6) {
      setSignupError("Password must be at least 6 characters");
      return;
    }
  
    setSignupError("");
    setIsLoading(true);
  
    try {
      await signup(firstName, lastName, username, email, password);
      setSignupSuccess(true);
      setTimeout(() => {
        router.push("/EditProfile");
      }, 1500);
    } catch (err) {
      setSignupError(err.message || "Failed to create account. Please try again.");
    } finally {
      setIsLoading(false);
    }
  };

  const handleResetPassword = async (e) => {
    e.preventDefault();
    setIsLoading(true);
    try {
      await resetPassword(email, password);
      setSignupSuccess(true);
      setSignupError("");
      setTimeout(() => {
        setIsResetPassword(false);
        setEmail("");
        setPassword("");
      }, 1500);
    } catch (err) {
      setSignupError(err.message);
    } finally {
      setIsLoading(false);
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
        className="relative -mt-14 z-10 flex items-center justify-center min-h-screen"
      >
        <div className="container flex flex-col justify-center items-center px-6 mx-auto">
          <div className="w-full max-w-md">
            <div className="bg-purpleWhite bg-opacity-70 px-8 py-10 rounded-3xl space-y-6 drop-shadow-xl">
              <div className="text-center">
                <h1 className="text-4xl font-bold text-darkPurple mb-2">
                  {isResetPassword ? "Reset Password" : 
                   isSignup ? "Create Account" : "Welcome Back"}
                </h1>
                <p className="text-purple">
                  {isResetPassword ? "Enter your email to reset password" :
                   isSignup ? "Join our community today" : "Sign in to continue"}
                </p>
              </div>

              <form onSubmit={isResetPassword ? handleResetPassword : 
                              isSignup ? handleSignup : handleLogin}>
                {isSignup && !isResetPassword && (
                  <div className="flex flex-wrap -mx-3 mb-4">
                    <div className="w-full md:w-1/2 px-3 mb-4 md:mb-0">
                      <input
                        type="text"
                        placeholder="First Name"
                        className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-3 px-4 leading-tight focus:outline-none focus:ring-2 focus:ring-darkPurple focus:border-transparent"
                        value={firstName}
                        onChange={(e) => setFirstName(e.target.value)}
                        required
                      />
                    </div>
                    <div className="w-full md:w-1/2 px-3">
                      <input
                        type="text"
                        placeholder="Last Name"
                        className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-3 px-4 leading-tight focus:outline-none focus:ring-2 focus:ring-darkPurple focus:border-transparent"
                        value={lastName}
                        onChange={(e) => setLastName(e.target.value)}
                        required
                      />
                    </div>
                  </div>
                )}

                {!isSignup && !isResetPassword && (
                  <div className="mb-4">
                    <input
                      type="text"
                      placeholder="Username"
                      className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-3 px-4 leading-tight focus:outline-none focus:ring-2 focus:ring-darkPurple focus:border-transparent"
                      value={username}
                      onChange={(e) => setUsername(e.target.value)}
                      required
                    />
                  </div>
                )}

                {(isSignup || isResetPassword) && (
                  <div className="mb-4">
                    <input
                      type="email"
                      placeholder="Email Address"
                      className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-3 px-4 leading-tight focus:outline-none focus:ring-2 focus:ring-darkPurple focus:border-transparent"
                      value={email}
                      onChange={(e) => setEmail(e.target.value)}
                      required
                    />
                  </div>
                )}

                {isSignup && (
                  <div className="mb-4">
                    <input
                      type="text"
                      placeholder="Username"
                      className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-3 px-4 leading-tight focus:outline-none focus:ring-2 focus:ring-darkPurple focus:border-transparent"
                      value={username}
                      onChange={(e) => setUsername(e.target.value)}
                      required
                    />
                  </div>
                )}

                <div className="mb-4">
                  <input
                    type="password"
                    placeholder={isResetPassword ? "New Password" : "Password"}
                    className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-3 px-4 leading-tight focus:outline-none focus:ring-2 focus:ring-darkPurple focus:border-transparent"
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                    required
                  />
                </div>

                {isSignup && !isResetPassword && (
                  <div className="mb-4">
                    <input
                      type="password"
                      placeholder="Confirm Password"
                      className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-3 px-4 leading-tight focus:outline-none focus:ring-2 focus:ring-darkPurple focus:border-transparent"
                      value={confirmPassword}
                      onChange={(e) => setConfirmPassword(e.target.value)}
                      required
                    />
                  </div>
                )}

                {!isSignup && !isResetPassword && (
                  <div className="flex items-center justify-between mb-6">
                    <div className="flex items-center">
                      <input
                        id="remember-me"
                        name="remember-me"
                        type="checkbox"
                        className="h-4 w-4 text-darkPurple focus:ring-darkPurple border-gray-300 rounded"
                        checked={rememberMe}
                        onChange={(e) => setRememberMe(e.target.checked)}
                      />
                      <label htmlFor="remember-me" className="ml-2 block text-sm text-darkPurple">
                        Remember me
                      </label>
                    </div>
                    <div className="text-sm">
                      <button 
                        type="button"
                        onClick={() => {
                          setIsResetPassword(true);
                          setIsSignup(false);
                          setSignupError("");
                        }}
                        className="font-medium text-darkPurple hover:text-purple"
                      >
                        Forgot password?
                      </button>
                    </div>
                  </div>
                )}

                {(error || signupError) && (
                  <div className="mb-4 p-3 bg-red-100 text-red-700 rounded-lg text-sm">
                    {error || signupError}
                  </div>
                )}

                {signupSuccess && !error && (
                  <div className="mb-4 p-3 bg-green-100 text-green-700 rounded-lg text-sm">
                    {isResetPassword ? "Password reset successfully!" : 
                     isSignup ? "Account created successfully! Redirecting..." : ""}
                  </div>
                )}

                <button
                  type="submit"
                  disabled={isLoading}
                  className={`w-full flex justify-center py-3 px-4 border border-transparent rounded-xl shadow-sm text-lg font-bold text-white bg-darkPurple hover:bg-purple focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-darkPurple transition-all duration-300 ${isLoading ? 'opacity-70 cursor-not-allowed' : ''}`}
                >
                  {isLoading ? (
                    <span className="flex items-center">
                      <svg className="animate-spin -ml-1 mr-3 h-5 w-5 text-white" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24">
                        <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4"></circle>
                        <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z"></path>
                      </svg>
                      Processing...
                    </span>
                  ) : (
                    isResetPassword ? "Reset Password" : 
                    isSignup ? "Sign Up" : "Sign In"
                  )}
                </button>
              </form>

              {!isResetPassword && (
                <div className="text-center mt-4">
                  <p className="text-darkPurple">
                    {isSignup ? "Already have an account?" : "Don't have an account?"}{" "}
                    <button
                      onClick={() => {
                        setIsSignup(!isSignup);
                        setIsResetPassword(false);
                        setSignupError("");
                        setSignupSuccess(false);
                      }}
                      className="font-bold text-purple hover:text-darkPurple transition-colors duration-300"
                    >
                      {isSignup ? "Sign in" : "Sign up"}
                    </button>
                  </p>
                </div>
              )}

              {isResetPassword && (
                <div className="text-center mt-4">
                  <p className="text-darkPurple">
                    Remember your password?{" "}
                    <button
                      onClick={() => {
                        setIsResetPassword(false);
                        setSignupError("");
                      }}
                      className="font-bold text-purple hover:text-darkPurple transition-colors duration-300"
                    >
                      Sign in
                    </button>
                  </p>
                </div>
              )}
            </div>
          </div>
        </div>
      </section>
      <Footer />
    </div>
  );
}