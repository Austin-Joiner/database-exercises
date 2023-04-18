USE codeup_test_db;

SELECT name FROM albums Where artist = 'Pink Floyd';

SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre FROM albums WHERE name = Nevermind;

SELECT * FROM albums WHERE release_date = release_date >= 1990 AND release_date <= 1999;

SELECT * FROM albums WHERE sales = sale < 20;

SELECT * FROM albums WHERE genre = 'Rock';

