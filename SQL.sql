DROP TABLE showing;
DROP TABLE movie;
DROP TABLE theater;

CREATE TABLE movie(
	id INTEGER NOT NULL
		PRIMARY KEY	GENERATED ALWAYS AS IDENTITY 
		(START WITH 1, INCREMENT BY 1),
	name VARCHAR(100),
	description VARCHAR(200),
	poster VARCHAR(100)
);
CREATE TABLE theater(
	id INTEGER NOT NULL
			PRIMARY KEY	GENERATED ALWAYS AS IDENTITY 
			(START WITH 1, INCREMENT BY 1),
	name VARCHAR(40),
	zipcode INTEGER
);
CREATE TABLE showing(
	id INTEGER NOT NULL
			PRIMARY KEY	GENERATED ALWAYS AS IDENTITY 
			(START WITH 1, INCREMENT BY 1),
	movieID INTEGER,
	theaterID INTEGER,
	showtime TIME,
	CONSTRAINT fkMovie FOREIGN KEY (movieID) REFERENCES movie (id),
	CONSTRAINT fkTheater FOREIGN KEY (theaterID) REFERENCES theater (id)
);


INSERT INTO movie (name,description,poster) VALUES ('Beauty and the Beast','Romance','posters/1.jpg');
INSERT INTO movie (name,description,poster) VALUES ('Wonder Woman','Action','posters/2.jpg');
INSERT INTO movie (name,description,poster) VALUES ('Logan','Action','posters/3.jpg');
INSERT INTO movie (name,description,poster) VALUES ('Guardians of the Galaxy','Action','posters/4.jpg');
INSERT INTO movie (name,description,poster) VALUES ('Alien: Covenant','Horror','posters/5.jpg');
INSERT INTO movie (name,description,poster) VALUES ('Spider-Man: Homecoming','Action','posters/6.jpg');
INSERT INTO movie (name,description,poster) VALUES ('Dunkirk','Action','posters/7.jpg');
INSERT INTO movie (name,description,poster) VALUES ('Baby Driver','Musical','posters/8.jpg');
INSERT INTO movie (name,description,poster) VALUES ('John Wick: Chapter 2','Action','posters/9.jpg');
--INSERT INTO movie (name,description) VALUES ('','');

INSERT INTO theater (name,zipcode) VALUES ('AMC Stonebriar 24',75093);
INSERT INTO theater (name,zipcode) VALUES ('Angelika Film Center & Cafe',75024);
INSERT INTO theater (name,zipcode) VALUES ('Cinemark Allen 16',75013);
INSERT INTO theater (name,zipcode) VALUES ('Cinemark Frisco Square',75034);
INSERT INTO theater (name,zipcode) VALUES ('Cinemark Legacy',75025);
INSERT INTO theater (name,zipcode) VALUES ('Cinemark Movies 14',75069);
INSERT INTO theater (name,zipcode) VALUES ('Cinemark West Plano',75093);
INSERT INTO theater (name,zipcode) VALUES ('iPic Theaters',75069);
INSERT INTO theater (name,zipcode) VALUES ('Studio Movie Grill',75093);
--INSERT INTO theater (name,zipcode) VALUES ('','');

-- Movie ID #1 
-- INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,1,'19:00');
-- INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,1,'20:00');
-- INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,1,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,2,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,2,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,2,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,3,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,3,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,3,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,4,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,4,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,4,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,5,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,5,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,5,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,6,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,6,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,6,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,7,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,7,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,7,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,8,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,8,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,8,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,9,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,9,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (1,9,'21:30');

-- Movie ID #2
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,1,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,1,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,1,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,2,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,2,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,2,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,3,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,3,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,3,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,4,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,4,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,4,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,5,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,5,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,5,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,6,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,6,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,6,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,7,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,7,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,7,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,8,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,8,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,8,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,9,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,9,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (2,9,'21:30');

-- Movie ID #3
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,1,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,1,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,1,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,2,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,2,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,2,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,3,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,3,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,3,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,4,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,4,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,4,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,5,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,5,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,5,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,6,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,6,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,6,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,7,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,7,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,7,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,8,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,8,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,8,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,9,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,9,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (3,9,'21:30');

-- Movie ID #4
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,1,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,1,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,1,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,2,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,2,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,2,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,3,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,3,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,3,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,4,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,4,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,4,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,5,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,5,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,5,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,6,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,6,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,6,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,7,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,7,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,7,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,8,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,8,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,8,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,9,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,9,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (4,9,'21:30');

-- Movie ID #5
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,1,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,1,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,1,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,2,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,2,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,2,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,3,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,3,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,3,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,4,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,4,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,4,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,5,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,5,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,5,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,6,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,6,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,6,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,7,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,7,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,7,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,8,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,8,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,8,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,9,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,9,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (5,9,'21:30');

-- Movie ID #6
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,1,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,1,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,1,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,2,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,2,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,2,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,3,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,3,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,3,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,4,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,4,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,4,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,5,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,5,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,5,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,6,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,6,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,6,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,7,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,7,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,7,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,8,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,8,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,8,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,9,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,9,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (6,9,'21:30');

-- Movie ID #7
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,1,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,1,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,1,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,2,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,2,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,2,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,3,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,3,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,3,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,4,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,4,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,4,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,5,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,5,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,5,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,6,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,6,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,6,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,7,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,7,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,7,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,8,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,8,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,8,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,9,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,9,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (7,9,'21:30');

-- Movie ID #8
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,1,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,1,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,1,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,2,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,2,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,2,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,3,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,3,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,3,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,4,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,4,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,4,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,5,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,5,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,5,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,6,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,6,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,6,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,7,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,7,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,7,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,8,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,8,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,8,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,9,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,9,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (8,9,'21:30');

-- Movie ID #9
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,1,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,1,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,1,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,2,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,2,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,2,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,3,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,3,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,3,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,4,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,4,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,4,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,5,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,5,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,5,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,6,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,6,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,6,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,7,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,7,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,7,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,8,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,8,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,8,'21:30');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,9,'19:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,9,'20:00');
INSERT INTO showing (movieID,theaterID,showtime) VALUES (9,9,'21:30');
