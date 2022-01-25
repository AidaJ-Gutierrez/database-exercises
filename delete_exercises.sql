USE codeup_test_db;
--
-- -- delete Albums released after 1991
DELETE FROM albums WHERE release_date > 1991;
--
-- --delete Albums with the genre 'disco'
 DELETE FROM albums WHERE genre = 'disco';
--
-- --delete Albums by 'Whitney Houston'
DELETE * FROM albums WHERE artis = 'Whitney Houston';
SELECT * FROM albums;