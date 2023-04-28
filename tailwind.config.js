/** @type {import('tailwindcss').Config} */

module.exports = {
    content: [
        "./resources/**/*.blade.php",
        "./resources/**/*.js",
        "./resources/**/*.vue",
    ],
    theme: {
        extend: {
            fontSize: {
                sm: ["14px", "20px"],
                base: ["16px", "24px"],
                lg: ["20px", "28px"],
                xl: ["24px", "32px"],
            },
        },
    },
    plugins: [require("@tailwindcss/typography")],
};
