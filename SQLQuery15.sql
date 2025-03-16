/*Write a query using the Sales.SpecialOffer table. Display the difference between the MinQty and 
MaxQty columns along with the SpecialOfferID and Description columns.*/
USE AdventureWorks2022;
SELECT
SpecialOfferID,
Description,
MinQty,  
MaxQty,
MaxQty-MinQty AS Differenceqty
FROM Sales.SpecialOffer 