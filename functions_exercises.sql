USE employees;


SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') AND gender = 'M';



SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya') ORDER BY first_name ASC;
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name ASC;



SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name ASC; -

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name ASC;

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no ASC;
SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no DESC;




SELECT CONCAT(first_name,' ',last_name) FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E'; -- problem  2 done

SELECT CONCAT(first_name,' ',last_name) FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25; -- problem  3 done

SELECT CONCAT(first_name,' ',last_name) FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date) BETWEEN 1990 AND 1999; -- problem  4 done

SELECT CONCAT(first_name,' ',last_name) FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date) BETWEEN 1990 AND 1999 ORDER BY birth_date ASC, hire_date DESC; -- problem  5 done

SELECT CONCAT(first_name,' ',last_name, ' has worked here for ', DATEDIFF(CURDATE(), hire_date),' days!') AS 'Employees born on christmas and hired in the 90s and their days since being hired' FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25 AND year(hire_date) BETWEEN 1990 AND 1999; -- problem  6 done







SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT * FROM employees WHERE last_name LIKE '%q%';
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';