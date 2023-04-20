USE employees;

SELECT DISTINCT last_name FROM employees ORDER BY last_name DESC LIMIT 10; -- problem 2 solved

SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5; --problem 3 finished

SELECT emp_no FROM salaries ORDER BY salary DESC LIMIT 5 OFFSET 45; --problem 4 finished

