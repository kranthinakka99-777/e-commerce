-- CRUD Queries
SELECT * FROM Customers;
INSERT INTO Customers (FirstName, LastName, Email, Phone) VALUES ('Alice', 'Brown', 'alice@example.com', '1112223333');
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
