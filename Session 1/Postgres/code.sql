------1
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);
CREATE VIEW Employee_View AS
SELECT 
    emp_id,
    emp_name,
    department,
    salary
FROM Employee;
CREATE ROLE Analyst;
GRANT SELECT ON Employee_View TO Analyst;
--G3_23BCS11261_Sumedh


------2

INSERT INTO Employee (emp_id, emp_name, department, salary) 
VALUES
(1, 'Aarav',   'IT',     90000),
(2, 'Bhavya',  'HR',     75000),
(3, 'Chetan',  'IT',     90000),
(4, 'Diya',    'Finance',65000),
(5, 'Esha',    'HR',     55000),
(6, 'Farhan',  'IT',     45000);

SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1-1;

SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 2-1;

SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 3-1;

SELECT DISTINCT salary
FROM Employee
ORDER BY salary DESC
LIMIT 1 OFFSET 4-1;
--G3_23BCS11261_Sumedh