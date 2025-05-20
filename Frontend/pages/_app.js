import '@/styles/tailwind.css';
import '@/styles/globals.css';
import { AuthProvider } from '@/context/AuthContext';
import 'font-awesome/css/font-awesome.min.css';
import Head from 'next/head';

export default function App({ Component, pageProps }) {
  return (
    <>
      <Head>
        <link rel="icon" href="/LightOnDark.png" type="image/png" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <title>FMDb</title>
      </Head>
      <AuthProvider>
        <Component {...pageProps} />
      </AuthProvider>
    </>
  );
}
