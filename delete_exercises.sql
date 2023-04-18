USE codeup_test_db;

SELECT name AS 'Albums released after 1991' FROM albums WHERE release_date > 1991;
SELECT name AS 'Albums with genre disco' FROM albums WHERE genre LIKE '%Disco%';
SELECT name AS 'Albums By WHITNEY HOUSTON' FROM albums WHERE artist = 'Whitney Houston';
