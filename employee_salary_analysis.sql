CREATE DATABASE employee_analysis;
USE employee_analysis;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

INSERT INTO employees VALUES
(1, 'Alice', 'IT', 25000),
(2, 'Bob', 'IT', 30000),
(3, 'Carol', 'HR', 18000),
(4, 'David', 'HR', 22000),
(5, 'Eve', 'Finance', 35000),
(6, 'Frank', 'Finance', 40000);

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

SELECT name, department, salary
FROM employees
ORDER BY salary DESC;

SELECT name, department, salary,
CASE
    WHEN salary < 20000 THEN 'Low'
    WHEN salary BETWEEN 20000 AND 30000 THEN 'Medium'
    ELSE 'High'
END AS salary_level
FROM employees;
