/*Write a query using the Sales.SpecialOffer table that multiplies the MaxQty column by the DiscountPct 
column. If the MaxQty value is NULL, replace it with the value 10. Include the SpecialOfferID and 
Description columns in the results.*/
use AdventureWorks2022;
SELECT 
SpecialOfferID, 
Description,
MaxQty,
ISNULL(MaxQty,10) AS MaxQtyAdjusted,
DiscountPct,
ISNULL(MaxQty,10)*DiscountPct AS Discountqty
FROM Sales.SpecialOffer 