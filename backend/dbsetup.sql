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

-- Beispieldaten in movies einfügen
INSERT INTO movies (title, release_year, director, short_description, trailer_url, poster, rating) VALUES
('Django Unchained', 2012, 'Quentin Tarantino', 'In 1858, a bounty-hunter named King Schultz seeks out a slave named Django and buys him because he needs him to find some men he is looking for. ...', 'https://www.youtube.com/embed/0RjoVdtE2nk', 'http://www.newdvdreleasedates.com/images/posters/large/django-unchained-2012-05.jpg', 8.5),
('Schindler''s List', 1993, 'Steven Spielberg', 'Oskar Schindler, a German industrialist and member of the Nazi party, tries to save his Jewish employees after witnessing the persecution of Jews...', 'https://www.youtube.com/embed/DxcSg6bL2Vg', 'https://image.tmdb.org/t/p/original/m0pV0fmMERzCvPVQbLLrPPLl5q1.jpg', 9.0),
('Fight Club', 1999, 'David Fincher', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much more...', 'https://www.youtube.com/embed/QW9wNFpLYiY', 'https://image.tmdb.org/t/p/original/8dR7Jd7DOEhU8cZ734Va17NRoZ2.jpg', 8.8),
('Scarface', 1983, 'Brian De Palma', 'In 1980 Miami, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.', 'https://www.youtube.com/embed/lU3EHVMkizc', 'https://www.wallpapersun.com/wp-content/uploads/2023/05/Scarface-Wallpapersun-uighf.jpg', 8.3),
('Saving Private Ryan', 1998, 'Steven Spielberg', 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper...', 'https://www.youtube.com/embed/ved8259bfBI', 'https://posterspy.com/wp-content/uploads/2019/10/Saving_private_ryan_poster_NEW.jpg', 8.6),
('Back to the Future', 1985, 'Robert Zemeckis', '''Back to the Future'' is a classic 1985 science fiction film where teenager Marty McFly is accidentally sent back in time from 1985 to 1955 in a time-traveling DeLorean...', 'https://www.youtube.com/watch?v=qvsgGtivCgs', 'https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p11991_p_v8_ap.jpg', 8.5);

-- Genres zur Genre tabelle hinzufügen
INSERT INTO genres (genre_name) VALUES
('Dark Comedy'),
('Epic'),
('Period Drama'),
('Western Epic'),
('Comedy'),
('Drama'),
('Western'),
('Biography'),
('History'),
('War'),
('Psychological Thriller'),
('Crime'),
('Thriller'),
('High-Concept Comedy'),
('Teen Adventure'),
('Time Travel'),
('Urban Adventure'),
('Adventure'),
('Sci-Fi');

-- genres zu filmen zuordnen
INSERT INTO movies_with_genres (movie_id, genre_id) VALUES
-- Django Unchained (id:1)
(1, 1),  -- Dark Comedy
(1, 2),  -- Epic
(1, 3),  -- Period Drama
(1, 4),  -- Western Epic
(1, 5),  -- Comedy
(1, 6),  -- Drama
(1, 7),  -- Western

-- Schindler's List (id:2)
(2, 8),  -- Biography
(2, 6),  -- Drama
(2, 9),  -- History
(2, 10), -- War

-- Fight Club (id:3)
(3, 6),  -- Drama
(3, 11), -- Psychological Thriller

-- Scarface (id:4)
(4, 12), -- Crime
(4, 6),  -- Drama
(4, 13), -- Thriller

-- Saving Private Ryan (id:5)
(5, 6),  -- Drama
(5, 10), -- War

-- Back to the Future (id:6)
(6, 14), -- High-Concept Comedy
(6, 15), -- Teen Adventure
(6, 16), -- Time Travel
(6, 17), -- Urban Adventure
(6, 18), -- Adventure
(6, 5),  -- Comedy
(6, 19); -- Sci-Fi

INSERT INTO actors (actor_name) VALUES
('Al Pacino'),
('Ben Kingsley'),
('Brad Pitt'),
('Christoph Waltz'),
('Christopher Lloyd'),
('Claudia Wells'),
('Crispin Glover'),
('Edward Norton'),
('Helena Bonham Carter'),
('Jamie Foxx'),
('Lea Thompson'),
('Leonardo DiCaprio'),
('Liam Neeson'),
('Matt Damon'),
('Michael J. Fox'),
('Michelle Pfeiffer'),
('Ralph Fiennes'),
('Steven Bauer'),
('Thomas F. Wilson'),
('Tom Hanks'),
('Tom Sizemore');


INSERT INTO movies_with_actors (movie_id, actor_id) VALUES
-- Django Unchained (movie_id = 1)
(1, 10),  -- Jamie Foxx
(1, 4),   -- Christoph Waltz
(1, 12),  -- Leonardo DiCaprio

-- Schindler's List (movie_id = 2)
(2, 13),  -- Liam Neeson
(2, 2),   -- Ben Kingsley
(2, 17),  -- Ralph Fiennes

-- Fight Club (movie_id = 3)
(3, 3),   -- Brad Pitt
(3, 8),   -- Edward Norton
(3, 9),   -- Helena Bonham Carter

-- Scarface (movie_id = 4)
(4, 1),   -- Al Pacino
(4, 16),  -- Michelle Pfeiffer
(4, 18),  -- Steven Bauer

-- Saving Private Ryan (movie_id = 5)
(5, 20),  -- Tom Hanks
(5, 14),  -- Matt Damon
(5, 21),  -- Tom Sizemore

-- Back to the Future (movie_id = 6)
(6, 15),  -- Michael J. Fox
(6, 5),   -- Christopher Lloyd
(6, 7),   -- Crispin Glover
(6, 11),  -- Lea Thompson
(6, 6),   -- Claudia Wells
(6, 19);  -- Thomas F. Wilson


SELECT 
    m.movie_id AS id,
    m.title,
    m.release_year AS year,
    m.director,
    m.rating,
    m.short_description AS shortDescription,
    m.poster,
    m.trailer_url AS trailer,
    GROUP_CONCAT(DISTINCT g.genre_name SEPARATOR ', ') AS genres,
    GROUP_CONCAT(DISTINCT a.actor_name SEPARATOR ', ') AS actors
FROM 
    movies m
LEFT JOIN movies_with_genres mg ON m.movie_id = mg.movie_id
LEFT JOIN genres g ON mg.genre_id = g.genre_id
LEFT JOIN movies_with_actors ma ON m.movie_id = ma.movie_id
LEFT JOIN actors a ON ma.actor_id = a.actor_id
GROUP BY 
    m.movie_id, m.title, m.release_year, m.director;