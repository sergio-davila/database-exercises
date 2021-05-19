use codeup_test_db;

SELECT 'All Pink Floyd albums' AS 'Info';
SELECT name FROM albums WHERE artist = 'Pink Floyd';
SELECT 'Sgt. Pepper''s Lonely Hearts Club Band''s release date' AS 'Info';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT 'Nevermind''s genre' AS 'Info';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT 'Albums released in the 1990''s' AS 'Info';
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT 'Albums that had less than 20 million certified sales' AS 'Info';
SELECT name FROM albums WHERE sales < 20.0;
SELECT 'Albums whose genre is ''Rock''' AS 'Info';
SELECT name FROM albums WHERE genre = 'Rock';