-- Create sample table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);

-- Insert sample data
INSERT INTO Employees (emp_id, name, department, salary) VALUES
(1, 'Alice', 'HR', 30000),
(2, 'Bob', 'Sales', 40000),
(3, 'Charlie', 'Sales', 45000),
(4, 'David', 'IT', 50000);

-- Change delimiter to define stored procedure and function
DELIMITER $$

-- Stored Procedure: Get employees by department
CREATE PROCEDURE GetEmployeesByDepartment(IN dept_name VARCHAR(50))
BEGIN
    SELECT * FROM Employees
    WHERE department = dept_name;
END$$

-- Function: Calculate annual salary
CREATE FUNCTION CalculateAnnualSalary(monthly_salary DECIMAL(10,2))
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    RETURN monthly_salary * 12;
END$$

-- Reset delimiter
DELIMITER ;

-- Example usage:
-- Call the procedure
CALL GetEmployeesByDepartment('Sales');

-- Use the function in a query
SELECT name, CalculateAnnualSalary(salary) AS annual_salary
FROM Employees;
