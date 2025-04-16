import React, { useState } from "react";
import Navbar from "@/components/Navbar";
import Footer from "@/components/Footer";
import { useRouter } from "next/router"; // Import useRouter from next/router

export default function ApplyToBeCritic() {
  const [firstName, setFirstName] = useState("");
  const [lastName, setLastName] = useState("");
  const [email, setEmail] = useState("");
  const [bio, setBio] = useState("");
  const [reason, setReason] = useState("");
  const [role, setRole] = useState(""); // Added state for role
  const [error, setError] = useState("");
  const [success, setSuccess] = useState(false);

  const router = useRouter(); // Initialize the router

  const handleApply = async (e) => {
    e.preventDefault();

    if (!firstName || !lastName || !email || !bio || !reason || !role) {
      setError("Please fill out all fields.");
      return;
    }

    setError("");
    setSuccess(true);

    // Simulate a delay before navigating
    setTimeout(() => {
      router.push("/"); // Navigate to index.js after the delay
    }, 3000); // 3000 ms = 3 seconds
  };

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
            <h1 className="max-w-md mt-8 ml-24 text-center text-white text-3xl font-bold md:text-6xl">
              Apply to Join Our Team
            </h1>

            <form
              className="w-full max-w-lg ml-16 bg-purpleWhite bg-opacity-80 px-5 py-8 rounded-3xl space-y-2 drop-shadow-xl"
              onSubmit={handleApply}
            >
              <div>
                <label htmlFor="email" className="block text-sm font-bold text-xl text-white">Username</label>
                <input
                  type="text"
                  id="username"
                  className="w-full px-3 py-2 bg-purpleWhite text-darkPurple focus:text-purple rounded-md"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                />
              </div>

              <div>
                <label htmlFor="bio" className="block text-sm font-bold text-xl text-white">Short Bio</label>
                <textarea
                  id="bio"
                  className="w-full px-3 py-2 bg-purpleWhite text-darkPurple focus:text-purple rounded-md"
                  value={bio}
                  onChange={(e) => setBio(e.target.value)}
                />
              </div>

              <div>
                <label htmlFor="reason" className="block text-sm font-bold text-xl text-white">
                  Why do you want to become a Critic/Admin?
                </label>
                <textarea
                  id="reason"
                  className="w-full px-3 py-2 bg-purpleWhite text-darkPurple focus:text-purple rounded-md"
                  value={reason}
                  onChange={(e) => setReason(e.target.value)}
                />
              </div>

              {/* Dropdown to select role */}
              <div>
                <label htmlFor="role" className="block text-sm font-bold text-xl text-white">Select Role</label>
                <select
                  id="role"
                  className="w-full px-3 py-2 bg-purpleWhite text-darkPurple focus:text-purple rounded-md"
                  value={role}
                  onChange={(e) => setRole(e.target.value)}
                >
                  <option value="" disabled>Select your role</option>
                  <option value="Admin">Admin</option>
                  <option value="Verified Critic">Verified Critic</option>
                </select>
              </div>

              {error && (
                <p className="text-red-500 font-semibold text-md text-center">
                  {error}
                </p>
              )}

              {success && (
                <p className="text-green-600 font-semibold text-md text-center">
                  Your application has been submitted! You will be notified soon.
                </p>
              )}

              <div className="flex justify-center space-x-4">
                <button
                  type="button"
                  className="px-4 py-2 font-bold bg-purpleWhite text-darkPurple rounded-lg"
                  onClick={() => router.push("/Profile")} // Cancel button functionality
                >
                  Cancel
                </button>
                <button
                  type="submit"
                  className="px-4 py-2 font-bold bg-purple text-white rounded-lg"
                >
                  Apply
                </button>
              </div>
            </form>
          </div>
        </div>
      </section>
      <Footer />
    </div>
  );
}
