USE employees;

--     question 1 solved
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date = (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

-- question 2 solved
SELECT  first_name, last_name, title
FROM titles as t
JOIN employees as e
    ON t.emp_no = e.emp_no
WHERE e.emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );

-- question 3
SELECT first_name, last_name



