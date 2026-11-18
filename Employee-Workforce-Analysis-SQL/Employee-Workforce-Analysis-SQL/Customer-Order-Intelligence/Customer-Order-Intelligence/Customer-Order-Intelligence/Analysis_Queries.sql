-- Customer Spending Analysis

SELECT c.CustomerName,
SUM(o.Amount) AS Total_Spent
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName;

-- Top Customer

SELECT c.CustomerName,
SUM(o.Amount) AS Total_Spent
FROM Customers c
JOIN Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName
ORDER BY Total_Spent DESC
LIMIT 1;

-- Monthly Revenue

SELECT MONTH(OrderDate) AS Month_Number,
SUM(Amount) AS Revenue
FROM Orders
GROUP BY MONTH(OrderDate);

-- Total Revenue

SELECT SUM(Amount) AS Total_Revenue
FROM Orders;

-- Total Orders

SELECT COUNT(*) AS Total_Orders
FROM Orders;
