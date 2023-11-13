-- Query to get top 3 products by frequency
SELECT P.ProductName, COUNT(*) as PurchaseCount
FROM OrderDetails OD
JOIN Products P ON OD.ProductID = P.ProductID
GROUP BY P.ProductID
ORDER BY PurchaseCount DESC
LIMIT 3;
