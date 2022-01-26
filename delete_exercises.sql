USE codeup_test_db;
--
-- -- delete Albums released after 1991
SELECT 'List of Albums released after 1991' AS 'Info';
--SELECT * FROM albums WHERE release_date > 1991;
DELETE FROM albums WHERE release_date > 1991;
--
-- --delete Albums with the genre 'disco'
SELECT 'List of Albums whit genre Disco' AS 'Info';
--SELECT * FROM albums WHERE genre = 'disco';
 DELETE FROM albums WHERE genre = 'disco';
--
-- --delete Albums by 'Whitney Houston'
SELECT 'Albums by Whitney Houston' AS 'Info';
--SELECT * FROM albums WHERE artis = 'Whitney Houston';
DELETE FROM albums WHERE artis = 'Whitney Houston';

SELECT * FROM albums;