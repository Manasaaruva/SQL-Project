/*Q:5(Write a query that groups the products by ProductModelID along with a count. Display the rows that 
have a count that equals 1.)Change the query in Question 5 so that only the products with the color blue or red are included.*/
USE AdventureWorks2022;
SELECT 
ProductModelID,Color,
COUNT(*) AS Count
FROM Production.Product
WHERE Color='blue' OR Color='red'
GROUP BY ProductModelID,Color
HAVING COUNT(*)=1 
