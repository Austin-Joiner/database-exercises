USE employees;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';



SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') ORDER BY first_name ASC;--problem 2 Irena Flexer not showing up
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name ASC;



SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name ASC; --problem 3 done

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name ASC; --problem 4 done

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no ASC; --problem 5 done
SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no DESC; --problem 6 done

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT * FROM employees WHERE last_name LIKE '%q%';
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
