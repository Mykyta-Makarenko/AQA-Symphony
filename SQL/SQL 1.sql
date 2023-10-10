--Create query to GET  top 5 cities with highest number of Employees in it.
SELECT COUNT(OrderID) as Orders, CustomerID FROM Employees
GROUP BY CustomerID
ORDER BY Orders DESC
LIMIT 5;


--Create query to GET top 5 customers with highest number of Orders.
SELECT COUNT(OrderID) as Orders, CustomerName FROM Orders
JOIN Customers C on O.CustomerID=C.CustomerID
GROUP BY O.CustomerID
ORDER BY Orders DESC
LIMIT 5;


--Create query to GET top 5 customers with biggest total quantity of items from all orders.
SELECT SUM(Quantity) as Total_Items, CustomerName FROM Orders O
JOIN OrderDetails OD on O.OrderID=OD.OrderID
JOIN Customers C on O.CustomerID=C.CustomerID
GROUP BY CustomerName
ORDER BY Total_Items DESC
LIMIT 5;



--Create query to GET all product and category information at the same query
SELECT * FROM Products P
JOIN Categories C ON P.CategoryID=C.CategoryID;