-- Query to get products bought by a customer
SELECT P.ProductName, OD.Quantity
FROM OrderDetails OD
JOIN Products P ON OD.ProductID = P.ProductID
WHERE OD.OrderID = 1;