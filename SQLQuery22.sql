/*Extend the query written in Question 23 to include the Sales. SalesOrderHeader table. Display the 
SalesOrderID column along with the columns already specified. The Sales.SalesOrderHeader table 
joins the Sales.Customer table on CustomerID.*/ 
USE AdventureWorks2022;
SELECT
PP.BusinessEntityID,
SC.CustomerID,
SC.StoreID,
SC.TerritoryID,
PP.FirstName,PP.MiddleName,PP.LastName,
SOH.SalesOrderID
FROM Person.Person AS PP
INNER JOIN Sales.Customer AS SC ON
PP.BusinessEntityID=SC.PersonID
INNER JOIN Sales.SalesOrderHeader AS SOH ON
SC.CustomerID=SOH.CustomerID