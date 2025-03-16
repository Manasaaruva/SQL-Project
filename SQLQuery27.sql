/*Add the name columns to the query written in Question 24 by joining on the Person.Person table. See 
whether you can figure out which columns will be used to write the join.*/
USE AdventureWorks2022;
SELECT
SalesOrderID, SalesQuota,Bonus,
FirstName,MiddleName,LastName
FROM Sales.SalesOrderHeader AS SOH
INNER JOIN Sales.SalesPerson AS SP ON
SP.BusinessEntityID=SOH.SalesPersonID
INNER JOIN Person.Person AS PP ON
PP.BusinessEntityID=SP.BusinessEntityID
