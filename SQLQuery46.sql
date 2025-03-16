/*Write a query using the Sales.SalesOrderHeader, Sales. SalesOrderDetail, and Production.Product 
tables to display the total sum of products by Name and OrderDate*/
USE AdventureWorks2022;SELECTName,OrderDate,SUM(OrderQty) AS TotalQuantityFROM Sales.SalesOrderHeader SOHJOIN Sales. SalesOrderDetail SOD ONSOH.SalesOrderID=SOD.SalesOrderIDJOIN Production.Product PP ONPP.ProductID=SOD.ProductID
GROUP BY Name,OrderDate 
ORDER BY Name,OrderDate









/*SELECT
    p.Name AS ProductName,
    soh.OrderDate,
    SUM(sod.OrderQty) AS TotalQuantity
FROM
    Sales.SalesOrderHeader soh
JOIN
    Sales.SalesOrderDetail sod ON soh.SalesOrderID = sod.SalesOrderID
JOIN
    Production.Product p ON sod.ProductID = p.ProductID
GROUP BY
    p.Name, soh.OrderDate
ORDER BY
    p.Name, soh.OrderDate;*/

