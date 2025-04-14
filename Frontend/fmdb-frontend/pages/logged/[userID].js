import { useRouter } from 'next/router';
import LoggedMovies from '../../components/LoggedMovies'; // Update the path if necessary
import Navbar from '@/components/Navbar';
import Footer from '@/components/Footer';
const LoggedMoviesPage = () => {
  const router = useRouter();
  const { userID } = router.query;  // Extract userID from the URL
  const usersData = [
    { id: 'chamkadar1234', access: 'private', friends: ['2'] },
    { id: '2', access: 'friend', friends: ['chamkadar1234'] },
    { id: '3', access: 'private' },
  ];
  const backdropUrl='https://image.tmdb.org/t/p/original/v8Nf6Y1qL1Q3PWTBezXNPPaXqza.jpg'


  if (!userID) {
    return <p className="text-white">Loading...</p>;
  }

  return (
    <section
      className="relative bg-cover bg-center bg-fixed"
      style={{ backgroundImage: `url(${backdropUrl})` }}
    >
      <div className="fixed inset-0 bg-darkPurple bg-opacity-80 z-0"></div>
    <div className="container mx-auto p-6"> 
    <Navbar />     
      {/* Pass the userID as a prop to LoggedMovies component */}
      <LoggedMovies userID={userID} />
      <Footer />
    </div>
    </section>
  );
};

export default LoggedMoviesPage;
