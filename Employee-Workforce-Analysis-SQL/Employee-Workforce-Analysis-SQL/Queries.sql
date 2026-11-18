-- Total Employees

SELECT COUNT(*) AS Total_Employees
FROM Employees;

-- Department-wise Employee Count

SELECT Department,
COUNT(*) AS Employee_Count
FROM Employees
GROUP BY Department;

-- Average Salary by Department

SELECT Department,
AVG(Salary) AS Avg_Salary
FROM Employees
GROUP BY Department;

-- Highest Paid Employee

SELECT *
FROM Employees
ORDER BY Salary DESC
LIMIT 1;

-- Employees from Hyderabad

SELECT *
FROM Employees
WHERE City = 'Hyderabad';

-- Top 3 Highest Salaries

SELECT *
FROM Employees
ORDER BY Salary DESC
LIMIT 3;
