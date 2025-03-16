/*Write a query that assigns row numbers to the Production.Product table. Start the numbers over for 
each ProductSubCategoryID and make sure that the row numbers are in order of ProductID. Display 
only rows where the ProductSubCategoryID is not null.*/
USE AdventureWorks2022;
SELECT
ProductSubcategoryID,ProductID,
ROW_NUMBER()OVER (PARTITION BY ProductSubcategoryID ORDER BY ProductID) AS ROWNUMBER
FROM Production.Product
WHERE ProductSubcategoryID IS NOT NULL