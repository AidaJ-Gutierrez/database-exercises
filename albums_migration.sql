USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                        artist VARCHAR(50) NOT NULL,
                        name  VARCHAR(50) NOT NULL,
                        release_date Int UNSIGNED,
                        sales float UNSIGNED,
                        genre VARCHAR(100),
                        PRIMARY KEY (id)
);

DESCRIBE albums;
SHOW CREATE TABLE albums;