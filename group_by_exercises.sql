USE employees;

SELECT DISTINCT title FROM titles; -- problem 2 done



SELECT last_name AS 'Unique FIRST AND LAST names that start AND end with "E"' FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' GROUP BY last_name ORDER BY last_name ASC; -- problem 3 done

SELECT first_name, last_name AS 'Unique Last names that start AND end with "E"' FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' GROUP BY last_name, first_name; -- problem 4 done

SELECT last_name FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name; -- problem 5 done

SELECT CONCAT(COUNT(*),' ', last_name) AS 'Unique Count, unique last names with a ''q'' but not ''qu''' FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name; -- problem 6 done

SELECT CONCAT(COUNT(*),' ', gender) AS 'Unique code for genders for ''Irena'', ''Vidya'', ''Maya''' FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;