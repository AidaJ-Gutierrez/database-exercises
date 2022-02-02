CREATE DATABASE IF NOT EXISTS adlister_db;
USE adlister_db;




CREATE TABLE IF NOT EXISTS users(
 id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 email VARCHAR(100) UNIQUE NOT NULL,
 password VARCHAR(255) NOT NULL,
 PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS ads(
 id INT UNSIGNED NOT NULL AUTO_INCREMENT,
 name VARCHAR(255) UNIQUE,
 description TEXT NOT NULL,
 user_id INT UNSIGNED NOT NULL,
 FOREIGN KEY (user_id) REFERENCES users(id),
 PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS categories(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
title VARCHAR(240) NOT NULL ,
ads_id INT UNSIGNED NOT NULL,
FOREIGN KEY (ads_id) REFERENCES ads(id),
PRIMARY KEY (id)
);

INSERT INTO users(email, password) VALUES ('user1@exampledb.com', '12345');
INSERT INTO ads(name, description) VALUES ('couch', 'couch in excelent condition, only asking $5');


SELECT email
FROM users
WHERE id IN(
    SELECT name
    FROM ads
    WHERE user_id = users.id
);


SELECT title
FROM categories
WHERE id IN(
    SELECT name
    FROM ads
    WHERE ads_id = categories.id
);


SELECT name
FROM ads
WHERE id IN (
    SELECT title
    FROM categories
    WHERE ads_id = categories.id
    );

SELECT name, description
FROM ads
WHERE id IN(
    SELECT email
    FROM users
    WHERE id = ads.id
    );

