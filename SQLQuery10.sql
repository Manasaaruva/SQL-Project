/*Write a query using the Production.Product table displaying the product ID, color, and name columns. 
If the color column contains a NULL, replace the color with No Color*/

USE AdventureWorks2022;
SELECT
ProductID,
ISNULL(color,'No color') AS Color,
name
FROM Production.Product