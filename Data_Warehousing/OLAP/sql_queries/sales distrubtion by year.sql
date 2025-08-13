query =
SELECT 
    InvoiceYear, 
    SUM(Quantity * UnitPrice) AS TotalSales
FROM SalesFact
GROUP BY InvoiceYear
ORDER BY InvoiceYear;
