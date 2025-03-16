/*Write a query that displays all customers along with the orders placed in 2011. Use a common table 
expression to write the query and include the CustomerID, SalesOrderID, and OrderDate columns in 
the results.*/USE AdventureWorks2022;
WITH SOH AS(SELECT
CustomerID, SalesOrderID,OrderDate
FROM Sales.SalesOrderHeader WHERE OrderDate BETWEEN '2011-01-01' AND '2011-12-31')SELECT SC.CustomerID, SalesOrderID,OrderDate FROM Sales.Customer AS SCLEFT OUTER JOIN SOH ONSOH.CustomerID=SC.CustomerID