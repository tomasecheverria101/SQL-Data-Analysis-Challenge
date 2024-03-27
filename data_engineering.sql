
CREATE TABLE Departments (
    dept_no VARCHAR,
    dept_name VARCHAR 
);

select *
from departments
limit 5;

CREATE TABLE Dept_emp (
    emp_no INT,
    dept_no VARCHAR
);

select *
from Dept_emp
limit 5;

CREATE TABLE Dept_Manager (
    dept_no VARCHAR,
    emp_no INT
);

select *
from Dept_Manager
limit 5;


CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR,
    birth_date DATE,
    first_name VARCHAR,
    last_name VARCHAR,
    sex VARCHAR,
    hire_date DATE
);

select *
from Employees
limit 5;

CREATE TABLE Salaries (
    emp_no INT,
    salary DECIMAL
);

select *
from Salaries
limit 5;

CREATE TABLE Titles (
    title_id VARCHAR PRIMARY KEY,
    title VARCHAR
);

select *
from Titles
limit 5;



