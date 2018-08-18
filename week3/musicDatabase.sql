use hyf_1;
CREATE TABLE `album` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`title` VARCHAR (100),
    `genre` VARCHAR (100),
    `year` INT (4),
    `track_count` INT NOT NULL,
    `producer` VARCHAR (100),
    PRIMARY KEY (`id`)
) ENGINE InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

 CREATE TABLE `artist` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`name` VARCHAR (100) NOT NULL,
    `date_of_birth` DATE,
    `stage_name` VARCHAR (100) NOT NULL,
    PRIMARY KEY (id)
 ) ENGINE InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;

CREATE TABLE `song` (
	`id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
	`title` VARCHAR (100),
    `length` INT (10) NOT NULL,
    `album_id` INT UNSIGNED NOT NULL ,
    `artist` VARCHAR (100),
    PRIMARY KEY (`id`),
    CONSTRAINT `fk_album_id` FOREIGN KEY (`album_id`) REFERENCES `album` (`id`) ON DELETE CASCADE
) ENGINE InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci; 

CREATE TABLE `song_artist` (
	`song_id` INT UNSIGNED NOT NULL,
    `artist_id` INT UNSIGNED NOT NULL,
	PRIMARY KEY (song_id, artist_id),
    CONSTRAINT `fk_artist_id` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`id`) ON DELETE CASCADE,
	CONSTRAINT `fk_song_id` FOREIGN KEY (`song_id`) REFERENCES `song` (`id`) ON DELETE CASCADE
)ENGINE InnoDB DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_unicode_ci;


SELECT * FROM album;

INSERT INTO album VALUES (NULL , 'I will always love you', 'pop',1997, 9, 'Whitney Houston');
INSERT INTO album VALUES (NULL , 'The Colour of My Love', 'pop',1993, 7, 'Celine Dion');
INSERT INTO album VALUES (NULL , 'Appetite for Destruction', 'rock',1987, 12, 'Guns n Roses');
INSERT INTO album VALUES (NULL , 'Black out', 'rock',1982, 9, 'dieter dierks');
INSERT INTO album VALUES (NULL , 'Nine Lives', 'metal',1997, 15, 'Kevin Shirley');
INSERT INTO album VALUES (NULL , 'Reload', 'heavy metal',1997, 13, 'Bob rock');
INSERT INTO album VALUES (NULL , 'Invincible', 'pop',2001, 16, 'Rodney Jerkins');
INSERT INTO album VALUES (NULL , 'Scorpion', 'Hip-hop/rap',2018, 25, 'Aubrey Drake Graham');



SELECT * FROM song;

INSERT INTO song VALUES (NULL , 'I will always love you',10 ,1, 'Whitney Houston');
INSERT INTO song VALUES (NULL , 'The power of love', 6 ,2, 'Celine Dion');
INSERT INTO song VALUES (NULL , 'Welcome to the jungle', 8 ,3, 'Guns n Roses');
INSERT INTO song VALUES (NULL , 'Cant live without you', 4 ,4, 'Scorpion');
INSERT INTO song VALUES (NULL , 'Crash', 5 ,5, 'Aerosmith');
INSERT INTO song VALUES (NULL , 'The unforgiven', 4 ,6, 'Metallica');
INSERT INTO song VALUES (NULL , 'You are my life', 5 ,7, 'Michael Jackson');
INSERT INTO song VALUES (NULL , 'Nice for what', 4 ,8, 'Drake');

SELECT * FROM artist;  
INSERT INTO artist VALUES (NULL, 'Whitney Houston', '1963-08-09', 'Whitney Houston');
INSERT INTO artist VALUES (NULL, 'Celine Dion', '1968-03-30', 'Celine Dion');
INSERT INTO artist VALUES (NULL, 'Axl Rose, Slash, Dizzy', '1985-01-01', 'Guns n Roses');
INSERT INTO artist VALUES (NULL, 'Rudolf, Klaus, Matthius', '1964-01-01', 'Scorpion');
INSERT INTO artist VALUES (NULL, 'Aerosmith', '1973-01-01', 'Aerosmith');
INSERT INTO artist VALUES (NULL, 'Metallica', '1981-01-01', 'Metallica');
INSERT INTO artist VALUES (NULL, 'Michael Jackson', '1958-08-29', 'Michael Jackson');
INSERT INTO artist VALUES (NULL, 'Drake', '1986-10-24', 'Drake');

SELECT * FROM song_artist;

INSERT INTO song_artist VALUES (3, 1);
INSERT INTO song_artist VALUES (4, 2);
INSERT INTO song_artist VALUES (5, 3);
INSERT INTO song_artist VALUES (6, 4);
INSERT INTO song_artist VALUES (7, 5);


