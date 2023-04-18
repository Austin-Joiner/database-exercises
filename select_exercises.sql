USE codeup_test_db;
/*mysql -u codeup_test_user -p < select_exercises.sql*/
SELECT name FROM albums Where artist = 'Pink Floyd';

SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT * FROM albums WHERE release_date BETWEEN 1989 AND 2000;

SELECT * FROM albums WHERE sales < 20;

SELECT * FROM albums WHERE genre = 'Rock';

