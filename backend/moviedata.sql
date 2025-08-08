-- ===================================================================================
--  Beispieldaten für 100 weitere Filme
-- ===================================================================================

-- -----------------------------------------------------
--  Filme zur Tabelle 'movies' hinzufügen
-- -----------------------------------------------------

INSERT INTO movies (title, release_year, director, short_description, trailer_url, poster, rating) VALUES
('Django Unchained', 2012, 'Quentin Tarantino', 'In 1858, a bounty-hunter named King Schultz seeks out a slave named Django and buys him because he needs him to find some men he is looking for. ...', 'https://www.youtube.com/embed/0RjoVdtE2nk', 'http://www.newdvdreleasedates.com/images/posters/large/django-unchained-2012-05.jpg', 8.5),
('Schindler''s List', 1993, 'Steven Spielberg', 'Oskar Schindler, a German industrialist and member of the Nazi party, tries to save his Jewish employees after witnessing the persecution of Jews...', 'https://www.youtube.com/embed/DxcSg6bL2Vg', 'https://image.tmdb.org/t/p/original/m0pV0fmMERzCvPVQbLLrPPLl5q1.jpg', 9.0),
('Fight Club', 1999, 'David Fincher', 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much more...', 'https://www.youtube.com/embed/QW9wNFpLYiY', 'https://image.tmdb.org/t/p/original/8dR7Jd7DOEhU8cZ734Va17NRoZ2.jpg', 8.8),
('Scarface', 1983, 'Brian De Palma', 'In 1980 Miami, a determined Cuban immigrant takes over a drug cartel and succumbs to greed.', 'https://www.youtube.com/embed/lU3EHVMkizc', 'https://www.wallpapersun.com/wp-content/uploads/2023/05/Scarface-Wallpapersun-uighf.jpg', 8.3),
('Saving Private Ryan', 1998, 'Steven Spielberg', 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper...', 'https://www.youtube.com/embed/ved8259bfBI', 'https://posterspy.com/wp-content/uploads/2019/10/Saving_private_ryan_poster_NEW.jpg', 8.6),
('Back to the Future', 1985, 'Robert Zemeckis', '''Back to the Future'' is a classic 1985 science fiction film where teenager Marty McFly is accidentally sent back in time from 1985 to 1955 in a time-traveling DeLorean...', 'https://www.youtube.com/watch?v=qvsgGtivCgs', 'https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p11991_p_v8_ap.jpg', 8.5);
('The Matrix', 1999, 'Lana Wachowski, Lilly Wachowski', 'A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.', 'https://www.youtube.com/embed/vKQi3bBA1y8', 'https://image.tmdb.org/t/p/original/f89Jxw_tW3exveaFAnCvIOt9yv8.jpg', 8.7),
('The Dark Knight', 2008, 'Christopher Nolan', 'When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.', 'https://www.youtube.com/embed/EXeTwQWrcwY', 'https://image.tmdb.org/t/p/original/qJ2tW6WMUDux911r6m7haRef0WH.jpg', 9.0),
('Inception', 2010, 'Christopher Nolan', 'A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.', 'https://www.youtube.com/embed/YoHD9XEInc0', 'https://image.tmdb.org/t/p/original/9gk7adHYeDvHkCKDyf1GHdTLtiL.jpg', 8.8),
('The Lord of the Rings: The Return of the King', 2003, 'Peter Jackson', 'Gandalf and Aragorn lead the World of Men against Sauron''s army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.', 'https://www.youtube.com/embed/r5X-hFf6Bwo', 'https://image.tmdb.org/t/p/original/rCzpDGLbOoPwLjy3OAm5NUPOTrC.jpg', 9.0),
('Pulp Fiction', 1994, 'Quentin Tarantino', 'The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.', 'https://www.youtube.com/embed/s7EdQ4FqbhY', 'https://image.tmdb.org/t/p/original/d5iIlFn5s0ImszYzBPb8JPIfbXD.jpg', 8.9),
('Forrest Gump', 1994, 'Robert Zemeckis', 'The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75.', 'https://www.youtube.com/embed/bLvqoHBptjg', 'https://image.tmdb.org/t/p/original/arw2vcBveWOVZr6pxd9XTd1TdQa.jpg', 8.8),
('The Lord of the Rings: The Fellowship of the Ring', 2001, 'Peter Jackson', 'A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.', 'https://www.youtube.com/embed/V75dMMIW2B4', 'https://image.tmdb.org/t/p/original/6oom5QYQ2yQTMJIbnvbkBL9cHo6.jpg', 8.8),
('The Lord of the Rings: The Two Towers', 2002, 'Peter Jackson', 'While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron''s new ally, Saruman, and his hordes of Isengard.', 'https://www.youtube.com/embed/hYcw5ksV8YQ', 'https://image.tmdb.org/t/p/original/5VTN0pR8gcqV3EPUHHfMGnJYN9L.jpg', 8.8),
('Star Wars: Episode V - The Empire Strikes Back', 1980, 'Irvin Kershner', 'After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued across the galaxy by Darth Vader.', 'https://www.youtube.com/embed/JNwNXF9Y6kY', 'https://image.tmdb.org/t/p/original/2l05cFWJacyIsi0d2sI3A2d3a44.jpg', 8.7),
('Terminator 2: Judgment Day', 1991, 'James Cameron', 'A cyborg, identical to the one who failed to kill Sarah Connor, must now protect her teenage son, John Connor, from a more advanced and powerful cyborg.', 'https://www.youtube.com/embed/CRRlbK5w8AE', 'https://image.tmdb.org/t/p/original/5MdeLMWj2en1bGDs0L1nKkM4I7C.jpg', 8.6),
('The Silence of the Lambs', 1991, 'Jonathan Demme', 'A young F.B.I. cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.', 'https://www.youtube.com/embed/W6Mm8Sbe__o', 'https://image.tmdb.org/t/p/original/uS9m8fnpkNdkC6G3ikz0NlS0W0h.jpg', 8.6),
('Léon: The Professional', 1994, 'Luc Besson', '12-year-old Mathilda is reluctantly taken in by Léon, a professional assassin, after her family is murdered. An unusual relationship forms as she becomes his protégée.', 'https://www.youtube.com/embed/jawVxq1Iyl0', 'https://image.tmdb.org/t/p/original/gGNw0AAYAy9eXdVd2hBf0u9c5S3.jpg', 8.5),
('Gladiator', 2000, 'Ridley Scott', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 'https://www.youtube.com/embed/owK1qxDselE', 'https://image.tmdb.org/t/p/original/ty8TGRuvJLPUmAR1H1nRIsgwvim.jpg', 8.5),
('The Departed', 2006, 'Martin Scorsese', 'An undercover cop and a mole in the police attempt to identify each other while infiltrating an Irish gang in South Boston.', 'https://www.youtube.com/embed/iojhsd_oG0w', 'https://image.tmdb.org/t/p/original/kWWAt2OT0H4p2d3d0T5LhB7s71j.jpg', 8.5),
('The Prestige', 2006, 'Christopher Nolan', 'After a tragic accident, two stage magicians in 1890s London engage in a battle to create the ultimate illusion while sacrificing everything they have to outwit each other.', 'https://www.youtube.com/embed/o4gHCmTQDgA', 'https://image.tmdb.org/t/p/original/tRNlZbgNCNOpLpbPEz5L8G8A0JN.jpg', 8.5),
('Alien', 1979, 'Ridley Scott', 'The crew of a commercial spacecraft encounter a deadly lifeform after investigating an unknown transmission.', 'https://www.youtube.com/embed/jQ5lPt9edzQ', 'https://image.tmdb.org/t/p/original/vfrQk5IPloGg1v9Rzbh2Eg3VGyM.jpg', 8.5),
('Aliens', 1986, 'James Cameron', 'Ellen Ripley is rescued by a deep salvage team after being in hypersleep for 57 years. The moon that the Nostromo visited has been colonized, but contact is lost. This time, colonial marines have impressive firepower, but will that be enough?', 'https://www.youtube.com/embed/XKSQmYUaIyE', 'https://image.tmdb.org/t/p/original/r1x5JGpyqZU8PYhbs4Ucr2Qvy9K.jpg', 8.4),
('Blade Runner', 1982, 'Ridley Scott', 'A blade runner must pursue and terminate four replicants who stole a ship in space and have returned to Earth to find their creator.', 'https://www.youtube.com/embed/eogpIG53Cis', 'https://image.tmdb.org/t/p/original/63N9uy8nd9j7Eog2axPQ8lbr3Wj.jpg', 8.1),
('Die Hard', 1988, 'John McTiernan', 'An NYPD officer tries to save his wife and several others taken hostage by German terrorists during a Christmas party at the Nakatomi Plaza in Los Angeles.', 'https://www.youtube.com/embed/jaJuwKCmJbY', 'https://image.tmdb.org/t/p/original/yFihWxQcmqcaBR31QM6Y8gT6aYV.jpg', 8.2),
('Mad Max: Fury Road', 2015, 'George Miller', 'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler in search for her homeland with the help of a group of female prisoners, a psychotic worshiper, and a drifter named Max.', 'https://www.youtube.com/embed/hEJnMQG9ev8', 'https://image.tmdb.org/t/p/original/8tZYtuWezp8JbcsvHYO0O46tFbo.jpg', 8.1),
('Jurassic Park', 1993, 'Steven Spielberg', 'A pragmatic paleontologist visiting an almost complete theme park is tasked with protecting a couple of kids after a power failure causes the park''s cloned dinosaurs to run loose.', 'https://www.youtube.com/embed/lc0UehYemQA', 'https://image.tmdb.org/t/p/original/oU7Oq2kFAAlGqbU4VoAE36g4hoI.jpg', 8.2),
('Blade Runner 2049', 2017, 'Denis Villeneuve', 'Young Blade Runner K''s discovery of a long-buried secret leads him to track down former Blade Runner Rick Deckard, who''s been missing for thirty years.', 'https://www.youtube.com/embed/gCcx85zbxz4', 'https://image.tmdb.org/t/p/original/gajva2L0rPYkEWjzgFlBXCAVBE5.jpg', 8.0),
('The Terminator', 1984, 'James Cameron', 'A human soldier is sent from 2029 to 1984 to stop an almost indestructible cyborg killing machine, sent from the same year, which has been programmed to execute a young woman whose unborn son is the key to humanity''s future salvation.', 'https://www.youtube.com/embed/k64P4l2Wmeg', 'https://image.tmdb.org/t/p/original/qvktm0BHnZlDb23dflTuXyfaR04.jpg', 8.1),
('Predator', 1987, 'John McTiernan', 'A team of commandos on a mission in a Central American jungle find themselves hunted by an extraterrestrial warrior.', 'https://www.youtube.com/embed/Y1txEAywdiw', 'https://image.tmdb.org/t/p/original/k3mW4qHjbnbbsd_i4C2p83B3s65.jpg', 7.8),
('Total Recall', 1990, 'Paul Verhoeven', 'When a man goes for virtual vacation memories of the planet Mars, an unexpected and harrowing series of events forces him to go to the planet for real - or does he?', 'https://www.youtube.com/embed/WFrm1blp_aI', 'https://image.tmdb.org/t/p/original/bIuOWTty018M0pS3fn2d1i1z4p4.jpg', 7.5),
('RoboCop', 1987, 'Paul Verhoeven', 'In a dystopic and crime-ridden Detroit, a terminally wounded cop returns to the force as a powerful cyborg haunted by submerged memories.', 'https://www.youtube.com/embed/6tC_5wI60i0', 'https://image.tmdb.org/t/p/original/h84N3Xb0fXw1yD2BuaA32w6xJwx.jpg', 7.6),
('The Fifth Element', 1997, 'Luc Besson', 'In the colorful future, a cab driver unwittingly becomes the central figure in the search for a legendary cosmic weapon to keep Evil and Mr. Zorg at bay.', 'https://www.youtube.com/embed/fQ9RqgcR24g', 'https://image.tmdb.org/t/p/original/fP2ffdvCxFyP2PyI9GycdBq1tYj.jpg', 7.6),
('Starship Troopers', 1997, 'Paul Verhoeven', 'Humans in a fascist, militaristic future wage war with giant alien bugs.', 'https://www.youtube.com/embed/Y07I_KER5fA', 'https://image.tmdb.org/t/p/original/cxC51yXg94i1K3g3I6Gq5xH2PZE.jpg', 7.3),
('John Wick', 2014, 'Chad Stahelski', 'An ex-hitman comes out of retirement to track down the gangsters that took everything from him.', 'https://www.youtube.com/embed/C0BMx-qxsP4', 'https://image.tmdb.org/t/p/original/nCzzQKG84VicZlEw212uYpafGqr.jpg', 7.4),
('Casino Royale', 2006, 'Martin Campbell', 'After earning 00 status, James Bond sets out on his first mission as 007. Bond must defeat a private banker funding terrorists in a high-stakes game of poker at Casino Royale, Montenegro.', 'https://www.youtube.com/embed/36mnx8dBbGE', 'https://image.tmdb.org/t/p/original/kAY5rJu3FF1e3h2pyl0i5pZIKIp.jpg', 8.0),
('Skyfall', 2012, 'Sam Mendes', 'James Bond''s loyalty to M is tested when her past comes back to haunt her. When MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost.', 'https://www.youtube.com/embed/6kw1UVovByw', 'https://image.tmdb.org/t/p/original/hAY51dSS15a3x52xT2I8TqC2hAh.jpg', 7.8),
('Heat', 1995, 'Michael Mann', 'A group of high-end professional thieves start to feel the heat from the LAPD when they unknowingly leave a clue at their latest heist.', 'https://www.youtube.com/embed/2GfZl4kuVNI', 'https://image.tmdb.org/t/p/original/2uQ1hVp2I0LCNP2sT2j9cWlZcR2.jpg', 8.3),
('L.A. Confidential', 1997, 'Curtis Hanson', 'As corruption grows in 1950s Los Angeles, three policemen - one strait-laced, one brutal, and one sleazy - investigate a series of murders with their own brand of justice.', 'https://www.youtube.com/embed/5qU0v6xM72c', 'https://image.tmdb.org/t/p/original/2rnqXE26Q0iDBsPAdt2oA2yH9xV.jpg', 8.2),
('No Country for Old Men', 2007, 'Joel Coen, Ethan Coen', 'Violence and mayhem ensue after a hunter stumbles upon a drug deal gone wrong and more than two million dollars in cash near the Rio Grande.', 'https://www.youtube.com/embed/38A__WT3-o0', 'https://image.tmdb.org/t/p/original/6d5XOczc2iYarY6pLd2c9a1aRch.jpg', 8.2),
('The Fugitive', 1993, 'Andrew Davis', 'Dr. Richard Kimble, unjustly accused of murdering his wife, must find the real killer while being the target of a nationwide manhunt led by a seasoned U.S. Marshal.', 'https://www.youtube.com/embed/d6K92m_S46E', 'https://image.tmdb.org/t/p/original/8V3dl3T8iGZNk2G2ffp9aA6n4ae.jpg', 7.8),
('The Rock', 1996, 'Michael Bay', 'A mild-mannered chemist and an ex-con must lead the counterstrike when a rogue group of military men, led by a disgruntled general, threaten a nerve gas attack from Alcatraz against San Francisco.', 'https://www.youtube.com/embed/313n0wga2xo', 'https://image.tmdb.org/t/p/original/t28nWRyiS5n7Jot9r2n2aD52aKy.jpg', 7.4),
('Con Air', 1997, 'Simon West', 'Newly paroled ex-con and former U.S. Ranger Cameron Poe finds himself trapped in a prisoner transport plane when the passengers seize control.', 'https://www.youtube.com/embed/ZmJ0HXIYm5s', 'https://image.tmdb.org/t/p/original/y4aLwS4n4s5i2cw22eHUGg4fll.jpg', 6.9),
('Face/Off', 1997, 'John Woo', 'In order to foil a terrorist plot, an FBI agent undergoes facial transplant surgery to assume the identity of the criminal mastermind who murdered his only son, but the criminal awakes from a coma and seeks revenge.', 'https://www.youtube.com/embed/95V72gGStas', 'https://image.tmdb.org/t/p/original/p3w5WqGz02sLd2T3vbr1sBSy2sL.jpg', 7.3),
('Mission: Impossible', 1996, 'Brian De Palma', 'An American agent, under false suspicion of disloyalty, must discover and expose the real spy without the help of his organization.', 'https://www.youtube.com/embed/ohF-9i2dG8A', 'https://image.tmdb.org/t/p/original/1QP642B5sHj2b4oY2nIW61hHjIA.jpg', 7.1),
('Mission: Impossible - Ghost Protocol', 2011, 'Brad Bird', 'The IMF is shut down when it''s implicated in the bombing of the Kremlin, causing Ethan Hunt and his new team to go rogue to clear their organization''s name.', 'https://www.youtube.com/embed/EDGYVFZxsXQ', 'https://image.tmdb.org/t/p/original/s58mGZEE99gP7S2U4j6E3YcT5a5.jpg', 7.4),
('GoldenEye', 1995, 'Martin Campbell', 'Years after a friend and fellow 00 agent is killed on a joint mission, a secret space based weapons program known as ''GoldenEye'' is stolen. James Bond sets out to stop a Russian crime syndicate from using the weapon.', 'https://www.youtube.com/embed/dgQ3i_V4y-c', 'https://image.tmdb.org/t/p/original/z02sY2E2K2i5gVlqKpvv26m2QyD.jpg', 7.2),
('The Bourne Identity', 2002, 'Doug Liman', 'A man is picked up by a fishing boat, bullet-riddled and suffering from amnesia, before racing to elude assassins and attempting to regain his memory.', 'https://www.youtube.com/embed/FpKaB5dvQ4g', 'https://image.tmdb.org/t/p/original/gN2Tjod0QCoXhTpv24G4L9a2jX.jpg', 7.9),
('The Bourne Ultimatum', 2007, 'Paul Greengrass', 'Jason Bourne dodges a ruthless C.I.A. official and his agents from a new assassination program while searching for the origins of his life as a trained killer.', 'https://www.youtube.com/embed/u1Qo6-eGk_0', 'https://image.tmdb.org/t/p/original/89hP2t2239N02o2kZJ5i4qI4cqc.jpg', 8.0),
('Minority Report', 2002, 'Steven Spielberg', 'In a future where a special police unit can arrest murderers before they commit their crimes, an officer from that unit is himself accused of a future murder.', 'https://www.youtube.com/embed/aGWQYgZc3A4', 'https://image.tmdb.org/t/p/original/ccpBbR2na5bwY4IeT29aYyCqY9l.jpg', 7.7),
('I, Robot', 2004, 'Alex Proyas', 'In 2035, a technophobic cop investigates a crime that may have been perpetrated by a robot, which leads to a larger threat to humanity.', 'https://www.youtube.com/embed/rL6R6rbe20s', 'https://image.tmdb.org/t/p/original/kmy1obT2H2E03tB4zD4UjBfXfS.jpg', 7.1),
('District 9', 2009, 'Neill Blomkamp', 'An extraterrestrial race forced to live in slum-like conditions on Earth suddenly finds a kindred spirit in a government agent who is exposed to their biotechnology.', 'https://www.youtube.com/embed/DyLUwOcR5pk', 'https://image.tmdb.org/t/p/original/23ckh1s2AA7bu29Tse3gG1yTAYA.jpg', 7.9),
('Edge of Tomorrow', 2014, 'Doug Liman', 'A soldier fighting aliens gets to relive the same day over and over again, the day restarting every time he dies.', 'https://www.youtube.com/embed/yUmSVcttXnI', 'https://image.tmdb.org/t/p/original/t4A2JdJ2ZAS1iIzAHeGIXwDVE58.jpg', 7.9),
('Source Code', 2011, 'Duncan Jones', 'A soldier wakes up in someone else''s body and discovers he''s part of an experimental government program to find the bomber of a commuter train within 8 minutes.', 'https://www.youtube.com/embed/Nkv02Bt_p0w', 'https://image.tmdb.org/t/p/original/2Sj2JyKz7aUj2WpB4EhL3W3qFf.jpg', 7.5),
('Looper', 2012, 'Rian Johnson', 'In 2074, when the mob wants to get rid of someone, they send their target 30 years into the past where a looper, a hired gun, awaits to mop up.', 'https://www.youtube.com/embed/2iQuhsmtfHw', 'https://image.tmdb.org/t/p/original/sWj5Kk6E00S2E7Nf2eSNDZ2Yn6O.jpg', 7.4),
('Children of Men', 2006, 'Alfonso Cuarón', 'In 2027, in a chaotic world in which women have somehow become infertile, a former activist agrees to help transport a miraculously pregnant woman to a sanctuary at sea.', 'https://www.youtube.com/embed/Q9CFcTY_pik', 'https://image.tmdb.org/t/p/original/j1lDbv3SgG81mNl3p40lSAvsf1.jpg', 7.9),
('Serenity', 2005, 'Joss Whedon', 'The crew of the ship Serenity try to evade an assassin sent to recapture one of their number who is telepathic.', 'https://www.youtube.com/embed/YU8x-iRR_oA', 'https://image.tmdb.org/t/p/original/1An22sUgu5yP2bPFh2pY8651sY2.jpg', 7.8),
('Dredd', 2012, 'Pete Travis', 'In a violent, futuristic city where the police have the authority to act as judge, jury and executioner, a cop teams with a trainee to take down a gang that deals the reality-altering drug, SLO-MO.', 'https://www.youtube.com/embed/G-eI51SPa1I', 'https://image.tmdb.org/t/p/original/Aof3v2A2kE9Sxdca1jIPp6L4F63.jpg', 7.1),
('Watchmen', 2009, 'Zack Snyder', 'In a gritty and alternate 1985 the glory days of costumed vigilantes have been brought to a close by a government crackdown, but after one of the masked veterans is brutally murdered, an investigation into the killer is initiated.', 'https://www.youtube.com/embed/wglmJk9c3aI', 'https://image.tmdb.org/t/p/original/a4I14h9iAIhGqy2A64YJ8e5mE1h.jpg', 7.6),
('V for Vendetta', 2005, 'James McTeigue', 'In a future British tyranny, a shadowy freedom fighter, known only by the alias of "V", plots to overthrow it with the help of a young woman.', 'https://www.youtube.com/embed/lSA7mAHolAw', 'https://image.tmdb.org/t/p/original/1avD1JeaRiS5e2p9O70aCq1z4d.jpg', 8.2),
('Sin City', 2005, 'Frank Miller, Robert Rodriguez', 'An exploration of the dark and miserable Basin City and three of its residents, all of whom are caught up in violent corruption.', 'https://www.youtube.com/embed/T2_6NWA0w3E', 'https://image.tmdb.org/t/p/original/i53a1g4Gke4pPexw0xGj1j2S9e.jpg', 8.0),
('300', 2006, 'Zack Snyder', 'King Leonidas of Sparta and a force of 300 men fight the Persians at Thermopylae in 480 B.C.', 'https://www.youtube.com/embed/UrIbxk7idYA', 'https://image.tmdb.org/t/p/original/9gC0htZ0fGgC7F2IobTzS5j8I63.jpg', 7.6),
('Iron Man', 2008, 'Jon Favreau', 'After being held captive in an Afghan cave, billionaire engineer Tony Stark creates a unique weaponized suit of armor to fight evil.', 'https://www.youtube.com/embed/8hYlB38asDY', 'https://image.tmdb.org/t/p/original/tF2R3JibMVkLguc7OK4h3Q9iP3P.jpg', 7.9),
('The Avengers', 2012, 'Joss Whedon', 'Earth''s mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.', 'https://www.youtube.com/embed/eOrNdBpGMv8', 'https://image.tmdb.org/t/p/original/RYMX2wcKCBAr24UyPD7xwmjaTn.jpg', 8.0),
('Guardians of the Galaxy', 2014, 'James Gunn', 'A group of intergalactic criminals must pull together to stop a fanatical warrior with plans to purge the universe.', 'https://www.youtube.com/embed/d96cjJhvlMA', 'https://image.tmdb.org/t/p/original/r7vmZjiyZw9rpJMQJdXovFMNbAh.jpg', 8.0),
('Logan', 2017, 'James Mangold', 'In a future where mutants are nearly extinct, an elderly and weary Logan leads a quiet life. But when Laura, a mutant child pursued by scientists, comes to him for help, he must get her to safety.', 'https://www.youtube.com/embed/Div0iP65aZo', 'https://image.tmdb.org/t/p/original/fnbjcRDYn6YviCcePDnGdyAkYsB.jpg', 8.1),
('Spider-Man: Into the Spider-Verse', 2018, 'Bob Persichetti, Peter Ramsey, Rodney Rothman', 'Teen Miles Morales becomes the Spider-Man of his universe, and must join with five spider-powered individuals from other dimensions to stop a threat for all realities.', 'https://www.youtube.com/embed/g4Hbz2jLxvQ', 'https://image.tmdb.org/t/p/original/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg', 8.4),
('Avengers: Infinity War', 2018, 'Anthony Russo, Joe Russo', 'The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.', 'https://www.youtube.com/embed/6ZfuNTqbHE8', 'https://image.tmdb.org/t/p/original/7WsyChQLEftFiDOVTGkv3hFpyyt.jpg', 8.4),
('Avengers: Endgame', 2019, 'Anthony Russo, Joe Russo', 'Adrift in space with no food or water, Tony Stark sends a message to Pepper Potts as his oxygen supply starts to dwindle. Meanwhile, the remaining Avengers -- Thor, Black Widow, Captain America and Bruce Banner -- must figure out a way to bring back their vanquished allies for an epic showdown with Thanos.', 'https://www.youtube.com/embed/TcMBFSGVi1c', 'https://image.tmdb.org/t/p/original/or06FN3Dka5tukK1e9sl16pB3iy.jpg', 8.4),
('Dune', 2021, 'Denis Villeneuve', 'A noble family becomes embroiled in a war for control over the galaxy''s most valuable asset while its heir becomes troubled by visions of a dark future.', 'https://www.youtube.com/embed/n9xhJrPXop4', 'https://image.tmdb.org/t/p/original/d5NXSklXo0qyIY2VFIh5d0lDbk.jpg', 8.0),
('Dune: Part Two', 2024, 'Denis Villeneuve', 'Paul Atreides unites with Chani and the Fremen while on a warpath of revenge against the conspirators who destroyed his family. Facing a choice between the love of his life and the fate of the known universe, he endeavors to prevent a terrible future only he can foresee.', 'https://www.youtube.com/embed/U2Qp5pL3ovA', 'https://image.tmdb.org/t/p/original/8b8R8l88Qje9dn9OE8PY05ES0ook.jpg', 8.7),
('Top Gun: Maverick', 2022, 'Joseph Kosinski', 'After more than thirty years of service as one of the Navy''s top aviators, Pete "Maverick" Mitchell is where he belongs, pushing the envelope as a courageous test pilot and dodging the advancement in rank that would ground him.', 'https://www.youtube.com/embed/qSqVVswa420', 'https://image.tmdb.org/t/p/original/62HCnUTziyWcpDaBO2i1DX17ljH.jpg', 8.3),
('Everything Everywhere All at Once', 2022, 'Daniel Kwan, Daniel Scheinert', 'A middle-aged Chinese immigrant is swept up into an insane adventure in which she alone can save existence by exploring other universes and connecting with the lives she could have led.', 'https://www.youtube.com/embed/wxN1T1uxQ2g', 'https://image.tmdb.org/t/p/original/w3LxiVYdWWRvEVdn5RYq6jIqkb1.jpg', 7.8),
('Planet of the Apes', 1968, 'Franklin J. Schaffner', 'An astronaut crew crash-lands on a planet in the distant future where intelligent talking apes are the dominant species, and humans are the oppressed and enslaved.', 'https://www.youtube.com/embed/41q9zC7b_Lw', 'https://image.tmdb.org/t/p/original/hWpVfG3Y8i4KOS6jYV72uFlZ2sY.jpg', 8.0),
('Rise of the Planet of the Apes', 2011, 'Rupert Wyatt', 'A substance designed to help the brain repair itself gives advanced intelligence to a chimpanzee who leads an ape uprising.', 'https://www.youtube.com/embed/LaK6khs8aMw', 'https://image.tmdb.org/t/p/original/esrKsoxSg2HOfI8T2fXbS0x2sV.jpg', 7.6),
('Dawn of the Planet of the Apes', 2014, 'Matt Reeves', 'A growing nation of genetically evolved apes led by Caesar is threatened by a band of human survivors of the devastating virus unleashed a decade earlier.', 'https://www.youtube.com/embed/3sHMCRaS3ao', 'https://image.tmdb.org/t/p/original/krF8D194s5t2A1yIagEw2edj77h.jpg', 7.6),
('War for the Planet of the Apes', 2017, 'Matt Reeves', 'After the apes suffer unimaginable losses, Caesar wrestles with his darker instincts and begins his own mythic quest to avenge his kind.', 'https://www.youtube.com/embed/qxjPjPzQ1iU', 'https://image.tmdb.org/t/p/original/y5lG3u0294M2xG33A125P0j2dD.jpg', 7.4),
('Akira', 1988, 'Katsuhiro Ôtomo', 'A secret military project endangers Neo-Tokyo when it turns a biker gang member into a rampaging psychic psychopath who can only be stopped by two teenagers and a group of psychics.', 'https://www.youtube.com/embed/tBlicN_6a-Y', 'https://image.tmdb.org/t/p/original/5dExOOSlXTn1P2prl6nCf2gOhR2.jpg', 8.0),
('Ghost in the Shell', 1995, 'Mamoru Oshii', 'A cyborg policewoman and her partner hunt a mysterious and powerful hacker known as the Puppet Master.', 'https://www.youtube.com/embed/oP2_4qW3k2M', 'https://image.tmdb.org/t/p/original/9gC0htZ0fGgC7F2IobTzS5j8I63.jpg', 7.9),
('Independence Day', 1996, 'Roland Emmerich', 'The aliens are coming and their goal is to invade and destroy Earth. Fighting superior technology, mankind''s best weapon is the will to survive.', 'https://www.youtube.com/embed/B1E7h3SeMDk', 'https://image.tmdb.org/t/p/original/p0T9s3c3ftz6Sg5Jg2GvPFfJpA.jpg', 7.0),
('Armageddon', 1998, 'Michael Bay', 'After discovering that an asteroid the size of Texas is going to impact Earth in less than a month, NASA recruits a misfit team of deep-core drillers to save the planet.', 'https://www.youtube.com/embed/kg_jH47u480', 'https://image.tmdb.org/t/p/original/fMT3o95dY6C6a7yLFH75eRTAq2.jpg', 6.7),
('The Martian', 2015, 'Ridley Scott', 'An astronaut becomes stranded on Mars after his team assume him dead, and must rely on his ingenuity to find a way to signal to Earth that he is alive.', 'https://www.youtube.com/embed/ej3ioOneTy8', 'https://image.tmdb.org/t/p/original/5wQ4m9tEWJwyk423CV1w8i4v6i4.jpg', 8.0),
('Interstellar', 2014, 'Christopher Nolan', 'A team of explorers travel through a wormhole in space in an attempt to ensure humanity''s survival.', 'https://www.youtube.com/embed/zSWdZVtXT7E', 'https://image.tmdb.org/t/p/original/gEU2QniE6E77NI6lCU6MxlNBvIx.jpg', 8.7),
('Gravity', 2013, 'Alfonso Cuarón', 'Two astronauts work together to survive after an accident leaves them stranded in space.', 'https://www.youtube.com/embed/OiTiKOy841s', 'https://image.tmdb.org/t/p/original/4g3v0r6nS0W4d1aG1so6eL8yPse.jpg', 7.7),
('Mad Max 2: The Road Warrior', 1981, 'George Miller', 'In the post-apocalyptic Australian wasteland, a cynical drifter agrees to help a small, gasoline-rich community escape a horde of bandits.', 'https://www.youtube.com/embed/kBrAh3OyYnI', 'https://image.tmdb.org/t/p/original/1FNL8sDrk217sCUOM8s86kE29Ud.jpg', 7.6),
('Escape from New York', 1981, 'John Carpenter', 'In 1997, when the U.S. President crashes into Manhattan, now a giant maximum security prison, a convicted bank robber is sent in to rescue him.', 'https://www.youtube.com/embed/8-LDW7tWwAI', 'https://image.tmdb.org/t/p/original/uTB432y3pr2YtYv6a1nF31Fwqy.jpg', 7.1),
('The Thing', 1982, 'John Carpenter', 'A research team in Antarctica is hunted by a shape-shifting alien that assumes the appearance of its victims.', 'https://www.youtube.com/embed/5ftmr17M-a4', 'https://image.tmdb.org/t/p/original/1hT12V2S4K6iIboaa9iA7rua7K6.jpg', 8.2),
('E.T. the Extra-Terrestrial', 1982, 'Steven Spielberg', 'A troubled child summons the courage to help a friendly alien escape Earth and return to his home planet.', 'https://www.youtube.com/embed/qYAETtII-Mk', 'https://image.tmdb.org/t/p/original/pEKStsz5H5Ld4pQEDe2GfQ3tq7R.jpg', 7.9),
('Indiana Jones and the Raiders of the Lost Ark', 1981, 'Steven Spielberg', 'In 1936, archaeologist and adventurer Indiana Jones is hired by the U.S. government to find the Ark of the Covenant before Adolf Hitler''s Nazis can obtain its awesome powers.', 'https://www.youtube.com/embed/XkkzKHCx154', 'https://image.tmdb.org/t/p/original/ceG9VzoRAVGwivFU403Wc3AHRys.jpg', 8.4),
('Indiana Jones and the Last Crusade', 1989, 'Steven Spielberg', 'In 1938, after his father Professor Henry Jones, Sr. goes missing while pursuing the Holy Grail, Professor Henry "Indiana" Jones, Jr. finds himself up against Adolf Hitler''s Nazis again to stop them from obtaining its powers.', 'https://www.youtube.com/embed/aQ2KNAMhbI8', 'https://image.tmdb.org/t/p/original/izn0Y71bJtACmTF8m8mm4a7aXJb.jpg', 8.2),
('The Hunt for Red October', 1990, 'John McTiernan', 'In November 1984, the Soviet Union''s best submarine captain in their newest sub violates orders and heads for the U.S. Is he trying to defect or to start a war?', 'https://www.youtube.com/embed/3C2tG2no5Gk', 'https://image.tmdb.org/t/p/original/u2wKn2iMNo6jb1Z3D1aB2sJs2c.jpg', 7.6),
('True Lies', 1994, 'James Cameron', 'A fearless, globe-trotting, terrorist-battling secret agent has his life turned upside down when he discovers his wife might be having an affair with a used-car salesman while terrorists smuggle nuclear warheads into the U.S.', 'https://www.youtube.com/embed/3B_n_hM-iAY', 'https://image.tmdb.org/t/p/original/30IkmAVDylBUc7s2I4i2G7A8j4e.jpg', 7.3),
('Speed', 1994, 'Jan de Bont', 'A young police officer must prevent a bomb exploding aboard a city bus by keeping its speed above 50 mph.', 'https://www.youtube.com/embed/F_8h26oUzB4', 'https://image.tmdb.org/t/p/original/o180s502WwQe73ftgG3Tq3WImlI.jpg', 7.3),
('Kill Bill: Vol. 1', 2003, 'Quentin Tarantino', 'After awakening from a four-year coma, a former assassin wreaks vengeance on the team of assassins who betrayed her.', 'https://www.youtube.com/embed/7kSuas6mRpk', 'https://image.tmdb.org/t/p/original/v7TaX8kXMXs5yFFGR41guwCSsiB.jpg', 8.2),
('Kill Bill: Vol. 2', 2004, 'Quentin Tarantino', 'The Bride continues her quest of vengeance against her former boss and lover Bill, the reclusive bouncer Budd, and the treacherous, one-eyed Elle.', 'https://www.youtube.com/embed/NSR7x1N2dEM', 'https://image.tmdb.org/t/p/original/2yhg0mZCC3EJeC21v4pBDYp5Z2C.jpg', 8.0),
('Inglourious Basterds', 2009, 'Quentin Tarantino', 'In Nazi-occupied France during World War II, a plan to assassinate Nazi leaders by a group of Jewish U.S. soldiers coincides with a theatre owner''s vengeful plans for the same.', 'https://www.youtube.com/embed/KnrRy6kSFF0', 'https://image.tmdb.org/t/p/original/7sfbENAARXkIEIwPYquZ2dPY0H.jpg', 8.3),
('The Hateful Eight', 2015, 'Quentin Tarantino', 'In the dead of a Wyoming winter, a bounty hunter and his prisoner find shelter in a cabin currently inhabited by a collection of nefarious characters.', 'https://www.youtube.com/embed/6_UI1GzaWv0', 'https://image.tmdb.org/t/p/original/64A24nOaJv1T2s2eYd2e2o5oZt.jpg', 7.8),
('Once Upon a Time in Hollywood', 2019, 'Quentin Tarantino', 'A faded television actor and his stunt double strive to achieve fame and success in the final years of Hollywood''s Golden Age in 1969 Los Angeles.', 'https://www.youtube.com/embed/ELeMaP8pZ_k', 'https://image.tmdb.org/t/p/original/8j58iEBw9pYFD3gpI5OO4gHn2AI.jpg', 7.6),
('Baby Driver', 2017, 'Edgar Wright', 'After being coerced into working for a crime boss, a young getaway driver finds himself taking part in a heist doomed to fail.', 'https://www.youtube.com/embed/D9YZw_X5UzQ', 'https://image.tmdb.org/t/p/original/rmnQ9jKW72bRyI24i3v89pQ00s.jpg', 7.6),
('Kingsman: The Secret Service', 2014, 'Matthew Vaughn', 'A spy organization recruits an unrefined but promising street kid into the agency''s ultra-competitive training program, just as a global threat emerges from a twisted tech genius.', 'https://www.youtube.com/embed/kl8F-8tR8to', 'https://image.tmdb.org/t/p/original/aypC8yBftM2nOaT2yS1x2S2yB2i.jpg', 7.7),
('Kick-Ass', 2010, 'Matthew Vaughn', 'Dave Lizewski is an unnoticed high school student and comic book fan who one day decides to become a super-hero, even though he has no powers, training or meaningful reason to do so.', 'https://www.youtube.com/embed/r4P21p33n9s', 'https://image.tmdb.org/t/p/original/8AZr227n2y20pckqM1A2D4TqCP1.jpg', 7.6),
('Deadpool', 2016, 'Tim Miller', 'A wisecracking mercenary gets experimented on and becomes immortal but ugly, and sets out to track down the man who ruined his looks.', 'https://www.youtube.com/embed/Xithigfg7sg', 'https://image.tmdb.org/t/p/original/fSRb7vyIP8rQpL0I47P3qUsADva.jpg', 8.0),
('Sicario', 2015, 'Denis Villeneuve', 'An idealistic FBI agent is enlisted by a government task force to aid in the escalating war against drugs at the border area between the U.S. and Mexico.', 'https://www.youtube.com/embed/sR0SDT2GeFg', 'https://image.tmdb.org/t/p/original/pB82oRCjdWRm2yAzd6nKlE32a0.jpg', 7.7),
('Arrival', 2016, 'Denis Villeneuve', 'A linguist works with the military to communicate with alien lifeforms after twelve mysterious spacecraft appear around the world.', 'https://www.youtube.com/embed/tFMo3UJ4B4g', 'https://image.tmdb.org/t/p/original/x2FJsf1ElAgr63Y3PNPtJrcmpoe.jpg', 7.9),
('Prisoners', 2013, 'Denis Villeneuve', 'When Keller Dover''s daughter and her friend go missing, he takes matters into his own hands as the police pursue multiple leads and the pressure mounts.', 'https://www.youtube.com/embed/bpXfcTF6iVk', 'https://image.tmdb.org/t/p/original/a4I14h9iAIhGqy2A64YJ8e5mE1h.jpg', 8.1),
('Ford v Ferrari', 2019, 'James Mangold', 'American car designer Carroll Shelby and driver Ken Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order to defeat Ferrari at the 24 Hours of Le Mans in 1966.', 'https://www.youtube.com/embed/I3h9Z89U9ZA', 'https://image.tmdb.org/t/p/original/6ApDtO7xaWAfPqfi2IARXIzj8Qj.jpg', 8.1),
('1917', 2019, 'Sam Mendes', 'April 6th, 1917. As a regiment assembles to wage war deep in enemy territory, two soldiers are assigned to race against time and deliver a message that will stop 1,600 men from walking straight into a deadly trap.', 'https://www.youtube.com/embed/YqNYrYUiMfg', 'https://image.tmdb.org/t/p/original/iZf0KyrE25z1sage4SYFLCCrMi9.jpg', 8.2);

-- -----------------------------------------------------
--  Neue Genres zur Tabelle 'genres' hinzufügen
-- -----------------------------------------------------

INSERT INTO genres (genre_name) VALUES
('Action'), ('Fantasy'), ('Neo-Noir'), ('Space Opera'), ('Cyberpunk'), ('Horror'),
('Action Thriller'), ('Satire'), ('Spy Film'), ('Crime Thriller'), ('Mystery'),
('Dystopian'), ('Superhero'), ('Animation'), ('Action Comedy'), ('Martial Arts'),
('Biographical'), ('Racing');

-- -----------------------------------------------------
--  Neue Schauspieler zur Tabelle 'actors' hinzufügen
-- -----------------------------------------------------

INSERT INTO actors (actor_name) VALUES
('Keanu Reeves'), ('Laurence Fishburne'), ('Carrie-Anne Moss'), ('Hugo Weaving'), ('Christian Bale'),
('Heath Ledger'), ('Aaron Eckhart'), ('Michael Caine'), ('Gary Oldman'), ('Joseph Gordon-Levitt'),
('Tom Hardy'), ('Elijah Wood'), ('Ian McKellen'), ('Viggo Mortensen'), ('Orlando Bloom'),
('John Travolta'), ('Samuel L. Jackson'), ('Uma Thurman'), ('Bruce Willis'), ('Robin Wright'),
('Gary Sinise'), ('Mark Hamill'), ('Harrison Ford'), ('Carrie Fisher'), ('Arnold Schwarzenegger'),
('Linda Hamilton'), ('Edward Furlong'), ('Jodie Foster'), ('Anthony Hopkins'), ('Jean Reno'),
('Natalie Portman'), ('Russell Crowe'), ('Joaquin Phoenix'), ('Matt Damon'), ('Jack Nicholson'),
('Hugh Jackman'), ('Patrick Stewart'), ('Sigourney Weaver'), ('Rutger Hauer'), ('Sean Young'),
('Alan Rickman'), ('George Miller'), ('Tom Hardy'), ('Charlize Theron'), ('Sam Neill'),
('Laura Dern'), ('Jeff Goldblum'), ('Ryan Gosling'), ('Ana de Armas'), ('Peter Weller'),
('Nancy Allen'), ('Milla Jovovich'), ('Gary Oldman'), ('Casper Van Dien'), ('Denise Richards'),
('Chad Stahelski'), ('Daniel Craig'), ('Eva Green'), ('Judi Dench'), ('Javier Bardem'),
('Michael Mann'), ('Val Kilmer'), ('Kevin Spacey'), ('Guy Pearce'), ('Tommy Lee Jones'),
('Javier Bardem'), ('Josh Brolin'), ('Sean Connery'), ('Ed Harris'), ('Nicolas Cage'),
('John Travolta'), ('Tom Cruise'), ('Jon Voight'), ('Brad Bird'), ('Jeremy Renner'),
('Pierce Brosnan'), ('Sean Bean'), ('Famke Janssen'), ('Doug Liman'), ('Franka Potente'),
('Paul Greengrass'), ('Julia Stiles'), ('Alex Proyas'), ('Will Smith'), ('Bridget Moynahan'),
('Neill Blomkamp'), ('Sharlto Copley'), ('Emily Blunt'), ('Bill Paxton'), ('Duncan Jones'),
('Jake Gyllenhaal'), ('Michelle Monaghan'), ('Rian Johnson'), ('Joseph Gordon-Levitt'), ('Bruce Willis'),
('Alfonso Cuarón'), ('Clive Owen'), ('Julianne Moore'), ('Joss Whedon'), ('Nathan Fillion'),
('Gina Torres'), ('Karl Urban'), ('Olivia Thirlby'), ('Zack Snyder'), ('Jackie Earle Haley'),
('James McTeigue'), ('Hugo Weaving'), ('Frank Miller'), ('Robert Rodriguez'), ('Mickey Rourke'),
('Jessica Alba'), ('Gerard Butler'), ('Lena Headey'), ('Jon Favreau'), ('Robert Downey Jr.'),
('Gwyneth Paltrow'), ('Chris Evans'), ('Mark Ruffalo'), ('Chris Hemsworth'), ('Scarlett Johansson'),
('James Gunn'), ('Chris Pratt'), ('Zoe Saldaña'), ('Dave Bautista'), ('Vin Diesel'),
('James Mangold'), ('Dafne Keen'), ('Shameik Moore'), ('Jake Johnson'), ('Hailee Steinfeld'),
('Anthony Russo'), ('Joe Russo'), ('Josh Brolin'), ('Zendaya'), ('Timothée Chalamet'),
('Rebecca Ferguson'), ('Oscar Isaac'), ('Joseph Kosinski'), ('Miles Teller'), ('Jennifer Connelly'),
('Michelle Yeoh'), ('Stephanie Hsu'), ('Ke Huy Quan'), ('Franklin J. Schaffner'), ('Charlton Heston'),
('Roddy McDowall'), ('Rupert Wyatt'), ('James Franco'), ('Freida Pinto'), ('Andy Serkis'),
('Matt Reeves'), ('Gary Oldman'), ('Keri Russell'), ('Woody Harrelson'), ('Katsuhiro Ôtomo'),
('Mamoru Oshii'), ('Roland Emmerich'), ('Bill Pullman'), ('Jeff Goldblum'), ('Michael Bay'),
('Ben Affleck'), ('Liv Tyler'), ('Matthew McConaughey'), ('Anne Hathaway'), ('Jessica Chastain'),
('Sandra Bullock'), ('George Clooney'), ('Mel Gibson'), ('John Carpenter'), ('Kurt Russell'),
('Lee Van Cleef'), ('Dee Wallace'), ('Henry Thomas'), ('Karen Allen'), ('Paul Freeman'),
('Jan de Bont'), ('Sandra Bullock'), ('Dennis Hopper'), ('David Carradine'), ('Daryl Hannah'),
('Michael Madsen'), ('Mélanie Laurent'), ('Diane Kruger'), ('Kurt Russell'), ('Jennifer Jason Leigh'),
('Margot Robbie'), ('Ansel Elgort'), ('Kevin Spacey'), ('Lily James'), ('Matthew Vaughn'),
('Colin Firth'), ('Taron Egerton'), ('Aaron Taylor-Johnson'), ('Chloë Grace Moretz'), ('Tim Miller'),
('Ryan Reynolds'), ('Morena Baccarin'), ('Ed Skrein'), ('Emily Blunt'), ('Benicio Del Toro'),
('Amy Adams'), ('Jeremy Renner'), ('Hugh Jackman'), ('Jake Gyllenhaal'), ('Viola Davis'),
('Christian Bale'), ('Matt Damon'), ('Caitriona Balfe'), ('Sam Mendes'), ('George MacKay'),
('Dean-Charles Chapman');

-- -----------------------------------------------------
--  Genres zu Filmen zuordnen
-- -----------------------------------------------------

INSERT INTO movies_with_genres (movie_id, genre_id) VALUES
-- Django Unchained (id: 1)
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), -- Dark Comedy, Epic, Period Drama, Western Epic, Comedy, Drama, Western
-- Schindler's List (id: 2)
(2, 8), (2, 6), (2, 9), (2, 10), -- Biography, Drama, History, War
-- Fight Club (id: 3)
(3, 6), (3, 11), -- Drama, Psychological Thriller
-- Scarface (id: 4)
(4, 12), (4, 6), (4, 13), -- Crime, Drama, Thriller
-- Saving Private Ryan (id: 5)
(5, 6), (5, 10), -- Drama, War
-- Back to the Future (id: 6)
(6, 14), (6, 15), (6, 16), (6, 17), (6, 18), (6, 5), (6, 19); -- High-Concept Comedy, Teen Adventure, Time Travel, Urban Adventure, Adventure, Comedy, Sci-Fi
-- The Matrix (id: 7)
(7, 19), (7, 20), (7, 24), -- Sci-Fi, Action, Cyberpunk
-- The Dark Knight (id: 8)
(8, 20), (8, 12), (8, 6), (8, 33), -- Action, Crime, Drama, Superhero
-- Inception (id: 9)
(9, 20), (9, 18), (9, 19), (9, 13), -- Action, Adventure, Sci-Fi, Thriller
-- The Lord of the Rings: The Return of the King (id: 10)
(10, 20), (10, 18), (10, 6), (10, 21), -- Action, Adventure, Drama, Fantasy
-- Pulp Fiction (id: 11)
(11, 12), (11, 6), -- Crime, Drama
-- Forrest Gump (id: 12)
(12, 6), (12, 5), -- Drama, Comedy
-- The Lord of the Rings: The Fellowship of the Ring (id: 13)
(13, 20), (13, 18), (13, 6), (13, 21), -- Action, Adventure, Drama, Fantasy
-- The Lord of the Rings: The Two Towers (id: 14)
(14, 20), (14, 18), (14, 6), (14, 21), -- Action, Adventure, Drama, Fantasy
-- Star Wars: Episode V - The Empire Strikes Back (id: 15)
(15, 20), (15, 18), (15, 21), (15, 23), -- Action, Adventure, Fantasy, Space Opera
-- Terminator 2: Judgment Day (id: 16)
(16, 20), (16, 19), -- Action, Sci-Fi
-- The Silence of the Lambs (id: 17)
(17, 12), (17, 6), (17, 13), (17, 25), -- Crime, Drama, Thriller, Horror
-- Léon: The Professional (id: 18)
(18, 20), (18, 12), (18, 6), (18, 13), -- Action, Crime, Drama, Thriller
-- Gladiator (id: 19)
(19, 20), (19, 18), (19, 6), (19, 2), -- Action, Adventure, Drama, Epic
-- The Departed (id: 20)
(20, 12), (20, 6), (20, 13), -- Crime, Drama, Thriller
-- The Prestige (id: 21)
(21, 6), (21, 11), (21, 19), (21, 31), -- Drama, Psychological Thriller, Sci-Fi, Mystery
-- Alien (id: 22)
(22, 25), (22, 19), -- Horror, Sci-Fi
-- Aliens (id: 23)
(23, 20), (23, 18), (23, 19), (23, 13), -- Action, Adventure, Sci-Fi, Thriller
-- Blade Runner (id: 24)
(24, 20), (24, 6), (24, 19), (24, 22), -- Action, Drama, Sci-Fi, Neo-Noir
-- Die Hard (id: 25)
(25, 20), (25, 13), (25, 26), -- Action, Thriller, Action Thriller
-- Mad Max: Fury Road (id: 26)
(26, 20), (26, 18), (26, 19), (26, 32), -- Action, Adventure, Sci-Fi, Dystopian
-- Jurassic Park (id: 27)
(27, 20), (27, 18), (27, 19), (27, 13), -- Action, Adventure, Sci-Fi, Thriller
-- Blade Runner 2049 (id: 28)
(28, 20), (28, 6), (28, 19), (28, 31), (28, 22), -- Action, Drama, Sci-Fi, Mystery, Neo-Noir
-- The Terminator (id: 29)
(29, 20), (29, 19), -- Action, Sci-Fi
-- Predator (id: 30)
(30, 20), (30, 19), (30, 25), -- Action, Sci-Fi, Horror
-- Total Recall (id: 31)
(31, 20), (31, 19), (31, 13), -- Action, Sci-Fi, Thriller
-- RoboCop (id: 32)
(32, 20), (32, 12), (32, 19), (32, 27), -- Action, Crime, Sci-Fi, Satire
-- The Fifth Element (id: 33)
(33, 20), (33, 18), (33, 19), -- Action, Adventure, Sci-Fi
-- Starship Troopers (id: 34)
(34, 20), (34, 18), (34, 19), (34, 27), -- Action, Adventure, Sci-Fi, Satire
-- John Wick (id: 35)
(35, 20), (35, 12), (35, 13), (35, 26), -- Action, Crime, Thriller, Action Thriller
-- Casino Royale (id: 36)
(36, 20), (36, 18), (36, 13), (36, 28), -- Action, Adventure, Thriller, Spy Film
-- Skyfall (id: 37)
(37, 20), (37, 18), (37, 13), (37, 28), -- Action, Adventure, Thriller, Spy Film
-- Heat (id: 38)
(38, 20), (38, 12), (38, 6), (38, 29), -- Action, Crime, Drama, Crime Thriller
-- L.A. Confidential (id: 39)
(39, 12), (39, 6), (39, 31), (39, 29), -- Crime, Drama, Mystery, Crime Thriller
-- No Country for Old Men (id: 40)
(40, 12), (40, 6), (40, 13), -- Crime, Drama, Thriller
-- The Fugitive (id: 41)
(41, 20), (41, 12), (41, 6), (41, 13), -- Action, Crime, Drama, Thriller
-- The Rock (id: 42)
(42, 20), (42, 18), (42, 13), -- Action, Adventure, Thriller
-- Con Air (id: 43)
(43, 20), (43, 12), (43, 13), -- Action, Crime, Thriller
-- Face/Off (id: 44)
(44, 20), (44, 12), (44, 19), (44, 13), -- Action, Crime, Sci-Fi, Thriller
-- Mission: Impossible (id: 45)
(45, 20), (45, 18), (45, 13), (45, 28), -- Action, Adventure, Thriller, Spy Film
-- Mission: Impossible - Ghost Protocol (id: 46)
(46, 20), (46, 18), (46, 13), (46, 28), -- Action, Adventure, Thriller, Spy Film
-- GoldenEye (id: 47)
(47, 20), (47, 18), (47, 13), (47, 28), -- Action, Adventure, Thriller, Spy Film
-- The Bourne Identity (id: 48)
(48, 20), (48, 31), (48, 13), (48, 28), -- Action, Mystery, Thriller, Spy Film
-- The Bourne Ultimatum (id: 49)
(49, 20), (49, 31), (49, 13), (49, 28), -- Action, Mystery, Thriller, Spy Film
-- Minority Report (id: 50)
(50, 20), (50, 12), (50, 6), (50, 19), (50, 31), -- Action, Crime, Drama, Sci-Fi, Mystery
-- I, Robot (id: 51)
(51, 20), (51, 19), (51, 13), (51, 31), -- Action, Sci-Fi, Thriller, Mystery
-- District 9 (id: 52)
(52, 20), (52, 6), (52, 19), (52, 13), -- Action, Drama, Sci-Fi, Thriller
-- Edge of Tomorrow (id: 53)
(53, 20), (53, 18), (53, 19), (53, 16), -- Action, Adventure, Sci-Fi, Time Travel
-- Source Code (id: 54)
(54, 20), (54, 6), (54, 19), (54, 13), (54, 16), -- Action, Drama, Sci-Fi, Thriller, Time Travel
-- Looper (id: 55)
(55, 20), (55, 6), (55, 19), (55, 13), (55, 16), -- Action, Drama, Sci-Fi, Thriller, Time Travel
-- Children of Men (id: 56)
(56, 18), (56, 6), (56, 19), (56, 13), (56, 32), -- Adventure, Drama, Sci-Fi, Thriller, Dystopian
-- Serenity (id: 57)
(57, 20), (57, 18), (57, 19), (57, 13), -- Action, Adventure, Sci-Fi, Thriller
-- Dredd (id: 58)
(58, 20), (58, 12), (58, 19), (58, 32), -- Action, Crime, Sci-Fi, Dystopian
-- Watchmen (id: 59)
(59, 20), (59, 6), (59, 19), (59, 31), (59, 33), -- Action, Drama, Sci-Fi, Mystery, Superhero
-- V for Vendetta (id: 60)
(60, 20), (60, 6), (60, 19), (60, 13), (60, 32), -- Action, Drama, Sci-Fi, Thriller, Dystopian
-- Sin City (id: 61)
(61, 12), (61, 6), (61, 13), (61, 22), -- Crime, Drama, Thriller, Neo-Noir
-- 300 (id: 62)
(62, 20), (62, 6), (62, 21), (62, 9), -- Action, Drama, Fantasy, History
-- Iron Man (id: 63)
(63, 20), (63, 18), (63, 19), (63, 33), -- Action, Adventure, Sci-Fi, Superhero
-- The Avengers (id: 64)
(64, 20), (64, 18), (64, 19), (64, 33), -- Action, Adventure, Sci-Fi, Superhero
-- Guardians of the Galaxy (id: 65)
(65, 20), (65, 18), (65, 5), (65, 19), (65, 33), -- Action, Adventure, Comedy, Sci-Fi, Superhero
-- Logan (id: 66)
(66, 20), (66, 6), (66, 19), (66, 33), (66, 32), -- Action, Drama, Sci-Fi, Superhero, Dystopian
-- Spider-Man: Into the Spider-Verse (id: 67)
(67, 20), (67, 18), (67, 34), (67, 5), (67, 33), -- Action, Adventure, Animation, Comedy, Superhero
-- Avengers: Infinity War (id: 68)
(68, 20), (68, 18), (68, 19), (68, 33), -- Action, Adventure, Sci-Fi, Superhero
-- Avengers: Endgame (id: 69)
(69, 20), (69, 18), (69, 6), (69, 19), (69, 33), -- Action, Adventure, Drama, Sci-Fi, Superhero
-- Dune (id: 70)
(70, 20), (70, 18), (70, 6), (70, 19), (70, 2), -- Action, Adventure, Drama, Sci-Fi, Epic
-- Dune: Part Two (id: 71)
(71, 20), (71, 18), (71, 6), (71, 19), (71, 2), -- Action, Adventure, Drama, Sci-Fi, Epic
-- Top Gun: Maverick (id: 72)
(72, 20), (72, 6), -- Action, Drama
-- Everything Everywhere All at Once (id: 73)
(73, 20), (73, 18), (73, 5), (73, 19), (73, 21), -- Action, Adventure, Comedy, Sci-Fi, Fantasy
-- Planet of the Apes (id: 74)
(74, 18), (74, 6), (74, 19), -- Adventure, Drama, Sci-Fi
-- Rise of the Planet of the Apes (id: 75)
(75, 20), (75, 6), (75, 19), (75, 13), -- Action, Drama, Sci-Fi, Thriller
-- Dawn of the Planet of the Apes (id: 76)
(76, 20), (76, 18), (76, 6), (76, 19), -- Action, Adventure, Drama, Sci-Fi
-- War for the Planet of the Apes (id: 77)
(77, 20), (77, 18), (77, 6), (77, 19), -- Action, Adventure, Drama, Sci-Fi
-- Akira (id: 78)
(78, 34), (78, 6), (78, 19), (78, 13), -- Animation, Drama, Sci-Fi, Thriller
-- Ghost in the Shell (id: 79)
(79, 20), (79, 34), (79, 6), (79, 19), (79, 11), -- Action, Animation, Drama, Sci-Fi, Psychological Thriller
-- Independence Day (id: 80)
(80, 20), (80, 18), (80, 19), -- Action, Adventure, Sci-Fi
-- Armageddon (id: 81)
(81, 20), (81, 18), (81, 19), (81, 13), -- Action, Adventure, Sci-Fi, Thriller
-- The Martian (id: 82)
(82, 18), (82, 6), (82, 19), -- Adventure, Drama, Sci-Fi
-- Interstellar (id: 83)
(83, 18), (83, 6), (83, 19), -- Adventure, Drama, Sci-Fi
-- Gravity (id: 84)
(84, 6), (84, 19), (84, 13), -- Drama, Sci-Fi, Thriller
-- Mad Max 2: The Road Warrior (id: 85)
(85, 20), (85, 18), (85, 19), (85, 13), (85, 32), -- Action, Adventure, Sci-Fi, Thriller, Dystopian
-- Escape from New York (id: 86)
(86, 20), (86, 19), (86, 32), -- Action, Sci-Fi, Dystopian
-- The Thing (id: 87)
(87, 25), (87, 31), (87, 19), -- Horror, Mystery, Sci-Fi
-- E.T. the Extra-Terrestrial (id: 88)
(88, 18), (88, 6), (88, 19), -- Adventure, Drama, Sci-Fi
-- Indiana Jones and the Raiders of the Lost Ark (id: 89)
(89, 20), (89, 18), -- Action, Adventure
-- Indiana Jones and the Last Crusade (id: 90)
(90, 20), (90, 18), -- Action, Adventure
-- The Hunt for Red October (id: 91)
(91, 20), (91, 18), (91, 13), -- Action, Adventure, Thriller
-- True Lies (id: 92)
(92, 20), (92, 5), (92, 13), (92, 35), -- Action, Comedy, Thriller, Action Comedy
-- Speed (id: 93)
(93, 20), (93, 18), (93, 13), -- Action, Adventure, Thriller
-- Kill Bill: Vol. 1 (id: 94)
(94, 20), (94, 12), (94, 13), (94, 36), -- Action, Crime, Thriller, Martial Arts
-- Kill Bill: Vol. 2 (id: 95)
(95, 20), (95, 12), (95, 13), (95, 36), -- Action, Crime, Thriller, Martial Arts
-- Inglourious Basterds (id: 96)
(96, 18), (96, 6), (96, 10), -- Adventure, Drama, War
-- The Hateful Eight (id: 97)
(97, 12), (97, 6), (97, 31), (97, 7), -- Crime, Drama, Mystery, Western
-- Once Upon a Time in Hollywood (id: 98)
(98, 5), (98, 6), -- Comedy, Drama
-- Baby Driver (id: 99)
(99, 20), (99, 12), (99, 6), (99, 13), -- Action, Crime, Drama, Thriller
-- Kingsman: The Secret Service (id: 100)
(100, 20), (100, 18), (100, 5), (100, 28), -- Action, Adventure, Comedy, Spy Film
-- Kick-Ass (id: 101)
(101, 20), (101, 5), (101, 33), -- Action, Comedy, Superhero
-- Deadpool (id: 102)
(102, 20), (102, 18), (102, 5), (102, 33), -- Action, Adventure, Comedy, Superhero
-- Sicario (id: 103)
(103, 20), (103, 12), (103, 6), (103, 13), -- Action, Crime, Drama, Thriller
-- Arrival (id: 104)
(104, 6), (104, 19), (104, 13), (104, 31), -- Drama, Sci-Fi, Thriller, Mystery
-- Prisoners (id: 105)
(105, 12), (105, 6), (105, 13), (105, 31), -- Crime, Drama, Thriller, Mystery
-- Ford v Ferrari (id: 106)
(106, 20), (106, 37), (106, 6), (106, 38), -- Action, Biographical, Drama, Racing
-- 1917 (id: 107)
(107, 6), (107, 10), (107, 2), -- Drama, War, Epic
-- -----------------------------------------------------
--  Schauspieler zu Filmen zuordnen
-- -----------------------------------------------------

INSERT INTO movies_with_actors (movie_id, actor_id) VALUES
-- The Matrix (id: 7)
(7, 22), (7, 23), (7, 24), (7, 25), -- Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss, Hugo Weaving
-- The Dark Knight (id: 8)
(8, 26), (8, 27), (8, 28), (8, 29), (8, 30), -- Christian Bale, Heath Ledger, Aaron Eckhart, Michael Caine, Gary Oldman
-- Inception (id: 9)
(9, 12), (9, 31), (9, 32), (9, 28), (9, 109), -- Leonardo DiCaprio, Joseph Gordon-Levitt, Tom Hardy, Michael Caine, Ken Watanabe
-- The Lord of the Rings: The Return of the King (id: 10)
(10, 33), (10, 34), (10, 35), (10, 36), -- Elijah Wood, Ian McKellen, Viggo Mortensen, Orlando Bloom
-- Pulp Fiction (id: 11)
(11, 37), (11, 38), (11, 39), (11, 20), -- John Travolta, Samuel L. Jackson, Uma Thurman, Bruce Willis
-- Forrest Gump (id: 12)
(12, 20), (12, 40), (12, 41), -- Tom Hanks, Robin Wright, Gary Sinise
-- The Lord of the Rings: The Fellowship of the Ring (id: 13)
(13, 33), (13, 34), (13, 35), (13, 36), -- Elijah Wood, Ian McKellen, Viggo Mortensen, Orlando Bloom
-- The Lord of the Rings: The Two Towers (id: 14)
(14, 33), (14, 34), (14, 35), (14, 36), -- Elijah Wood, Ian McKellen, Viggo Mortensen, Orlando Bloom
-- Star Wars: Episode V - The Empire Strikes Back (id: 15)
(15, 42), (15, 43), (15, 44), -- Mark Hamill, Harrison Ford, Carrie Fisher
-- Terminator 2: Judgment Day (id: 16)
(16, 45), (16, 46), (16, 47), -- Arnold Schwarzenegger, Linda Hamilton, Edward Furlong
-- The Silence of the Lambs (id: 17)
(17, 48), (17, 49), -- Jodie Foster, Anthony Hopkins
-- Léon: The Professional (id: 18)
(18, 50), (18, 51), (18, 30), -- Jean Reno, Natalie Portman, Gary Oldman
-- Gladiator (id: 19)
(19, 52), (19, 53), -- Russell Crowe, Joaquin Phoenix
-- The Departed (id: 20)
(20, 12), (20, 14), (20, 54), -- Leonardo DiCaprio, Matt Damon, Jack Nicholson
-- The Prestige (id: 21)
(21, 26), (21, 55), (21, 28), (21, 148), -- Christian Bale, Hugh Jackman, Michael Caine, Scarlett Johansson
-- Alien (id: 22)
(22, 57), -- Sigourney Weaver
-- Aliens (id: 23)
(23, 57), (23, 97), -- Sigourney Weaver, Bill Paxton
-- Blade Runner (id: 24)
(24, 43), (24, 58), (24, 59), -- Harrison Ford, Rutger Hauer, Sean Young
-- Die Hard (id: 25)
(25, 20), (25, 60), -- Bruce Willis, Alan Rickman
-- Mad Max: Fury Road (id: 26)
(26, 32), (26, 62), -- Tom Hardy, Charlize Theron
-- Jurassic Park (id: 27)
(27, 63), (27, 64), (27, 65), -- Sam Neill, Laura Dern, Jeff Goldblum
-- Blade Runner 2049 (id: 28)
(28, 66), (28, 43), (28, 67), -- Ryan Gosling, Harrison Ford, Ana de Armas
-- The Terminator (id: 29)
(29, 45), (29, 46), -- Arnold Schwarzenegger, Linda Hamilton
-- Predator (id: 30)
(30, 45), -- Arnold Schwarzenegger
-- Total Recall (id: 31)
(31, 45), -- Arnold Schwarzenegger
-- RoboCop (id: 32)
(32, 68), (32, 69), -- Peter Weller, Nancy Allen
-- The Fifth Element (id: 33)
(33, 20), (33, 70), (33, 30), -- Bruce Willis, Milla Jovovich, Gary Oldman
-- Starship Troopers (id: 34)
(34, 71), (34, 72), -- Casper Van Dien, Denise Richards
-- John Wick (id: 35)
(35, 22), -- Keanu Reeves
-- Casino Royale (id: 36)
(36, 74), (36, 75), (36, 76), -- Daniel Craig, Eva Green, Judi Dench
-- Skyfall (id: 37)
(37, 74), (37, 77), (37, 76), -- Daniel Craig, Javier Bardem, Judi Dench
-- Heat (id: 38)
(38, 1), (38, 79), -- Al Pacino, Val Kilmer
-- L.A. Confidential (id: 39)
(39, 80), (39, 52), (39, 81), -- Kevin Spacey, Russell Crowe, Guy Pearce
-- No Country for Old Men (id: 40)
(40, 82), (40, 83), (40, 77), -- Tommy Lee Jones, Josh Brolin, Javier Bardem
-- The Fugitive (id: 41)
(41, 43), (41, 82), -- Harrison Ford, Tommy Lee Jones
-- The Rock (id: 42)
(42, 84), (42, 85), (42, 86), -- Sean Connery, Nicolas Cage, Ed Harris
-- Con Air (id: 43)
(43, 86), (43, 37), -- Nicolas Cage, John Travolta
-- Face/Off (id: 44)
(44, 37), (44, 86), -- John Travolta, Nicolas Cage
-- Mission: Impossible (id: 45)
(45, 87), (45, 88), -- Tom Cruise, Jon Voight
-- Mission: Impossible - Ghost Protocol (id: 46)
(46, 87), (46, 90), -- Tom Cruise, Jeremy Renner
-- GoldenEye (id: 47)
(47, 91), (47, 92), (47, 93), -- Pierce Brosnan, Sean Bean, Famke Janssen
-- The Bourne Identity (id: 48)
(48, 14), (48, 95), -- Matt Damon, Franka Potente
-- The Bourne Ultimatum (id: 49)
(49, 14), (49, 97), -- Matt Damon, Julia Stiles
-- Minority Report (id: 50)
(50, 87), -- Tom Cruise
-- I, Robot (id: 51)
(51, 99), (51, 100), -- Will Smith, Bridget Moynahan
-- District 9 (id: 52)
(52, 102), -- Sharlto Copley
-- Edge of Tomorrow (id: 53)
(53, 87), (53, 103), -- Tom Cruise, Emily Blunt
-- Source Code (id: 54)
(54, 106), (54, 107), -- Jake Gyllenhaal, Michelle Monaghan
-- Looper (id: 55)
(55, 109), (55, 20), (55, 103), -- Joseph Gordon-Levitt, Bruce Willis, Emily Blunt
-- Children of Men (id: 56)
(56, 111), (56, 112), -- Clive Owen, Julianne Moore
-- Serenity (id: 57)
(57, 114), (57, 115), -- Nathan Fillion, Gina Torres
-- Dredd (id: 58)
(58, 116), (58, 117), -- Karl Urban, Olivia Thirlby
-- Watchmen (id: 59)
(59, 119), -- Jackie Earle Haley
-- V for Vendetta (id: 60)
(60, 51), (60, 121), -- Natalie Portman, Hugo Weaving
-- Sin City (id: 61)
(61, 123), (61, 20), (61, 124), -- Mickey Rourke, Bruce Willis, Jessica Alba
-- 300 (id: 62)
(62, 125), (62, 126), -- Gerard Butler, Lena Headey
-- Iron Man (id: 63)
(63, 128), (63, 129), -- Robert Downey Jr., Gwyneth Paltrow
-- The Avengers (id: 64)
(64, 128), (64, 130), (64, 131), (64, 132), (64, 148), -- Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson
-- Guardians of the Galaxy (id: 65)
(65, 134), (65, 135), (65, 136), (65, 137), -- Chris Pratt, Zoe Saldaña, Dave Bautista, Vin Diesel
-- Logan (id: 66)
(66, 55), (66, 56), (66, 139), -- Hugh Jackman, Patrick Stewart, Dafne Keen
-- Spider-Man: Into the Spider-Verse (id: 67)
(67, 140), (67, 106), (67, 141), -- Shameik Moore, Jake Gyllenhaal, Hailee Steinfeld
-- Avengers: Infinity War (id: 68)
(68, 128), (68, 130), (68, 131), (68, 143), -- Robert Downey Jr., Chris Evans, Mark Ruffalo, Josh Brolin
-- Avengers: Endgame (id: 69)
(69, 128), (69, 130), (69, 131), (69, 148), -- Robert Downey Jr., Chris Evans, Mark Ruffalo, Scarlett Johansson
-- Dune (id: 70)
(70, 145), (70, 146), (70, 144), -- Timothée Chalamet, Rebecca Ferguson, Zendaya
-- Dune: Part Two (id: 71)
(71, 145), (71, 144), (71, 146), -- Timothée Chalamet, Zendaya, Rebecca Ferguson
-- Top Gun: Maverick (id: 72)
(72, 87), (72, 149), (72, 150), -- Tom Cruise, Miles Teller, Jennifer Connelly
-- Everything Everywhere All at Once (id: 73)
(73, 151), (73, 152), (73, 153), -- Michelle Yeoh, Stephanie Hsu, Ke Huy Quan
-- Planet of the Apes (id: 74)
(74, 155), (74, 156), -- Charlton Heston, Roddy McDowall
-- Rise of the Planet of the Apes (id: 75)
(75, 157), (75, 158), (75, 159), -- James Franco, Freida Pinto, Andy Serkis
-- Dawn of the Planet of the Apes (id: 76)
(76, 159), (76, 30), (76, 162), -- Andy Serkis, Gary Oldman, Keri Russell
-- War for the Planet of the Apes (id: 77)
(77, 159), (77, 163), -- Andy Serkis, Woody Harrelson
-- Independence Day (id: 80)
(80, 99), (80, 166), (80, 65), -- Will Smith, Bill Pullman, Jeff Goldblum
-- Armageddon (id: 81)
(81, 20), (81, 168), (81, 169), -- Bruce Willis, Ben Affleck, Liv Tyler
-- The Martian (id: 82)
(82, 14), (82, 172), -- Matt Damon, Jessica Chastain
-- Interstellar (id: 83)
(83, 170), (83, 171), (83, 172), -- Matthew McConaughey, Anne Hathaway, Jessica Chastain
-- Gravity (id: 84)
(84, 173), (84, 174), -- Sandra Bullock, George Clooney
-- Mad Max 2: The Road Warrior (id: 85)
(85, 175), -- Mel Gibson
-- Escape from New York (id: 86)
(86, 177), (86, 178), -- Kurt Russell, Lee Van Cleef
-- The Thing (id: 87)
(87, 177), -- Kurt Russell
-- E.T. the Extra-Terrestrial (id: 88)
(88, 179), (88, 180), -- Dee Wallace, Henry Thomas
-- Indiana Jones and the Raiders of the Lost Ark (id: 89)
(89, 43), (89, 181), (89, 182), -- Harrison Ford, Karen Allen, Paul Freeman
-- Indiana Jones and the Last Crusade (id: 90)
(90, 43), (90, 84), -- Harrison Ford, Sean Connery
-- The Hunt for Red October (id: 91)
(91, 84), (91, 86), -- Sean Connery, Ed Harris
-- True Lies (id: 92)
(92, 45), (92, 10), -- Arnold Schwarzenegger, Jamie Lee Curtis
-- Speed (id: 93)
(93, 22), (93, 173), (93, 184), -- Keanu Reeves, Sandra Bullock, Dennis Hopper
-- Kill Bill: Vol. 1 (id: 94)
(94, 39), (94, 185), (94, 186), -- Uma Thurman, David Carradine, Daryl Hannah
-- Kill Bill: Vol. 2 (id: 95)
(95, 39), (95, 185), (95, 187), -- Uma Thurman, David Carradine, Michael Madsen
-- Inglourious Basterds (id: 96)
(96, 3), (96, 4), (96, 188), (96, 189), -- Brad Pitt, Christoph Waltz, Mélanie Laurent, Diane Kruger
-- The Hateful Eight (id: 97)
(97, 38), (97, 177), (97, 190), -- Samuel L. Jackson, Kurt Russell, Jennifer Jason Leigh
-- Once Upon a Time in Hollywood (id: 98)
(98, 12), (98, 3), (98, 191), -- Leonardo DiCaprio, Brad Pitt, Margot Robbie
-- Baby Driver (id: 99)
(99, 192), (99, 80), (99, 193), -- Ansel Elgort, Kevin Spacey, Lily James
-- Kingsman: The Secret Service (id: 100)
(100, 195), (100, 196), (100, 38), -- Colin Firth, Taron Egerton, Samuel L. Jackson
-- Kick-Ass (id: 101)
(101, 197), (101, 198), (101, 86), -- Aaron Taylor-Johnson, Chloë Grace Moretz, Nicolas Cage
-- Deadpool (id: 102)
(102, 200), (102, 201), (102, 202), -- Ryan Reynolds, Morena Baccarin, Ed Skrein
-- Sicario (id: 103)
(103, 103), (103, 204), (103, 83), -- Emily Blunt, Benicio Del Toro, Josh Brolin
-- Arrival (id: 104)
(104, 205), (104, 90), -- Amy Adams, Jeremy Renner
-- Prisoners (id: 105)
(105, 55), (105, 106), (105, 207), -- Hugh Jackman, Jake Gyllenhaal, Viola Davis
-- Ford v Ferrari (id: 106)
(106, 14), (106, 26), (106, 209), -- Matt Damon, Christian Bale, Caitriona Balfe
-- 1917 (id: 107)
(107, 211), (107, 212); -- George MacKay, Dean-Charles Chapman