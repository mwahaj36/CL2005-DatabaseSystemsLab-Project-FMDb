import React, { useState, useContext } from "react";
import { useRouter } from "next/router";
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import { AuthContext } from "../context/AuthContext";
import Error from "../components/Error"; // Import the Error component
import Head from "next/head";

export default function ChangePasswordPage() {
  const router = useRouter();
  const { changePassword, error } = useContext(AuthContext);
  const [oldPass, setOldPass] = useState("");
  const [newPass, setNewPass] = useState("");
  const [confirmPass, setConfirmPass] = useState("");
  const [message, setMessage] = useState("");

  const handleChangePassword = async (e) => {
    e.preventDefault();
    if (newPass !== confirmPass) {
      setMessage("New passwords do not match.");
      return;
    }

    const success = await changePassword(oldPass, newPass);
    if (success) {
      setMessage("Password changed successfully.");
      setTimeout(() => router.push("/EditProfile"), 2000);
    } else {
      setMessage("Failed to change password.");
    }
  };

  return (
    <>
      <Head>
        <title>Change Password</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
          id="change-pass"
          className="relative z-10 flex items-center justify-center min-h-screen px-4 sm:px-6"
        >
          <div className="container flex flex-col justify-center items-center px-4 sm:px-6 mx-auto space-y-6 sm:space-y-10">
            <h1 className="text-white text-3xl sm:text-5xl font-bold text-center">
              Change Password
            </h1>
            <form
              onSubmit={handleChangePassword}
              className="w-full max-w-sm sm:max-w-md bg-purpleWhite bg-opacity-80 px-4 sm:px-6 py-6 sm:py-8 rounded-3xl space-y-4 sm:space-y-6 drop-shadow-xl"
            >
              <input
                type="password"
                placeholder="Enter your Old Password"
                value={oldPass}
                onChange={(e) => setOldPass(e.target.value)}
                className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-2 sm:py-3 px-3 sm:px-4 focus:outline-none focus:bg-purpleWhite focus:border-darkPurple"
                required
              />
              <input
                type="password"
                placeholder="Enter your New Password"
                value={newPass}
                onChange={(e) => setNewPass(e.target.value)}
                className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-2 sm:py-3 px-3 sm:px-4 focus:outline-none focus:bg-purpleWhite focus:border-darkPurple"
                required
              />
              <input
                type="password"
                placeholder="Confirm your New Password"
                value={confirmPass}
                onChange={(e) => setConfirmPass(e.target.value)}
                className="block w-full bg-white text-darkPurple border-2 border-purpleWhite rounded-lg py-2 sm:py-3 px-3 sm:px-4 focus:outline-none focus:bg-purpleWhite focus:border-darkPurple"
                required
              />

              {/* Show error message here if it exists */}
              {message && (
                <p
                  className={`text-sm sm:text-md font-semibold text-center ${
                    message.includes("success")
                      ? "text-green-600"
                      : "text-red-500"
                  }`}
                >
                  {message}
                </p>
              )}

              {/* Show error component if there's an error */}
              {error && <Error message={error} onClose={() => setMessage("")} />}

              <button
                type="submit"
                className="w-full px-4 sm:px-6 py-2 sm:py-3 text-lg sm:text-xl font-bold text-white rounded-xl bg-darkPurple hover:bg-purpleWhite hover:text-darkPurple transition-all duration-300"
              >
                Change
              </button>

              <div className="mt-2 text-center">
                <a
                  href="/EditProfile"
                  className="text-purpleWhite text-sm sm:text-lg hover:text-purple font-bold"
                >
                  Back
                </a>
              </div>
            </form>
          </div>
        </section>
        <Footer />
      </div>
    </>
  );
}
