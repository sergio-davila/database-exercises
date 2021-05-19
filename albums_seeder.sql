-- Insert statement for albums
use codeup_test_db;

truncate albums;

insert into albums (artist, name, release_date, genre, sales)
values ('Michael Jackson', 'Thriller', 1982, 'Pop, Rock, R&B', 47.3),
       ('AC/DC', 'Back in Black', 1980, 'Hard rock', 26.1),
       ('Pink Floyd', 'The Dark Side of the Moon', 1973, 'Progressive rock', 24.2),
       ('Meat Loaf', 'Bat Out of Hell', 1977, 'Hard rock, Progressive rock', 21.5),
       ('Whitney Houston / Various artists', 'The Bodyguard', 1992, 'R&B, Soul, Pop, Soundtrack', 28.4),
       ('Eagles', 'Their Greatest Hits (1971–1975)', 1976, 'Rock, Soft rock, Folk rock', 32.2),
       ('Bee Gees / Various artists', 'Saturday Night Fever', 1977, 'Disco', 21.6),
       ('Fleetwood Mac', 'Rumours', 1977, 'Soft rock', 27.9),
       ('Various artists', 'Grease: The Original Soundtrack from the Motion Picture', 1978, 'Soundtrack', 14.4),
       ('Led Zeppelin', 'Led Zeppelin IV', 1971, 'Hard rock, Heavy metal, Folk', 29.0),
       ('Michael Jackson', 'Bad', 1987, 'Pop, Funk, Rock', 19.3),
       ('Alanis Morissette', 'Jagged Little Pill', 1995, 'Alternative rock', 24.4),
       ('Shania Twain', 'Come On Over', 1997, 'Country, Pop', 29.6),
       ('Celine Dion', 'Falling into You', 1996, 'Pop, Soft rock', 20.2),
       ('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', 1967, 'Rock', 13.1),
       ('Eagles', 'Hotel California', 1976, 'Rock, Soft rock, Folk rock', 21.5),
       ('Various artists', 'Dirty Dancing', 1987, 'Pop, Rock, R&B', 17.9),
       ('Adele', '21', 2011, 'Pop, Soul', 25.3),
       ('Celine Dion', 'Let''s Talk About Love', 1997, 'Pop, Soft rock', 19.3),
       ('The Beatles', '1', 2000, 'Rock', 22.6),
       ('Michael Jackson', 'Dangerous', 1991, 'Rock, Funk, Pop', 16.3),
       ('Madonna', 'The Immaculate Collection', 1990, 'Pop, Dance', 19.4),
       ('The Beatles', 'Abbey Road', 1969, 'Rock', 14.4),
       ('ABBA', 'Gold: Greatest Hits', 1992, 'Pop, Disco', 23.0),
       ('Bruce Springsteen', 'Born in the USA', 1984, 'Heartland Rock', 19.6),
       ('Pink Floyd', 'The Wall', 1979, 'Progressive Rock', 18.7),
       ('James Horner', 'Titanic: Music from the Motion Picture', 1997, 'Film Score', 18.1),
       ('Dire Straits', 'Brothers in Arms', 1985, 'Roots Rock, Blues Rock, Soft Rock', 17.7),
       ('Nirvana', 'Nevermind', 1991, 'Grunge, Alternative Rock', 16.7),
       ('Santana', 'Supernatural', 1999, 'Latin Rock', 20.5),
       ('Guns N Roses', 'Appetite For Destruction', 1987, 'Hard Rock', 21.9),
       ('Elton John', 'Goodbye Yellow Brick Road', 1973, 'Rock, Pop Rock, Glam Rock', 8.5);