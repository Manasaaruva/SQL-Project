/*Write a query that groups the products by ProductModelID along with a count. Display the rows that 
have a count that equals 1.*/
USE AdventureWorks2022;
SELECT 
ProductModelID,
COUNT(*) AS Count
FROM Production.Product
GROUP BY ProductModelID
HAVING COUNT(*)=1
