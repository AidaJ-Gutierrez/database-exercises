USE codeup_test_db;

TRUNCATE quotes;


INSERT INTO quotes(author_first_name, author_last_name, content)
VALUES( 'Douglas', 'Adams', 'Don`t Panic'),
('Steve', 'Maraboli', 'Happiness is not the absence of problems.. '),
('Ernest', 'Hemingway', 'The world bracks everyone...'),
('Lou', 'Holtz', 'Virtually nothing is impossible in this world if you put your mind ... ');

SELECT id, author_first_name, content FROM quotes;

