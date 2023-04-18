USE codeup_test_db;
/*mysql -u codeup_test_user -p < select_exercises.sql*/
SELECT name AS 'The Name of Pink Floyds Albums' FROM albums WHERE artist = 'Pink Floyd';

SELECT release_date AS 'Release Date of Sgt. Pepper''s Lonely Hearts Club Band' FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';


-- SELECT genre FROM albums WHERE name = 'Nevermind';

-- SELECT *, 'This is from the 90''s' AS comment FROM albums WHERE release_date BETWEEN 1990 AND 1999;
SELECT name AS 'Albums Released in the 90s' FROM albums WHERE release_date BETWEEN 1989 AND 2000;

-- SELECT 'certified sales lower than 20 million' AS comment;
-- SELECT * FROM albums WHERE sales < 20;
-- SELECT *, 'certified sales lower than 20 million' AS comment FROM albums WHERE sales < 20;
SELECT name AS 'Albums with certified sales lower than 20 million' FROM albums WHERE sales < 20;


SELECT name AS 'Albums With Genre "Rock"' FROM albums WHERE genre = 'Rock';
-- SELECT * FROM albums WHERE genre = 'Rock';

