USE codeup_test_db;

-- it will show all results for Pink Floyd
SELECT * FROM albums WHERE artist = 'Pink Floyd';

-- it will show the name of albums for Pink Floyd
SELECT name FROM albums WHERE artist = 'Pink Floyd';

-- -- it will show the date for the album by the Beetles
SELECT release_date FROM albums WHERE name ='Sgt. Pepper''s Lonely Hearts Club Band';

-- -- it will show the genre for Nevermind
SELECT genre FROM albums WHERE name = 'Nevermind';

-- -- it will show all albums released between 1990 and 1999
SELECT * FROM albums WHERE release_date BETWEEN 1990 and 1999;

-- it will show names albums released between 1990 and 1999
SELECT name FROM albums WHERE release_date BETWEEN 1990 and 1999;

SELECT * FROM albums WHERE sales < 20;
-- or
SELECT name, sales FROM albums WHERE sales < 20;

-- -- it will show all albums with gere equal to Rock
SELECT * FROM albums WHERE genre = 'rock';
