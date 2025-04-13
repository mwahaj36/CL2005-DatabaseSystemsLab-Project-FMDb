import '@/styles/tailwind.css';  // Import Tailwind CSS
import "@/styles/globals.css";
import { AuthProvider } from '@/context/AuthContext'; // Adjust path based on actual location
import 'font-awesome/css/font-awesome.min.css';

export default function App({ Component, pageProps }) {
  return (
    <AuthProvider>
      <Component {...pageProps} />
    </AuthProvider>
  );
}
