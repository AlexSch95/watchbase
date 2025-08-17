CREATE DATABASE watchbase;
CREATE USER 'watchbase_user'@'localhost' IDENTIFIED BY 'bla1234';
GRANT ALL PRIVILEGES ON watchbase.* TO 'watchbase_user'@'localhost';
FLUSH PRIVILEGES;
USE watchbase;

-- Tabelle Filme erstellen
CREATE TABLE movies (
    movie_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    release_year YEAR NOT NULL,
    director VARCHAR(255) NOT NULL,
    short_description VARCHAR(1022) NOT NULL,
    trailer_url VARCHAR(255) NOT NULL,
    poster VARCHAR(255) NOT NULL,
    rating DECIMAL(3,1) NOT NULL
);

-- Tabelle für Genres und Genre zurodnung erstellen
CREATE TABLE genres (
    genre_id INT AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(255) NOT NULL
);
CREATE TABLE movies_with_genres (
    relation_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT NOT NULL,
    genre_id INT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

-- Tabelle für Schauspieler und filmzuordnung erstellen
CREATE TABLE actors (
    actor_id INT AUTO_INCREMENT PRIMARY KEY,
    actor_name VARCHAR(255) NOT NULL
);
CREATE TABLE movies_with_actors (
    relation_id INT AUTO_INCREMENT PRIMARY KEY,
    movie_id INT NOT NULL,
    actor_id INT NOT NULL,
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
    FOREIGN KEY (actor_id) REFERENCES actors(actor_id)
);

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(255) NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    twofactor_secret TEXT,
    twofactor_enabled BOOLEAN DEFAULT 0,
    administrator BOOLEAN DEFAULT 1,
    access_enabled BOOLEAN DEFAULT 1
);

CREATE TABLE user_movies (
    watchlist_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    movie_id INT NOT NULL,
    watched_status BOOLEAN,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);