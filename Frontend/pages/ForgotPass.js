import React, { useState, useContext } from "react";
import { AuthContext } from "../context/AuthContext";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import { useRouter } from "next/router";
import Head from "next/head";
export default function ForgotPasswordPage() {
  const router = useRouter();
  const { resetPassword, error } = useContext(AuthContext);
  const [email, setEmail] = useState("");
  const [resetSuccess, setResetSuccess] = useState(false);
  const [resetError, setResetError] = useState("");

  const handleResetPassword = async (e) => {
    e.preventDefault();

    if (!email) {
      setResetError("Please enter your email address");
      return;
    }

    setResetError("");
    const result = await resetPassword(email);

    if (!result.error) {
      setResetSuccess(true);
      setTimeout(() => {
        router.push("/Login"); // Redirecting to login page after success
      }, 1500);
    } else {
      setResetError(result.error);
    }
  };

  return (
    <>
    <Head>
      <title>Forgot Password</title>
      </Head>
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
              Forgot Password
            </h1>

            <form
              className="w-full max-w-lg ml-16 bg-purpleWhite bg-opacity-80 px-5 py-8 rounded-3xl space-y-6 drop-shadow-xl"
              onSubmit={handleResetPassword}
            >
              <input
                type="email"
                placeholder="Enter your Email"
                className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-3 px-4 leading-tight focus:outline-none focus:bg-purpleWhite focus:border-darkPurple"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                required
              />

              {resetError && (
                <p className="text-red-500 font-semibold text-md text-center">
                  {resetError}
                </p>
              )}

              {resetSuccess && !resetError && (
                <p className="text-green-600 font-semibold text-md text-center">
                  Please check your email for password reset instructions.
                </p>
              )}

              <button
                type="submit"
                className="w-full px-6 py-3 text-xl font-bold text-white rounded-xl bg-darkPurple hover:bg-purpleWhite hover:text-darkPurple transition-all duration-300"
              >
                Reset Password
              </button>
            </form>

            <p className="text-center text-white text-lg">
              Remember your password?{" "}
              <button
                className="text-purple font-bold"
                onClick={() => router.push("/Login")}
              >
                Login here
              </button>
            </p>
          </div>
        </div>
      </section>
      <Footer />
    </div></>
  
  );
}
