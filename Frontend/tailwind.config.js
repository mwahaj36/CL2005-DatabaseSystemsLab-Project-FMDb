/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./pages/**/*.{js,ts,jsx,tsx}",  // Scan all files in the pages directory
    "./components/**/*.{js,ts,jsx,tsx}",  // Scan components (if you have any)
  ],
  theme: {
    extend: {
      colors: {
        white: 'hsl(0, 0%, 96%)',
        purpleWhite: 'hsl(320, 34%, 93%)',
        purple: 'hsl(297.7358490566038, 21.372549019607842, 48.62385321100917)',
        darkPurple: 'hsl(267, 50.91%, 13.33%)',
        gold: 'hsl(45, 100%, 50%)',
        emeraldGreen: 'hsl(140, 52%, 55%)',

      }
    },
  },
  plugins: [],
}

