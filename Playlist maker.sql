/*We've created a database of songs and artists, and you'll make playlists
from them in this challenge. In this first step, select the title of all 
the songs by the artist named 'Queen'.*/
CREATE TABLE artists (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    name TEXT,
    country TEXT,
    genre TEXT);

INSERT INTO artists (name, country, genre) VALUES
    ("Taylor Swift", "US", "Pop"),
    ("Led Zeppelin", "US", "Hard rock"),
    ("ABBA", "Sweden", "Disco"),
    ("Queen", "UK", "Rock"),
    ("Celine Dion", "Canada", "Pop"),
    ("Meatloaf", "US", "Hard rock"),
    ("Garth Brooks", "US", "Country"),
    ("Shania Twain", "Canada", "Country"),
    ("Rihanna", "US", "Pop"),
    ("Guns N' Roses", "US", "Hard rock"),
    ("Gloria Estefan", "US", "Pop"),
    ("Bob Marley", "Jamaica", "Reggae");

CREATE TABLE songs (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    artist TEXT,
    title TEXT);

INSERT INTO songs (artist, title) VALUES
    ("Taylor Swift", "Shake it off"),
    ("Rihanna", "Stay"),
    ("Celine Dion", "My heart will go on"),
    ("Celine Dion", "A new day has come"),
    ("Shania Twain", "Party for two"),
    ("Gloria Estefan", "Conga"),
    ("Led Zeppelin", "Stairway to heaven"),
    ("ABBA", "Mamma mia"),
    ("Queen", "Bicycle Race"),
    ("Queen", "Bohemian Rhapsody"),
    ("Guns N' Roses", "Don't cry");

SELECT title FROM songs WHERE artist = "Queen";

/*Now you'll make a 'Pop' playlist. In preparation,
select the name of all of the artists from the 'Pop' genre. */

SELECT name FROM artists WHERE genre = "Pop";

/*To finish creating the 'Pop' playlist, add another query that will
select the title of all the songs from the 'Pop' artists. It should
use IN on a nested subquery that's based on your previous query.*/

SELECT title FROM songs WHERE artist IN (
    SELECT name FROM artists WHERE genre="Pop");
