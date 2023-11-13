-- Query to get the most popular category
SELECT Category, COUNT(*) as ProductCount
FROM Products
GROUP BY Category
ORDER BY ProductCount DESC
LIMIT 1;
