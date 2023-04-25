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
-- JOIN employees as e
--     ON t.emp_no = e.emp_no
SELECT title
FROM titles as t
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    );

-- question 3
SELECT first_name, last_name
FROM employees
WHERE gender = 'F' AND emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date = '9999-01-01' AND dept_no IN (
        SELECT dept_no
        FROM dept_emp
    )
);

-- BONUS 1
SELECT dept_name
FROM departments as d
    WHERE dept_no IN (
        SELECT dept_no
        FROM dept_manager
        WHERE to_date = '9999-01-01' AND
        emp_no IN (
            SELECT emp_no
            FROM employees
            WHERE gender = 'F'
                )
        );
-- BONUS 1 translated from a sub query to a join
SELECT dept_name
FROM departments as d
         JOIN dept_manager as dm
              ON dm.dept_no = d.dept_no
         JOIN employees as e
              ON dm.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01' AND gender = 'F';


-- BONUS 2
SELECT first_name, last_name
FROM employees
    WHERE emp_no IN
          (SELECT emp_no
           FROM salaries
           WHERE salary =
                 (
                  SELECT MAX(salary)
                  FROM salaries
                 )
           );

