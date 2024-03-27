SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
FROM Employees
INNER JOIN Salaries ON Employees.emp_no = Salaries.emp_no;

SELECT first_name, last_name, hire_date
FROM Employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

SELECT Dept_Manager.dept_no, Departments.dept_name, Dept_Manager.emp_no, Employees.last_name, Employees.first_name
FROM Dept_Manager
INNER JOIN Departments ON Dept_Manager.dept_no = Departments.dept_no
INNER JOIN Employees ON Dept_Manager.emp_no = Employees.emp_no;

SELECT Dept_emp.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name, Dept_emp.dept_no
FROM Dept_emp
INNER JOIN Employees ON Dept_emp.emp_no = Employees.emp_no
INNER JOIN Departments ON Dept_emp.dept_no = Departments.dept_no;

SELECT first_name, last_name, sex
FROM Employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT Employees.emp_no, Employees.last_name, Employees.first_name
FROM Employees
INNER JOIN Dept_emp ON Employees.emp_no = Dept_emp.emp_no
INNER JOIN Departments ON Dept_emp.dept_no = Departments.dept_no
WHERE Departments.dept_name = 'Sales';

SELECT Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
FROM Employees
INNER JOIN Dept_emp ON Employees.emp_no = Dept_emp.emp_no
INNER JOIN Departments ON Dept_emp.dept_no = Departments.dept_no
WHERE Departments.dept_name IN ('Sales', 'Development');

SELECT last_name, COUNT(*) AS frequency
FROM Employees
GROUP BY last_name
ORDER BY frequency DESC;
