import React, { useState, useEffect } from 'react';
import { useAuth } from '@/context/AuthContext';
import EditFavorite from '@/components/EditFavorite';
import Navbar from "../components/Navbar";
import Footer from "../components/Footer";
import { useRouter } from 'next/router';
import Head from 'next/head';
export default function EditProfile() {
  const { user, token } = useAuth();
  const router = useRouter();
  
  // State for form fields
  const [firstName, setFirstName] = useState("");
  const [lastName, setLastName] = useState("");
  const [gender, setGender] = useState("Not Specified");
  const [email, setEmail] = useState("");
  const [bio, setBio] = useState("");
  const [userType, setUserType] = useState("");
  const [dob, setDob] = useState("");
  const [background, setBackground] = useState("https://image.tmdb.org/t/p/original/v8Nf6Y1qL1Q3PWTBezXNPPaXqza.jpg");
  const [privacy, setPrivacy] = useState("public");
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [submitError, setSubmitError] = useState(null);
  const [submitSuccess, setSubmitSuccess] = useState(false);
  const [isLoading, setIsLoading] = useState(true);
  const [formErrors, setFormErrors] = useState({});
  const [favoriteMovies, setFavoriteMovies] = useState([]);

  // Fetch user profile data including favorites
  useEffect(() => {
    const fetchUserProfile = async () => {
      if (!user?.userID || !token) {
        setIsLoading(false);
        return;
      }
  
      try {
        // First fetch the public data
        const publicResponse = await fetch(`https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/public/${user.userID}`);
        const publicData = await publicResponse.json();
  
        if (!publicResponse.ok) {
          throw new Error(publicData.message || 'Failed to fetch public user profile');
        }
  
        // Split full name into first and last names
        const nameParts = publicData.user?.FullName?.split(" ") || [];
        setFirstName(nameParts[0] || "");
        setLastName(nameParts.slice(1).join(" ") || "");
        
        // Set other fields with proper null checks
        setEmail(publicData.user?.Email || "");
        setBio(publicData.user?.Bio || "");
        setUserType(publicData.user?.UserType || "");
        setGender(publicData.user?.Gender || "Not Specified");
        setDob(publicData.user?.DateOfBirth?.split('T')[0] || ""); 
        setPrivacy(publicData.user?.Privacy?.toLowerCase() || "public");
        
        // Set background from basicDetails if available
        if (publicData.basicDetails?.firstFavoriteBackdrop) {
          setBackground(publicData.basicDetails.firstFavoriteBackdrop);
        }
  
        // Fetch favorites using the Bearer token
        const favoritesResponse = await fetch('https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users/favorites', {
          headers: {
            'Authorization': `Bearer ${token}`
          }
        });
        
        if (!favoritesResponse.ok) {
          throw new Error('Failed to fetch favorites');
        }
  
        const favoritesData = await favoritesResponse.json();
        
        if (favoritesData.success && favoritesData.favorites) {
          // The API already provides ranks, so we can use them directly
          setFavoriteMovies(favoritesData.favorites);
        }
  
      } catch (error) {
        console.error("Error fetching user profile:", error);
        setSubmitError(error.message);
      } finally {
        setIsLoading(false);
      }
    };
  
    fetchUserProfile();
  }, [user, token]);

  const handleFavoriteUpdate = (updatedRank, movieData) => {
    setFavoriteMovies(prev => {
      // Remove any existing movie with this rank
      const filtered = prev.filter(movie => movie.rank !== updatedRank);
      // Add the new movie with its rank
      return [...filtered, { ...movieData, rank: updatedRank }];
    });
  };

  const validateForm = () => {
    const errors = {};
    
    if (!firstName.trim()) {
      errors.firstName = "First name is required";
    }
    
    if (!lastName.trim()) {
      errors.lastName = "Last name is required";
    }
    
    if (!email.trim()) {
      errors.email = "Email is required";
    } else if (!/^\S+@\S+\.\S+$/.test(email)) {
      errors.email = "Email is invalid";
    }
    
    if (!dob) {
      errors.dob = "Date of birth is required";
    }

    setFormErrors(errors);
    return Object.keys(errors).length === 0;
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    
    if (!validateForm()) {
      return;
    }

    setIsSubmitting(true);
    setSubmitError(null);
    setSubmitSuccess(false);

    try {
      const response = await fetch('https://fmdb-server-fmf2e0g7dqfuh0hx.australiaeast-01.azurewebsites.net/users', {
        method: 'PUT',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`
        },
        body: JSON.stringify({
          FullName: `${firstName} ${lastName}`,
          Username: user.username,
          Email: email,
          Bio: bio || "",
          Privacy: privacy === 'public' ? 'Public' : 'Private',
          Gender: gender,
          DateOfBirth: dob
        })
      });

      const data = await response.json();

      if (!response.ok) {
        throw new Error(data.message || 'Failed to update profile');
      }

      // Update local storage with new user data
      const updatedUser = {
        ...user,
        fullName: `${firstName} ${lastName}`,
        email,
        bio: bio || "",
        gender,
        dob,
        privacy
      };

      localStorage.setItem('user', JSON.stringify(updatedUser));
      sessionStorage.setItem('user', JSON.stringify(updatedUser));

      setSubmitSuccess(true);
      setTimeout(() => setSubmitSuccess(false), 3000);
      router.push(`/profile/${user.userID}`); // <--- this line does the magic
    } catch (error) {
      console.error('Error updating profile:', error);
      setSubmitError(error.message);
    } finally {
      setIsSubmitting(false);
    }
  };

  if (isLoading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-darkPurple">
        <div className="animate-spin rounded-full h-32 w-32 border-b-2 border-purple"></div>
      </div>
    );
  }

  return (
    <>
    <Head>
      <title>Edit Profile</title>
    </Head>
     <section className="relative bg-cover bg-center bg-fixed" style={{ backgroundImage: `url(${background})` }}>
      <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
      <Navbar />
      
      <section id="edit-favorite" className="relative">
        <div className="max-w-6xl px-5 mx-auto mt-10 text-center relative z-10">
          <h2 className="text-6xl text-white text-shadow font-bold text-center">
            Edit Favourites
          </h2>
         <div className="flex flex-row space-x-4 w-full mt-8">
  {[1, 2, 3, 4].map(rank => {
    // Find the movie for this rank (make sure favoriteMovies is properly structured)
    const movieForRank = favoriteMovies.find(m => m.rank === rank);
    
    return (
      <div key={rank} className="flex-1">
        <EditFavorite 
          movie={movieForRank || null} // Pass null if no movie for this rank
          rank={rank}
          token={token}
          onFavoriteUpdate={handleFavoriteUpdate}
        />
      </div>
    );
  })}
</div>
        </div>
      </section>

      <div className="relative font-std w-full -pt-14 rounded-2xl font-normal leading-relaxed py-4">
        <h2 className="relative mb-5 text-center pt-10 pb-10 text-6xl font-bold text-white">
          Edit Profile
        </h2>
        <div className="relative -pt-30 flex flex-col md:flex-row pr-40 items-start justify-between">
          <div className="w-full md:w-1/3 text-center mb-6 md:mb-0 flex flex-col items-center pt-8 min-h-screen">
            <img
              src={`https://ui-avatars.com/api/?name=${firstName}+${lastName}&background=random`}
              alt="Profile Picture"
              className="w-72 h-72 rounded-xl mx-auto mb-4"
            />
          </div>

          <div className="w-full md:w-2/3">
            <form className="space-y-4" onSubmit={handleSubmit}>
              {submitError && (
                <div className="p-4 text-red-500 bg-red-100 rounded-lg">
                  {submitError}
                </div>
              )}
              {submitSuccess && (
                <div className="p-4 text-green-500 bg-green-100 rounded-lg">
                  Profile updated successfully!
                </div>
              )}

              <div className="flex space-x-4">
                <div className="w-1/2">
                  <label htmlFor="first_name" className="block text-sm font-bold text-xl text-white">First Name*</label>
                  <input
                    type="text"
                    id="first_name"
                    className={`w-full px-3 py-2 bg-purpleWhite text-darkPurple focus:text-purple rounded-md ${
                      formErrors.firstName ? 'border-2 border-red-500' : ''
                    }`}
                    value={firstName}
                    onChange={(e) => setFirstName(e.target.value)}
                  />
                  {formErrors.firstName && (
                    <p className="text-red-500 text-sm mt-1">{formErrors.firstName}</p>
                  )}
                </div>
                <div className="w-1/2">
                  <label htmlFor="last_name" className="block text-sm font-bold text-xl text-white">Last Name*</label>
                  <input
                    type="text"
                    id="last_name"
                    className={`w-full px-3 py-2 bg-purpleWhite text-darkPurple focus:text-purple rounded-md ${
                      formErrors.lastName ? 'border-2 border-red-500' : ''
                    }`}
                    value={lastName}
                    onChange={(e) => setLastName(e.target.value)}
                  />
                  {formErrors.lastName && (
                    <p className="text-red-500 text-sm mt-1">{formErrors.lastName}</p>
                  )}
                </div>
              </div>

              <div className="flex space-x-4">
                <div className="w-1/2">
                  <label htmlFor="email" className="block text-sm font-bold text-xl text-white">Email*</label>
                  <input
                    type="email"
                    id="email"
                    className={`w-full px-3 py-2 bg-purpleWhite text-darkPurple focus:text-purple rounded-md ${
                      formErrors.email ? 'border-2 border-red-500' : ''
                    }`}
                    value={email}
                    onChange={(e) => setEmail(e.target.value)}
                  />
                  {formErrors.email && (
                    <p className="text-red-500 text-sm mt-1">{formErrors.email}</p>
                  )}
                </div>
                <div className="w-1/2">
                  <label htmlFor="userType" className="block text-sm font-bold text-xl text-white">User Type</label>
                  <select
                    id="userType"
                    className="w-full px-3 py-3 bg-purpleWhite text-darkPurple focus:text-purple rounded-md"
                    value={userType}
                    onChange={(e) => setUserType(e.target.value)}
                    disabled
                  >
                    <option value="User">User</option>
                    <option value="Verified Critic">Verified Critic</option>
                    <option value="Admin">Admin</option>
                  </select>
                </div>
              </div>

              <div>
                <label htmlFor="bio" className="block text-sm font-bold text-xl text-white">Bio</label>
                <textarea
                  id="bio"
                  className="w-full px-3 py-2 bg-purpleWhite text-darkPurple focus:text-purple rounded-md"
                  value={bio}
                  onChange={(e) => setBio(e.target.value)}
                  rows={4}
                />
              </div>

              <div className="flex space-x-4">
                <div className="w-1/2">
                  <label htmlFor="dob" className="block text-sm font-bold text-xl text-white">Date of Birth*</label>
                  <input
                    type="date"
                    id="dob"
                    className={`w-full px-3 py-2 bg-purpleWhite text-darkPurple focus:text-purple rounded-md ${
                      formErrors.dob ? 'border-2 border-red-500' : ''
                    }`}
                    value={dob}
                    onChange={(e) => setDob(e.target.value)}
                  />
                  {formErrors.dob && (
                    <p className="text-red-500 text-sm mt-1">{formErrors.dob}</p>
                  )}
                </div>
                <div className="w-1/2">
                  <label htmlFor="gender" className="block text-sm font-bold text-xl text-white">Gender</label>
                  <select
                    id="gender"
                    className="w-full px-3 py-3 bg-purpleWhite text-darkPurple focus:text-purple rounded-md"
                    value={gender}
                    onChange={(e) => setGender(e.target.value)}
                  >
                    <option value="Not Specified">Not Specified</option>
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                  </select>
                </div>

                <div className="w-1/2">
                  <label htmlFor="privacy" className="block text-sm font-bold text-xl text-white">Account Privacy</label>
                  <select
                    id="privacy"
                    className="w-full px-3 py-3 bg-purpleWhite text-darkPurple focus:text-purple rounded-md"
                    value={privacy}
                    onChange={(e) => setPrivacy(e.target.value)}
                  >
                    <option value="public">Public</option>
                    <option value="private">Private</option>
                  </select>
                </div>
              </div>

              <div className="flex justify-end space-x-4">
                <a href="/ChangePass" className="px-4 py-2 font-bold text-white hover:text-purpleWhite">Change Password</a>
                <button type="button" onClick={() => router.back()} className="px-4 py-2 font-bold bg-purpleWhite text-darkPurple rounded-lg">
                  Cancel
                </button>
                <button
                  type="submit" 
                  className="px-4 py-2 font-bold bg-purple text-white rounded-lg disabled:opacity-50"
                  disabled={isSubmitting}
                >
                  {isSubmitting ? 'Saving...' : 'Save Changes'}
                </button>
              </div>
            </form>
          </div>
        </div>
      </div>
      <Footer />
    </section> </>
  
  );
}