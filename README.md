<p align="center">
    <img src="https://i.imgur.com/ZplQ9Sf.png" alt="Logo" height=72>
  <p align="center">
    Administrationstool für Watchbase
  </p>
</p>


## Inhaltsverzeichnis

- [Kurzbeschreibung](#kurzbeschreibung)
- [Tech-Stack](#tech-stack)
- [Installation & Setup](#installation--setup)
- [API-Endpunkte](#api-endpunkte)

## Kurzbeschreibung

Schaffe dir einen Überblick über Filme die du bereits gesehen hast oder nutze die Watchlist um den Filmeabend fürs Wochenende zu planen.

Eine Suche nach Titel oder Filtern nach Genre macht eine personalisierte Auswahl kinderleicht!

## Tech-Stack

![image](https://img.shields.io/badge/React-20232A?style=for-the-badge&logo=react&logoColor=61DAFB) ![image](https://img.shields.io/badge/MySQL-005C84?style=for-the-badge&logo=mysql&logoColor=white) ![image](https://img.shields.io/badge/Express%20js-000000?style=for-the-badge&logo=express&logoColor=white) ![image](https://img.shields.io/badge/JavaScript-323330?style=for-the-badge&logo=javascript&logoColor=F7DF1E) ![image](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)  ![image](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white) ![image](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white) ![image](https://img.shields.io/badge/JWT-000000?style=for-the-badge&logo=JSON%20web%20tokens&logoColor=white)

## Installation & Setup

1. Clone dir dieses Repository
2. Navigiere in den Ordner "backend" mit `cd backend`
3. führe `npm install` aus
4. Navigiere in den Ordner "backend/db-example-data" mit `cd db-example-data`
5. Melde dich am MySQL Dienst an via `mysql -u root -p`
6. Bestätige ohne ein Kennwort einzugeben
7. Lege die Datenbank und ihre Tabellen an mit: `source database-setup.sql`
8. Füge Beispieldaten in die Datenbank ein: `source example-data.sql`
9. Navigiere zurück in den Ordner "backend" mit `cd ..`
10. Starte das Backend mit `node backendprocess.js` oder `nodemon backendprocess.js`
11. Navigiere in den frontend-react Ordner
12. Installiere die Abhängigkeiten mit `npm install`
13. Starte das Frontend mit `npm run dev`

## API-Endpunkte
- GET-Routen
    - /api/movies: Lädt alle Filme die in der Datenbank vorhanden sind
    - /api/genres: Lädt alle Genres aus der Datenbank
    - /api/user: Prüft den Loginstatus
    - /api/movies/user: Lädt alle Filme auf der Watchlist eines Nutzers
    - /api/movies/user/all: Lädt alle Filme aus der Datenbank, inklusive des watched_status falls der Film auf der Watchlist ist
- POST-Routen
    - /api/users/login: Anmeldung
    - /api/users/register: Registrierung
    - /api/movies/user/add: Fügt Filme zur Userbezogenen Watchlist hinzu
- DELETE-Routen
    - /api/movies/user/delete: Löscht einen Film von der Watchlist


