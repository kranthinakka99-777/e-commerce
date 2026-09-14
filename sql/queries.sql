-- CRUD Queries
SELECT * FROM Customers;
INSERT INTO Customers (FirstName, LastName, Email, Phone) VALUES ('Alice', 'Brown', 'alice@example.com', '123-456-7890');
UPDATE Products SET StockQuantity = 15 WHERE ProductID = 1;
DELETE FROM OrderItems WHERE OrderItemID = 5;

-- JOIN Queries
SELECT o.OrderID, c.FirstName, c.LastName, o.OrderDate, o.TotalAmount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID;

SELECT oi.OrderItemID, o.OrderID, p.ProductName, oi.Quantity, oi.UnitPrice
FROM OrderItems oi
JOIN Orders o ON oi.OrderID = o.OrderID
JOIN Products p ON oi.ProductID = p.ProductID;

-- Aggregate Queries
SELECT COUNT(*) AS TotalOrders, SUM(TotalAmount) AS TotalRevenue FROM Orders;
SELECT ProductID, AVG(Price) AS AveragePrice FROM Products GROUP BY ProductID;

-- Advanced E-commerce Queries
-- 1. Top 5 best-selling products
SELECT ProductID, SUM(Quantity) AS TotalSold FROM OrderItems GROUP BY ProductID ORDER BY TotalSold DESC LIMIT 5;

-- 2. Total sales revenue by month
SELECT STRFTIME('%Y-%m', OrderDate) AS Month, SUM(TotalAmount) AS MonthlyRevenue FROM Orders GROUP BY Month ORDER BY Month;

-- 3. Top 5 customers by total spending
SELECT CustomerID, SUM(TotalAmount) AS TotalSpent FROM Orders GROUP BY CustomerID ORDER BY TotalSpent DESC LIMIT 5;
