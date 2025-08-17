-- Genres einfügen
INSERT INTO genres (genre_name) VALUES 
('Action'), ('Adventure'), ('Sci-Fi'), ('Drama'), ('Crime'), 
('Thriller'), ('Fantasy'), ('Comedy'), ('Horror'), ('Animation'), 
('Romance'), ('Mystery'), ('Biography'), ('History'), ('War'),
('Musical'), ('Western'), ('Film-Noir'), ('Family'), ('Sport');

-- Schauspieler einfügen
INSERT INTO actors (actor_name) VALUES
('Tom Hanks'), ('Leonardo DiCaprio'), ('Christian Bale'), ('Heath Ledger'), ('Robert Downey Jr.'),
('Scarlett Johansson'), ('Morgan Freeman'), ('Brad Pitt'), ('Edward Norton'), ('Keanu Reeves'),
('Hugh Jackman'), ('Joaquin Phoenix'), ('Matt Damon'), ('Al Pacino'), ('Meryl Streep'),
('Anne Hathaway'), ('Emma Watson'), ('Daniel Radcliffe'), ('Rupert Grint'), ('Gary Oldman'),
('Timothée Chalamet'), ('Zendaya'), ('Florence Pugh'), ('Austin Butler'), ('Ana de Armas'),
('Tom Hardy'), ('Cillian Murphy'), ('Margot Robbie'), ('Ryan Gosling'), ('Lady Gaga'),
('Adam Driver'), ('Jodie Comer'), ('Rami Malek'), ('John David Washington'), ('Lakeith Stanfield'),
('Daniel Kaluuya'), ('Steven Yeun'), ('Frances McDormand'), ('Anthony Hopkins'), ('Chadwick Boseman');

-- Filme einfügen
INSERT INTO movies (title, release_year, director, short_description, trailer_url, poster, rating) VALUES
('The Dark Knight', 2008, 'Christopher Nolan', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'https://www.youtube.com/embed/EXeTwQWrcwY', 'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_.jpg', 9.0),
('Inception', 2010, 'Christopher Nolan', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', 'https://www.youtube.com/embed/YoHD9XEInc0', 'https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_.jpg', 8.8),
('The Shawshank Redemption', 1994, 'Frank Darabont', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'https://www.youtube.com/embed/6hB3S9bIaco', 'https://m.media-amazon.com/images/M/MV5BNDE3ODcxYzMtY2YzZC00NmNlLWJiNDMtZDViZWM2MzIxZDYwXkEyXkFqcGdeQXVyNjAwNDUxODI@._V1_.jpg', 9.3),
('Pulp Fiction', 1994, 'Quentin Tarantino', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'https://www.youtube.com/embed/s7EdQ4FqbhY', 'https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 8.9),
('The Godfather', 1972, 'Francis Ford Coppola', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'https://www.youtube.com/embed/sY1S34973zA', 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 9.2),
('Fight Club', 1999, 'David Fincher', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.', 'https://www.youtube.com/embed/qtRKdVHc-cE', 'https://m.media-amazon.com/images/M/MV5BMmEzNTkxYjQtZTc0MC00YTVjLTg5ZTEtZWMwOWVlYzY0NWIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg', 8.8),
('Forrest Gump', 1994, 'Robert Zemeckis', 'The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other historical events unfold through the perspective of an Alabama man with an IQ of 75.', 'https://www.youtube.com/embed/bLvqoHBptjg', 'https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_.jpg', 8.8),
('The Matrix', 1999, 'Lana Wachowski, Lilly Wachowski', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 'https://www.youtube.com/embed/vKQi3bBA1y8', 'https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 8.7),
('Interstellar', 2014, 'Christopher Nolan', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity''s survival.', 'https://www.youtube.com/embed/zSWdZVtXT7E', 'https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 8.6),
('The Lord of the Rings: The Fellowship of the Ring', 2001, 'Peter Jackson', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', 'https://www.youtube.com/embed/V75dMMIW2B4', 'https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_.jpg', 8.8),
('Gladiator', 2000, 'Ridley Scott', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 'https://www.youtube.com/embed/owK1qxDselE', 'https://m.media-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 8.5),
('The Social Network', 2010, 'David Fincher', 'As Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, he is sued by the twins who claimed he stole their idea.', 'https://www.youtube.com/embed/lB95KLmpLR4', 'https://m.media-amazon.com/images/M/MV5BOGUyZDUxZjEtMmIzMC00MzlmLTg4MGItZWJmMzBhZjE0Mjc1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 7.7),
('Parasite', 2019, 'Bong Joon Ho', 'Greed and class discrimination threaten the newly formed symbiotic relationship between the wealthy Park family and the destitute Kim clan.', 'https://www.youtube.com/embed/5xH0HfJHsaY', 'https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_.jpg', 8.5),
('The Avengers', 2012, 'Joss Whedon', 'Earth''s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', 'https://www.youtube.com/embed/eOrNdBpGMv8', 'https://m.media-amazon.com/images/M/MV5BNDYxNjQyMjAtNTdiOS00NGYwLWFmNTAtNThmYjU5ZGI2YTI1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 8.0),
('Titanic', 1997, 'James Cameron', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 'https://www.youtube.com/embed/kVrqfYjkTdQ', 'https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_.jpg', 7.8),
('The Wolf of Wall Street', 2013, 'Martin Scorsese', 'Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.', 'https://www.youtube.com/embed/iszwuX1AK6A', 'https://m.media-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_.jpg', 8.2),
('La La Land', 2016, 'Damien Chazelle', 'While navigating their careers in Los Angeles, a pianist and an actress fall in love while attempting to reconcile their aspirations for the future.', 'https://www.youtube.com/embed/0pdqf4P9MB8', 'https://m.media-amazon.com/images/M/MV5BMzUzNDM2NzM2MV5BMl5BanBnXkFtZTgwNTM3NTg4OTE@._V1_.jpg', 8.0),
('Black Panther', 2018, 'Ryan Coogler', 'T''Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country''s past.', 'https://www.youtube.com/embed/xjDjIWPwcPU', 'https://m.media-amazon.com/images/M/MV5BMTg1MTY2MjYzNV5BMl5BanBnXkFtZTgwMTc4NTMwNDI@._V1_.jpg', 7.3),
('Dune', 2021, 'Denis Villeneuve', 'Feature adaptation of Frank Herbert''s science fiction novel about the son of a noble family entrusted with the protection of the most valuable asset and most vital element in the galaxy.', 'https://www.youtube.com/embed/n9xhJrPXop4', 'https://m.media-amazon.com/images/M/MV5BN2FjNmEyNWMtYzM0ZS00NjIyLTg5YzYtYThlMGVjNzE1OGViXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 8.0),
('Everything Everywhere All at Once', 2022, 'Daniel Kwan, Daniel Scheinert', 'A middle-aged Chinese immigrant is swept up into an insane adventure in which she alone can save existence by exploring other universes connecting with the lives she could have led.', 'https://www.youtube.com/embed/wxN1T1uxQ2g', 'https://m.media-amazon.com/images/M/MV5BYTdiOTIyZTQtNmQ1OS00NjZlLWIyMTgtYzk5Y2M3ZDVmMDk1XkEyXkFqcGdeQXVyMTAzMDg4NzU0._V1_.jpg', 8.1),
('No Country for Old Men', 2007, 'Coen Brothers', 'Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash near the Rio Grande.', 'https://www.youtube.com/embed/38A__WT3-o0', 'https://m.media-amazon.com/images/M/MV5BMjA5Njk3MjM4OV5BMl5BanBnXkFtZTcwMTc5MTE1MQ@@._V1_.jpg', 8.1),
('The Grand Budapest Hotel', 2014, 'Wes Anderson', 'A writer encounters the owner of an aging high-class hotel, who tells him of his early years serving as a lobby boy in the hotel\'s glorious years under an exceptional concierge.', 'https://www.youtube.com/embed/1Fg5iWmQjwk', 'https://m.media-amazon.com/images/M/MV5BMzM5NjUxOTEyMl5BMl5BanBnXkFtZTgwNjEyMDM0MDE@._V1_.jpg', 8.1),
('Whiplash', 2014, 'Damien Chazelle', 'A promising young drummer enrolls at a cut-throat music conservatory where his dreams of greatness are mentored by an instructor who will stop at nothing to realize a student\'s potential.', 'https://www.youtube.com/embed/7d_jQycdQGo', 'https://m.media-amazon.com/images/M/MV5BOTA5NDZlZGUtMjAxOS00YTRkLTkwYmMtYWQ0NWEwNDZiZTIxXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg', 8.5),
('Mad Max: Fury Road', 2015, 'George Miller', 'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search for her homeland with the aid of a group of female prisoners, a psychotic worshiper, and a drifter named Max.', 'https://www.youtube.com/embed/hEJnMQG9ev8', 'https://m.media-amazon.com/images/M/MV5BN2EwM2I5OWMtMGQyMi00Zjg1LWJkNTctZTdjYTA4OGUwZjMyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg', 8.1),
('The Revenant', 2015, 'Alejandro G. Iñárritu', 'A frontiersman on a fur trading expedition in the 1820s fights for survival after being mauled by a bear and left for dead by members of his own hunting team.', 'https://www.youtube.com/embed/LoebZZ8K5N0', 'https://m.media-amazon.com/images/M/MV5BMDE5OWMzM2QtOTU2ZS00NzAyLWI2MDEtOTRlYjIxZGM0OWRjXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg', 8.0),
('Arrival', 2016, 'Denis Villeneuve', 'A linguist works with the military to communicate with alien lifeforms after twelve mysterious spacecraft appear around the world.', 'https://www.youtube.com/embed/tFMo3UJ4B4g', 'https://m.media-amazon.com/images/M/MV5BMTExMzU0ODcxNDheQTJeQWpwZ15BbWU4MDE1OTI4MzAy._V1_.jpg', 7.9),
('Get Out', 2017, 'Jordan Peele', 'A young African-American visits his white girlfriends parents for the weekend, where his simmering uneasiness about their reception of him eventually reaches a boiling point.', 'https://www.youtube.com/embed/DzfpyUB60YY', 'https://m.media-amazon.com/images/M/MV5BMjUxMDQwNjcyNl5BMl5BanBnXkFtZTgwNzcwMzc0MTI@._V1_.jpg', 7.7),
('Joker', 2019, 'Todd Phillips', 'In Gotham City, mentally troubled comedian Arthur Fleck is disregarded and mistreated by society. He then embarks on a downward spiral of revolution and bloody crime.', 'https://www.youtube.com/embed/zAGVQLHvwOY', 'https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 8.4),
('Knives Out', 2019, 'Rian Johnson', 'A detective investigates the death of a patriarch of an eccentric, combative family.', 'https://www.youtube.com/embed/qGqiHJTsRkQ', 'https://m.media-amazon.com/images/M/MV5BMGUwZjliMTAtNzAxZi00MWNiLWE2NzgtZGUxMGQxZjhhNDRiXkEyXkFqcGdeQXVyNjU1NzU4MzE@._V1_.jpg', 7.9),
('1917', 2019, 'Sam Mendes', 'April 6th, 1917. As a regiment assembles to wage war deep in enemy territory, two soldiers are assigned to race against time and deliver a message that will stop 1,600 men from walking straight into a deadly trap.', 'https://www.youtube.com/embed/YqNYrYUiMfg', 'https://m.media-amazon.com/images/M/MV5BOTdmNTFjNDEtNzg0My00ZjkxLTg1ZDAtZTdkMDc2ZmFiNWQ1XkEyXkFqcGdeQXVyNTAzNzgwNTg@._V1_.jpg', 8.2),
('Nomadland', 2020, 'Chloé Zhao', 'A woman in her sixties embarks on a journey through the American West after losing everything during the recession.', 'https://www.youtube.com/embed/6sxCFZ8_d84', 'https://m.media-amazon.com/images/M/MV5BMDRiZWUxNmItNDU5Yy00ODNmLTk0M2ItZjQzZTA5OTJkZjkyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 7.3),
('The Father', 2020, 'Florian Zeller', 'A man refuses all assistance from his daughter as he ages and starts to doubt his loved ones, his own mind and even the fabric of his reality.', 'https://www.youtube.com/embed/4TZb7YfK-JI', 'https://m.media-amazon.com/images/M/MV5BZGJhNWRiOWQtMjI4OS00ZjcxLTgwMTAtMzQ2ODkxY2JkOTVlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg', 8.2),
('Dune: Part Two', 2024, 'Denis Villeneuve', 'Paul Atreides unites with Chani and the Fremen while seeking revenge against the conspirators who destroyed his family.', 'https://www.youtube.com/embed/U2Qp5pL3ovA', 'https://m.media-amazon.com/images/M/MV5BZTczY2M2NzItNDBlMi00MGM5LTg1NDAtODlhM2YxYjI1OTVlXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_.jpg', 8.7),
('Oppenheimer', 2023, 'Christopher Nolan', 'The story of American scientist J. Robert Oppenheimer and his role in the development of the atomic bomb.', 'https://www.youtube.com/embed/uYPbbksJxIg', 'https://m.media-amazon.com/images/M/MV5BMDBmYTZjNjUtN2M1MS00MTQ2LTk2ODgtNzc2M2QyZGE5NTVjXkEyXkFqcGdeQXVyNzAwMjU2MTY@._V1_.jpg', 8.5),
('The Batman', 2022, 'Matt Reeves', 'When a sadistic serial killer begins murdering key political figures in Gotham, Batman is forced to investigate the city\'s hidden corruption.', 'https://www.youtube.com/embed/mqqft2x_Aa4', 'https://m.media-amazon.com/images/M/MV5BMDdmMTBiNTYtMDIzNi00NGVlLWIzMDYtZTk3MTQ3NGQxZGEwXkEyXkFqcGdeQXVyMzMwOTU5MDk@._V1_.jpg', 7.8),
('Top Gun: Maverick', 2022, 'Joseph Kosinski', 'After thirty years, Maverick is still pushing the envelope as a top naval aviator, but must confront ghosts of his past when he leads TOP GUN\'s elite graduates.', 'https://www.youtube.com/embed/giXco2jaZ_4', 'https://m.media-amazon.com/images/M/MV5BZWYzOGEwNTgtNWU3NS00ZTQ0LWJkODUtMmVhMjIwMjA1ZmQwXkEyXkFqcGdeQXVyMjkwOTAyMDU@._V1_.jpg', 8.3),
('Everything Everywhere All at Once', 2022, 'Daniel Kwan, Daniel Scheinert', 'A middle-aged Chinese immigrant is swept up into an insane adventure in which she alone can save existence by exploring other universes.', 'https://www.youtube.com/embed/wxN1T1uxQ2g', 'https://m.media-amazon.com/images/M/MV5BYTdiOTIyZTQtNmQ1OS00NjZlLWIyMTgtYzk5Y2M3ZDVmMDk1XkEyXkFqcGdeQXVyMTAzMDg4NzU0._V1_.jpg', 8.1),
('Barbie', 2023, 'Greta Gerwig', 'Barbie suffers a crisis that leads her to question her world and her existence.', 'https://www.youtube.com/embed/pBk4NYhWNMM', 'https://m.media-amazon.com/images/M/MV5BNjU3N2QxNzYtMjk1NC00MTc4LTk1NTQtMmUxNTljM2I0NDA5XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_.jpg', 6.9),
('Killers of the Flower Moon', 2023, 'Martin Scorsese', 'When oil is discovered in 1920s Oklahoma under Osage Nation land, the Osage people are murdered one by one.', 'https://www.youtube.com/embed/EP34Yoxs3FQ', 'https://m.media-amazon.com/images/M/MV5BZTZlMjUxNGQtYTA4MC00ZjlkLWI3YWEtYzQ0YTAwYjRmYzJjXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_.jpg', 7.7),
('Poor Things', 2023, 'Yorgos Lanthimos', 'The incredible tale of the fantastical evolution of Bella Baxter, a young woman brought back to life by the brilliant and unorthodox scientist Dr. Godwin Baxter.', 'https://www.youtube.com/embed/RlbR5N6veqw', 'https://m.media-amazon.com/images/M/MV5BNGIyYWMzNjktNDE3MC00YWQyLWEyMmEtOTUwNDM5YjJmYThjXkEyXkFqcGdeQXVyMTUzMTg2ODkz._V1_.jpg', 8.4);

-- Genre-Zuordnungen
INSERT INTO movies_with_genres (movie_id, genre_id) VALUES
(1, 1), (1, 4), (1, 6),  -- The Dark Knight: Action, Drama, Thriller
(2, 1), (2, 3), (2, 4),  -- Inception: Action, Sci-Fi, Drama
(3, 4), (3, 5),          -- Shawshank: Drama, Crime
(4, 4), (4, 5), (4, 6),  -- Pulp Fiction: Drama, Crime, Thriller
(5, 4), (5, 5),          -- Godfather: Drama, Crime
(6, 1), (6, 4), (6, 6),  -- Fight Club: Action, Drama, Thriller
(7, 4), (7, 12),         -- Forrest Gump: Drama, Romance
(8, 1), (8, 3), (8, 7),  -- Matrix: Action, Sci-Fi, Fantasy
(9, 2), (9, 3), (9, 4),  -- Interstellar: Adventure, Sci-Fi, Drama
(10, 2), (10, 7), (10, 1), -- LOTR: Adventure, Fantasy, Action
(11, 1), (11, 2), (11, 14), -- Gladiator: Action, Adventure, History
(12, 4), (12, 13),       -- Social Network: Drama, Biography
(13, 4), (13, 8), (13, 6), -- Parasite: Drama, Comedy, Thriller
(14, 1), (14, 2), (14, 3), -- Avengers: Action, Adventure, Sci-Fi
(15, 4), (15, 12), (15, 14), -- Titanic: Drama, Romance, History
(16, 4), (16, 5), (16, 13), -- Wolf of Wall Street: Drama, Crime, Biography
(17, 4), (17, 8), (17, 12), -- La La Land: Drama, Comedy, Romance
(18, 1), (18, 2), (18, 3),  -- Black Panther: Action, Adventure, Sci-Fi
(19, 2), (19, 3), (19, 7),  -- Dune: Adventure, Sci-Fi, Fantasy
(20, 1), (20, 3), (20, 7),  -- Everything Everywhere: Action, Sci-Fi, Fantasy
(21, 5), (21, 6), (21, 4),    -- No Country: Crime, Thriller, Drama
(22, 8), (22, 4), (22, 12),   -- Grand Budapest: Comedy, Drama, Mystery
(23, 4), (23, 15),            -- Whiplash: Drama, Music
(24, 1), (24, 2), (24, 3),    -- Mad Max: Action, Adventure, Sci-Fi
(25, 2), (25, 4), (25, 14),   -- Revenant: Adventure, Drama, History
(26, 3), (26, 4), (26, 12),   -- Arrival: Sci-Fi, Drama, Mystery
(27, 6), (27, 9), (27, 12),   -- Get Out: Thriller, Horror, Mystery
(28, 4), (28, 5), (28, 6),    -- Joker: Drama, Crime, Thriller
(29, 5), (29, 6), (29, 8),    -- Knives Out: Crime, Thriller, Comedy
(30, 1), (30, 4), (30, 14),   -- 1917: Action, Drama, War
(31, 4),                       -- Nomadland: Drama
(32, 4), (32, 12),             -- The Father: Drama, Mystery
(33, 2), (33, 3), (33, 7),    -- Dune 2: Adventure, Sci-Fi, Fantasy
(34, 4), (34, 13), (34, 14),  -- Oppenheimer: Drama, Biography, History
(35, 1), (35, 5), (35, 6),    -- The Batman: Action, Crime, Thriller
(36, 1), (36, 2), (36, 4),    -- Top Gun: Action, Adventure, Drama
(37, 1), (37, 3), (37, 7),    -- Everything Everywhere: Action, Sci-Fi, Fantasy
(38, 2), (38, 8), (38, 11),   -- Barbie: Adventure, Comedy, Romance
(39, 4), (39, 5), (39, 14),   -- Killers: Drama, Crime, History
(40, 4), (40, 7), (40, 11);   -- Poor Things: Drama, Fantasy, Romance

-- Schauspieler-Zuordnungen
INSERT INTO movies_with_actors (movie_id, actor_id) VALUES
(1, 3), (1, 4), (1, 7),    -- Dark Knight: Bale, Ledger, Freeman
(2, 2), (2, 13), (2, 15),  -- Inception: DiCaprio, Damon, Hardy
(3, 1), (3, 7),            -- Shawshank: Hanks, Freeman
(4, 8), (4, 9), (4, 14),   -- Pulp Fiction: Pitt, Norton, Travolta
(5, 14), (5, 1),           -- Godfather: Pacino, Brando
(6, 8), (6, 9),            -- Fight Club: Pitt, Norton
(7, 1),                    -- Forrest Gump: Hanks
(8, 10), (8, 7),           -- Matrix: Reeves, Fishburne
(9, 2), (9, 13), (9, 16),  -- Interstellar: McConaughey, Chastain, Hathaway
(10, 11), (10, 18),        -- LOTR: McKellen, Wood
(11, 8), (11, 20),         -- Gladiator: Crowe, Phoenix
(12, 2), (12, 13),         -- Social Network: Eisenberg, Garfield
(13, 12),                  -- Parasite: Song Kang-ho
(14, 5), (14, 6),          -- Avengers: Downey Jr., Johansson
(15, 2), (15, 6),          -- Titanic: DiCaprio, Winslet
(16, 2), (16, 8),          -- Wolf: DiCaprio, Hill
(17, 5), (17, 16),         -- La La Land: Gosling, Stone
(18, 6), (18, 20),         -- Black Panther: Boseman, Jordan
(19, 2), (19, 6),          -- Dune: Chalamet, Zendaya
(20, 5), (20, 16),         -- Everything Everywhere: Yeoh, Curtis
(21, 8), (21, 20),             -- No Country: Brolin, Bardem
(22, 18), (22, 19),            -- Grand Budapest: Norton, Fiennes
(23, 16), (23, 17),            -- Whiplash: Teller, Simmons
(24, 6), (24, 8),              -- Mad Max: Theron, Hardy
(25, 2), (25, 8),              -- Revenant: DiCaprio, Hardy
(26, 14), (26, 15),            -- Arrival: Adams, Renner
(27, 16), (27, 17),            -- Get Out: Kaluuya, Williams
(28, 12), (28, 13),            -- Joker: Phoenix, De Niro
(29, 5), (29, 14), (29, 18),   -- Knives Out: Craig, Evans, Curtis
(30, 21), (30, 22),            -- 1917: Chapman, MacKay
(31, 23),                       -- Nomadland: McDormand
(32, 19), (32, 24),             -- The Father: Hopkins, Colman
(33, 25), (33, 26),             -- Dune 2: Chalamet, Zendaya
(34, 3), (34, 7), (34, 27),     -- Oppenheimer: Murphy, Damon, Blunt
(35, 28), (35, 29),             -- The Batman: Pattinson, Kravitz
(36, 5), (36, 30),              -- Top Gun: Cruise, Teller
(37, 31), (37, 32),             -- Everything Everywhere: Yeoh, Quan
(38, 33), (38, 34),             -- Barbie: Robbie, Gosling
(39, 2), (39, 8), (39, 35),     -- Killers: DiCaprio, De Niro, Gladstone
(40, 33), (40, 36), (40, 37);   -- Poor Things: Stone, Ruffalo, Dafoe


INSERT INTO users (user_id, user_name, password_hash, twofactor_secret, twofactor_enabled, administrator, access_enabled) VALUES
(1, 'admin', '$2b$10$RMNdw7PdvdnDvnzEUUUp0O8D2oUSzfqdz9ArNLFDks0c.9nVHiuHO', '', 0, 1, 1),
(2, 'admin-2fa', '$2b$10$mQUT1KnoIoslDG1QcBIVC.1nW3qk7j.O2UJQWGH4B2Nw76wkRCKzi', 'H5YGI32TKFRW6TSWIE3E6WBSEYWHILD2KVGG6Y2DM5GFU4RDKBJQ', 1, 1, 1),
(3, 'user', '$2b$10$1g/t/mLCKB9lTEKXolXkwuVnyBLyb/PzU4wokPEXNj8HEKWi.YXqS', 'GB2XQOTUGRREGQZFHF6S4VJKJ5CCY2CUNZVVIILJJM4FG6JQG47A', 1, 0, 0);

-- beispiel watchlist
INSERT INTO user_movies (watchlist_id, user_id, movie_id, watched_status) VALUES
(1, 3, 1, TRUE),
(2, 3, 2, TRUE),
(3, 3, 4, FALSE),
(4, 3, 3, FALSE),
(5, 3, 5, TRUE),
(6, 3, 6, TRUE),
(7, 3, 7, FALSE);
