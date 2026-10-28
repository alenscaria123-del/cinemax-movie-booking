# CINEMAX — Movie Booking App

## Run on Windows
1. Extract the entire ZIP.
2. Open the extracted `Cinemax` folder in VS Code (the folder that contains `run.bat`).
3. Open Terminal → New Terminal.
4. Run `.un.bat`
5. On first run, internet is required to download the SQLite JDBC driver. Keep the app running in one window only.

Requires JDK 17+ (your Java 21 is fine).

## Demo admin
- Username: `admin`
- Password: `admin123`

## Features
- Dark, vibrant Swing interface with high-contrast colored buttons and input fields
- Register/login
- Local poster artwork for 12 sample films
- Search by title, language, or genre
- Movie booking, showtimes, seat selection, price calculation
- Booking history and cancellation
- Admin Studio to add movies and view all bookings
- SQLite local persistence, WAL mode, 8-second busy timeout, and short-lived connections to reduce database locking

## Database safety
Your booking database is stored in `data/cinemax.db`. Do not delete this file if you need to preserve bookings. Run one instance of the app at a time. Sample poster art is original concept art, not official movie posters.
