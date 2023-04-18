USE codeup_test_db;

SELECT name AS 'All Albums' FROM albums;
SELECT name AS 'All Albums Released Before 1980' FROM albums WHERE release_date < 1980;
SELECT name AS 'All Albums By Michael Jackson' FROM albums WHERE artist = 'Michael Jackson';



UPDATE albums
SET sales = sales * 10 WHERE sales;
SELECT sales AS 'SALES' FROM albums;

UPDATE albums
SET release_date = release_date - 100 WHERE release_date < 1980;
SELECT release_date AS 'All Albums Released Before 1980' FROM albums WHERE release_date < 1980;

UPDATE albums
SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT artist AS 'All Albums' FROM albums; -- test to make sure michael jackson got changed to peter jackson


SELECT * FROM albums;