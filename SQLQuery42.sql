/*Write a query joining the Person.Person, Sales.Customer, and Sales.SalesOrderHeader tables to 
return a list of the customer names along with a count of the orders placed.*/
USE AdventureWorks2022;SELECTFirstName,MiddleName,LastName,COUNT(SalesOrderID) AS CountofordersFROM Person.Person PINNER JOIN Sales.Customer SC ONP.BusinessEntityID=SC.PersonIDINNER JOIN Sales.SalesOrderHeader SOH ONSC.CustomerID=SOH.CustomerIDGROUP BY FirstName,MiddleName,LastName
