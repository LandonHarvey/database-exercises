USE employees;

SELECT dept_name AS Department_Name, CONCAT(first_name, ' ', last_name) AS Department_Manager
FROM departments AS D
JOIN dept_manager AS M ON M.dept_no = D.dept_no
JOIN employees AS E ON E.emp_no = M.emp_no
WHERE M.to_date = '9999-01-01'
GROUP BY dept_name, Department_Manager;

SELECT dept_name AS Department_Name, CONCAT(first_name, ' ', last_name) AS Department_Manager
FROM departments AS D
JOIN dept_manager AS M ON M.dept_no = D.dept_no
JOIN employees AS E ON E.emp_no = M.emp_no
WHERE M.to_date = '9999-01-01' AND E.gender = 'F'
GROUP BY dept_name, Department_Manager;

SELECT title AS Department_Name, COUNT(*)
FROM dept_emp AS DE
JOIN titles AS T ON T.emp_no = DE.emp_no
WHERE T.to_date = '9999-01-01' AND DE.dept_no = 'd009' AND DE.to_date = '9999-01-01'
Group BY title;

SELECT dept_name AS Department_Name, CONCAT(first_name, ' ', last_name) AS Name, salary AS Salary
FROM departments AS D
JOIN dept_manager AS M ON M.dept_no = D.dept_no
JOIN employees AS E ON E.emp_no = M.emp_no
JOIN salaries AS S ON S.emp_no = E.emp_no
WHERE M.to_date = '9999-01-01' AND S.to_date = '9999-01-01'
GROUP BY dept_name, Name, Salary;

SELECT DISTINCT CONCAT(first_name, ' ', last_name) AS Employee_Name, dept_name AS Department_Name,
FROM departments AS D
JOIN dept_emp AS DE ON DE.dept_no = D.dept_no
JOIN employees AS E ON E.emp_no = DE.emp_no
LEFT JOIN dept_manager AS DM ON DM.emp_no = E.emp_no
WHERE DE.to_date = '9999-01-01'
ORDER BY Employee_Name;



