# CREATE DATABASE IF NOT EXISTS join_test_db;
#
# # COPIED FROM CURRICULUM:
# CREATE TABLE roles (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        name VARCHAR(100) NOT NULL,
#                        PRIMARY KEY (id)
# );
#
# CREATE TABLE users (
#                        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                        name VARCHAR(100) NOT NULL,
#                        email VARCHAR(100) NOT NULL,
#                        role_id INT UNSIGNED DEFAULT NULL,
#                        PRIMARY KEY (id),
#                        FOREIGN KEY (role_id) REFERENCES roles (id)
# );
#
# INSERT INTO roles (name) VALUES ('admin');
# INSERT INTO roles (name) VALUES ('author');
# INSERT INTO roles (name) VALUES ('reviewer');
# INSERT INTO roles (name) VALUES ('commenter');
#
# INSERT INTO users (name, email, role_id) VALUES
#                                              ('bob', 'bob@example.com', 1),
#                                              ('joe', 'joe@example.com', 2),
#                                              ('sally', 'sally@example.com', 3),
#                                              ('adam', 'adam@example.com', 3),
#                                              ('jane', 'jane@example.com', null),
#                                              ('mike', 'mike@example.com', null);
#
# # Insert 4 new users into the database. One should have a NULL role. The other three should be authors.
# INSERT INTO users (name, email, role_id) VALUES
#                                              ('ana', 'ana@example1.com', 2),
#                                              ('victor', 'victor@example1.com', 2),
#                                              ('gaby', 'gaby@example1.com', 2),
#                                              ('adrian', 'adrian@example1.com', null);
#
#
# # Use JOIN, LEFT JOIN, and RIGHT JOIN to combine results from the users and roles tables as we did in the lesson. Before you run each query, guess the expected number of results.
# SELECT users.name, roles.name
# FROM users
# RIGHT JOIN roles on users.role_id = roles.id;
#
# SELECT users.name, roles.name
# FROM users
#          LEFT JOIN roles on users.role_id = roles.id;
#
#
# # Use COUNT and the appropriate join type to get a list of roles along with the number of users that have a given role. Hint: You will also need to use GROUP BY in the query.
#
# SELECT roles.name,  COUNT(roles.id)
# FROM users
# JOIN roles on users.role_id = roles.id
# GROUP BY roles.name;



USE employees;

DESCRIBE dept_emp;
DESCRIBE employees;
DESCRIBE titles;
DESCRIBE departments;
DESCRIBE dept_manager;
DESCRIBE salaries;

# write a query that shows each department along with the name of the current manager for that department.
SELECT departments.dept_name, CONCAT( employees.first_name, ' ', employees.last_name) as Name
FROM employees
         JOIN dept_manager
              ON dept_manager.emp_no = employees.emp_no
         JOIN departments
              on departments.dept_no = dept_manager.dept_no
  And dept_manager.to_date like '%9999%'
ORDER BY dept_name;


# Find the name of all departments currently managed by women.
SELECT departments.dept_name, CONCAT( employees.first_name, ' ', employees.last_name)
FROM employees
         JOIN dept_manager
              ON dept_manager.emp_no = employees.emp_no
         JOIN departments
              on departments.dept_no = dept_manager.dept_no
WHERE employees.gender = 'F'
  And dept_manager.to_date like '%9999%'
ORDER BY dept_name;

# Find the current titles of employees currently working in the Customer Service department.


SELECT titles.title AS Title,COUNT(titles.title) AS TOTAL
FROM titles
         JOIN dept_emp
              ON dept_emp.emp_no = titles.emp_no
WHERE dept_emp.dept_no = 'd009'
  AND dept_emp.to_date LIKE '9999-%'
  AND titles.to_date LIKE '9999-%'
GROUP BY titles.title;



# Find the current salary of all current managers.

SELECT departments.dept_name, CONCAT( employees.first_name, ' ', employees.last_name) as Name, salaries.salary
FROM employees
         JOIN salaries
              ON salaries.emp_no = employees.emp_no
         JOIN dept_manager
             ON dept_manager.emp_no = salaries.emp_no
         JOIN departments
             ON  departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date LIKE '9999-%'
And salaries.to_date like '%9999%'
ORDER BY dept_name;


# Bonus: Find the names of all current employees, their department name, and their current manager's name .

# SELECT  CONCAT( employees.first_name, ' ', employees.last_name) as Name, departments.dept_name,
# FROM employees
#          JOIN
#               ON  = employees.emp_no
#          JOIN dept_manager
#               ON dept_manager.emp_no = salaries.emp_no
#          JOIN departments
#               ON  departments.dept_no = dept_manager.dept_no
# WHERE dept_manager.to_date LIKE '9999-%'
#   And salaries.to_date like '%9999%'
# ORDER BY dept_name;

