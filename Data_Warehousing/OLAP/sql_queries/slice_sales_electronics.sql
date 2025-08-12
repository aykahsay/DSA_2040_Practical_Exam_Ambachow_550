SELECT 
    SUM(sf.Quantity * sf.UnitPrice) AS TotalSales
FROM SalesFact sf
WHERE LOWER(sf.Description) LIKE '%electronic%';
