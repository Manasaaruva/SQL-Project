/*The Sales.SalesOrderHeader table contains foreign keys to the Sales.CurrencyRate and 
Purchasing.ShipMethod tables. Write a query joining all three tables, and make sure it contains all 
rows from Sales.SalesOrderHeader. Include the CurrencyRateID, AverageRate, SalesOrderID, and 
ShipBase columns.*/
USE AdventureWorks2022;
SELECT
SOH.CurrencyRateID,
AverageRate,
SalesOrderID,
ShipBase
FROM Sales.SalesOrderHeader AS SOH
LEFT JOIN Sales.CurrencyRate AS SCR ON
SOH.SalesOrderID=SCR.CurrencyRateID
LEFT JOIN Purchasing.ShipMethod AS PSM ON
SOH.SalesOrderID=PSM.ShipMethodID
