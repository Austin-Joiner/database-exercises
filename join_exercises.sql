USE employees;
-- question 1 solved
SELECT dept_name AS `Department Name`, CONCAT(first_name, ' ', last_name) AS `Department Manager`
FROM employees as e
JOIN dept_manager as dm
    ON dm.emp_no = e.emp_no
JOIN departments as d
    ON d.dept_no = dm.dept_no
WHERE dm.to_date >= current_date
GROUP BY dept_name, CONCAT(first_name, ' ', last_name)
ORDER BY dept_name;

-- question 2 solved
SELECT dept_name AS `Department Name`, MAX(CONCAT(first_name, ' ', last_name)) AS `Department Manager`
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date >= current_date AND e.gender = 'F'
GROUP BY dept_name
ORDER BY dept_name;

-- question 3 solved
SELECT DISTINCT title, COUNT(t.emp_no) AS 'Total'
FROM titles as t
JOIN dept_emp as de
    ON t.emp_no = de.emp_no
JOIN departments as d
    ON de.dept_no = d.dept_no
WHERE de.to_date = '9999-01-01' AND de.dept_no = 'd009'
  AND t.to_date = '9999-01-01'
GROUP BY title;

-- question 4  solved
SELECT dept_name AS `Department Name`, CONCAT(first_name, ' ', last_name) AS `Department Manager`, salary AS `Salary`
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
        JOIN salaries as s
              ON s.emp_no = e.emp_no
WHERE dm.to_date > CURDATE() AND s.to_date > CURDATE()
GROUP BY dept_name, CONCAT(first_name, ' ', last_name), salary
ORDER BY dept_name;
