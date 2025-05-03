import React, { useState, useContext, useEffect } from "react";
import { AuthContext } from "../context/AuthContext";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import { useRouter } from "next/router";
import Head from "next/head";

export default function LoginSignupPage() {
  const router = useRouter();
  const { login, signup, resetPassword } = useContext(AuthContext);
  const [formData, setFormData] = useState({
    firstName: "",
    lastName: "",
    username: "",
    email: "",
    password: "",
    confirmPassword: ""
  });
  const [isSignup, setIsSignup] = useState(false);
  const [isResetPassword, setIsResetPassword] = useState(false);
  const [formError, setFormError] = useState("");
  const [formSuccess, setFormSuccess] = useState("");
  const [rememberMe, setRememberMe] = useState(false);
  const [isLoading, setIsLoading] = useState(false);

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setFormData(prev => ({
      ...prev,
      [name]: value
    }));
  };

  const resetForm = () => {
    setFormData({
      firstName: "",
      lastName: "",
      username: "",
      email: "",
      password: "",
      confirmPassword: ""
    });
    setFormError("");
  };

  const validateForm = () => {
    if (isResetPassword) {
      if (!formData.email.trim() || !formData.password.trim()) {
        setFormError("Please fill in all fields");
        return false;
      }
      if (formData.password.length < 6) {
        setFormError("Password must be at least 6 characters");
        return false;
      }
    } else if (isSignup) {
      if (!formData.firstName.trim() || !formData.lastName.trim() || 
          !formData.username.trim() || !formData.email.trim() || 
          !formData.password.trim() || !formData.confirmPassword.trim()) {
        setFormError("Please fill in all fields");
        return false;
      }
      if (formData.password !== formData.confirmPassword) {
        setFormError("Passwords do not match");
        return false;
      }
      if (formData.password.length < 6) {
        setFormError("Password must be at least 6 characters");
        return false;
      }
    } else {
      if (!formData.username.trim() || !formData.password.trim()) {
        setFormError("Please fill in all fields");
        return false;
      }
    }
    return true;
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    setFormError("");
    
    if (!validateForm()) return;

    setIsLoading(true);

    try {
      if (isResetPassword) {
        await resetPassword(formData.email, formData.password);
        setFormSuccess("Password reset successfully!");
        setTimeout(() => {
          setIsResetPassword(false);
          resetForm();
        }, 1500);
      } else if (isSignup) {
        await signup(
          formData.firstName,
          formData.lastName,
          formData.username,
          formData.email,
          formData.password
        );
        setFormSuccess("Account created successfully! Redirecting...");
        setTimeout(() => router.push("/EditProfile"), 1500);
      } else {
        await login(formData.username, formData.password, rememberMe);
      }
    } catch (err) {
      setFormError(err.message || 
        (isResetPassword ? "Failed to reset password" : 
         isSignup ? "Failed to create account" : "Invalid credentials"));
    } finally {
      setIsLoading(false);
    }
  };

  const toggleFormType = () => {
    setIsSignup(!isSignup);
    setIsResetPassword(false);
    resetForm();
  };

  const showResetPassword = () => {
    setIsResetPassword(true);
    setIsSignup(false);
    resetForm();
  };

  useEffect(() => {
    if (formSuccess) {
      const timer = setTimeout(() => setFormSuccess(""), 3000);
      return () => clearTimeout(timer);
    }
  }, [formSuccess]);

  return (
    <>
    <Head>
      <title>{isResetPassword ? "Reset Password" : isSignup ? "Sign Up" : "Login"}</title>
    </Head>
       <div className="relative bg-cover bg-center bg-fixed min-h-screen" style={{
      backgroundImage: "url('https://image.tmdb.org/t/p/original/8mnXR9rey5uQ08rZAvzojKWbDQS.jpg')"
    }}>
      <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
      <Navbar />
      
      <section className="relative -mt-14 z-10 flex items-center justify-center min-h-screen px-4">
        <div className="container flex flex-col justify-center items-center px-4 mx-auto">
          <div className="w-full max-w-sm">
            <div className="bg-purpleWhite bg-opacity-70 px-6 py-8 rounded-3xl space-y-6 drop-shadow-xl">
              <div className="text-center">
                <h1 className="text-3xl font-bold text-darkPurple mb-2">
                  {isResetPassword ? "Reset Password" : 
                   isSignup ? "Create Account" : "Welcome Back"}
                </h1>
                <p className="text-purple text-sm">
                  {isResetPassword ? "Enter your email to reset password" :
                   isSignup ? "Join our community today" : "Sign in to continue"}
                </p>
              </div>

              <form onSubmit={handleSubmit}>
                {isSignup && !isResetPassword && (
                  <div className="flex flex-wrap -mx-2 mb-4">
                    <div className="w-full md:w-1/2 px-2 mb-4 md:mb-0">
                      <input
                        type="text"
                        name="firstName"
                        placeholder="First Name"
                        className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-2 px-3 leading-tight focus:outline-none focus:ring-2 focus:ring-darkPurple focus:border-transparent"
                        value={formData.firstName}
                        onChange={handleInputChange}
                        required
                      />
                    </div>
                    <div className="w-full md:w-1/2 px-2">
                      <input
                        type="text"
                        name="lastName"
                        placeholder="Last Name"
                        className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-2 px-3 leading-tight focus:outline-none focus:ring-2 focus:ring-darkPurple focus:border-transparent"
                        value={formData.lastName}
                        onChange={handleInputChange}
                        required
                      />
                    </div>
                  </div>
                )}

                {(isSignup || !isResetPassword) && (
                  <div className="mb-4">
                    <input
                      type="text"
                      name="username"
                      placeholder="Username"
                      className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-2 px-3 leading-tight focus:outline-none focus:ring-2 focus:ring-darkPurple focus:border-transparent"
                      value={formData.username}
                      onChange={handleInputChange}
                      required={!isResetPassword}
                    />
                  </div>
                )}

                {(isSignup || isResetPassword) && (
                  <div className="mb-4">
                    <input
                      type="email"
                      name="email"
                      placeholder="Email Address"
                      className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-2 px-3 leading-tight focus:outline-none focus:ring-2 focus:ring-darkPurple focus:border-transparent"
                      value={formData.email}
                      onChange={handleInputChange}
                      required
                    />
                  </div>
                )}

                <div className="mb-4">
                  <input
                    type="password"
                    name="password"
                    placeholder={isResetPassword ? "New Password" : "Password"}
                    className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-2 px-3 leading-tight focus:outline-none focus:ring-2 focus:ring-darkPurple focus:border-transparent"
                    value={formData.password}
                    onChange={handleInputChange}
                    required
                  />
                </div>

                {isSignup && !isResetPassword && (
                  <div className="mb-4">
                    <input
                      type="password"
                      name="confirmPassword"
                      placeholder="Confirm Password"
                      className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-2 px-3 leading-tight focus:outline-none focus:ring-2 focus:ring-darkPurple focus:border-transparent"
                      value={formData.confirmPassword}
                      onChange={handleInputChange}
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
                        onClick={showResetPassword}
                        className="font-medium text-darkPurple hover:text-purple"
                      >
                        Forgot password?
                      </button>
                    </div>
                  </div>
                )}

                {formError && (
                  <div className="mb-4 p-3 bg-red-100 text-red-700 rounded-lg text-sm">
                    {formError}
                  </div>
                )}

                {formSuccess && (
                  <div className="mb-4 p-3 bg-green-100 text-green-700 rounded-lg text-sm">
                    {formSuccess}
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

              {!isResetPassword ? (
                <div className="text-center mt-4">
                  <p className="text-darkPurple text-sm">
                    {isSignup ? "Already have an account?" : "Don't have an account?"}{" "}
                    <button
                      onClick={toggleFormType}
                      className="font-bold text-purple hover:text-darkPurple transition-colors duration-300"
                    >
                      {isSignup ? "Sign in" : "Sign up"}
                    </button>
                  </p>
                </div>
              ) : (
                <div className="text-center mt-4">
                  <p className="text-darkPurple text-sm">
                    Remember your password?{" "}
                    <button
                      onClick={toggleFormType}
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
    </div></>
 
  );
}