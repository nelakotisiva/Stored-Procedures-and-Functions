🔷 What is a Stored Procedure?
A stored procedure is a saved block of SQL statements that can be executed on demand. It helps in:

Reusing complex SQL logic

Improving performance (precompiled)

Enhancing security (by limiting direct access to tables)

✅ In the code:
CREATE PROCEDURE GetEmployeesByDepartment(IN dept_name VARCHAR(50))
This defines a procedure that accepts a department name as input.

Inside the procedure:
SELECT * FROM Employees WHERE department = dept_name;
This returns all employees from the given department.

🔷 What is a Function?
A function is similar to a procedure but must return a value. It is mainly used in SQL expressions like in SELECT or WHERE clauses.

✅ In the code:
CREATE FUNCTION CalculateAnnualSalary(monthly_salary DECIMAL(10,2))
This defines a function that takes a monthly salary.

It returns monthly_salary * 12, which gives the annual salary.

🔷 Usage Example:
The procedure is used with CALL GetEmployeesByDepartment('Sales'); to list all employees in the Sales department.

The function is used inside a SELECT to compute annual salaries dynamically:
SELECT name, CalculateAnnualSalary(salary) FROM Employees;

🔚 Outcome:
Using procedures and functions:

You can modularize logic (write once, reuse often).

Enhance clarity, consistency, and performance of your database operations.
