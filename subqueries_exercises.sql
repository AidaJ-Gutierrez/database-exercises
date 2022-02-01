USE employees;


DESCRIBE dept_emp;
DESCRIBE employees;
DESCRIBE titles;
DESCRIBE departments;
DESCRIBE dept_manager;
DESCRIBE salaries;



# Find all the employees with the same hire date as employee 101010 using a subquery.


SELECT first_name, last_name, hire_date
FROM employees
WHERE employees.hire_date IN (
    SELECT employees.hire_date
    FROM employees
    WHERE employees.emp_no = 101010
);


# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT title
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE employees.first_name = 'Aamod'
)
GROUP BY title;

# Find all the current department managers that are female.
SELECT first_name, last_name
FROM employees
WHERE employees.emp_no IN (
    SELECT dept_manager.emp_no
    FROM dept_manager
    WHERE dept_manager.to_date > CURDATE())
AND employees.gender = 'F';

# BONUS
# Find all the department names that currently have female managers.
SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE  emp_no IN(
        SELECT emp_no
        FROM employees
        WHERE gender ='F'
        )
    AND dept_manager.to_date > CURDATE())
ORDER BY dept_name;

# Find the first and last name of the employee with the highest salary.

SELECT first_name, last_name
FROM employees
WHERE emp_no IN(
    SELECT emp_no
    FROM salaries
    WHERE salary IN(
        SELECT MAX(salary)
        FROM salaries));


