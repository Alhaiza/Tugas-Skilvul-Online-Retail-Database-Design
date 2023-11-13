-- Query to get the average transaction amount in the last month
SELECT AVG(TotalAmount) as AverageTransactionAmount
FROM (
    SELECT O.OrderID, SUM(P.Price * OD.Quantity) as TotalAmount
    FROM Orders O
    JOIN OrderDetails OD ON O.OrderID = OD.OrderID
    JOIN Products P ON OD.ProductID = P.ProductID
    WHERE O.OrderDate >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
    GROUP BY O.OrderID
) AS Subquery;
