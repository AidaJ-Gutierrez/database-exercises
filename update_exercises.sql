USE codeup_test_db;

SELECT 'Albums' AS 'List of Albums';
SELECT * FROM albums;
UPDATE albums SET sales = sales * 10 ;

SELECT 'List of Albums released before 1980' AS '**NOTE**';
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;
SELECT * FROM albums WHERE release_date < 1980;

SELECT 'List of Albums by Michael Jackson' AS 'Michael Jackson Albums';
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums Set artist= 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT * FROM albums WHERE artist = 'Peter Jackson';