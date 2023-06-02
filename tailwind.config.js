// @type {import('tailwindcss').Config}
const colors = require("tailwindcss/colors");
module.exports = {
    darkMode: "class",
    content: [
        "./resources/**/*.blade.php",
        "./resources/**/*.js",
        "./resources/**/*.vue",
    ],
    theme: {
        extend: {
            screens: {
                sm: "640px",
                md: "768px",
                lg: "1024px",
                xl: "1280px",
                "2xl": "1536px",
            },
            fontFamily: {
                sans: ["Inter", "sans-serif"],
            },
            fontSize: {
                sm: ["14px", "20px"],
                base: ["16px", "24px"],
                lg: ["20px", "28px"],
                xl: ["24px", "32px"],
            },
            colors: {
                transparent: "transparent",
                current: "currentColor",
                black: colors.black,
                white: colors.white,
                rose: colors.rose,
                pink: colors.pink,
                fuchsia: colors.fuchsia,
                purple: colors.purple,
                violet: colors.violet,
                indigo: colors.indigo,
                blue: colors.blue,
                lightBlue: colors.sky,
                sky: colors.sky,
                cyan: colors.cyan,
                teal: colors.teal,
                emerald: colors.emerald,
                green: colors.green,
                lime: colors.lime,
                yellow: colors.yellow,
                amber: colors.amber,
                orange: colors.orange,
                red: colors.red,
                slate: colors.slate,
                zinc: colors.zinc,
                gray: colors.gray,
                neutral: colors.slate,
                stone: colors.stone,
            },
        },
    },
    plugins: [
        require("@tailwindcss/typography"),
        require("@tailwindcss/forms"),
    ],
};
