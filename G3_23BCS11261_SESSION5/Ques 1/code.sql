DROP TABLE Departments cascade;
DROP TABLE Employees;

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    Location VARCHAR(50)
);


CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT,
    Salary INT,
    FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
);


INSERT INTO Departments (DeptID, DeptName, Location) VALUES
(10, 'HR', 'Delhi'),
(20, 'IT', 'Mumbai'),
(30, 'Finance', 'Pune'),
(50, 'Marketing', 'Chennai');

INSERT INTO Employees (EmpID, EmpName, DeptID, Salary) VALUES
(1, 'Akash', 10, 50000),
(2, 'Nisha', 20, 60000),
(4, 'Simran', 30, 70000),
(5, 'Meena', 30, 55000);
SELECT 
    d.deptname AS DeptName,
    COUNT(e.empid) AS EmployeeCount,
    AVG(e.salary) AS AvgSalary,
    CASE 
        WHEN COUNT(e.empid) = 0 THEN 'No Employees'
        WHEN AVG(e.salary) >= 60000 THEN 'High Avg'
        WHEN AVG(e.salary) BETWEEN 50000 AND 59999 THEN 'Medium Avg'
        ELSE 'Low Avg'
    END AS SalaryCategory
FROM 
    departments d
LEFT JOIN 
    employees e ON d.deptid = e.deptid
GROUP BY 
    d.deptid, d.deptname
ORDER BY 
    d.deptname;


