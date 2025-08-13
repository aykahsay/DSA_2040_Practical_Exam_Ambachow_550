SELECT 
    Country, 
    ROUND(SUM(Quantity * UnitPrice), 2) AS TotalSales
FROM SalesFact
WHERE InvoiceYear = 2011 AND InvoiceMonth = 12
GROUP BY Country
ORDER BY TotalSales DESC
LIMIT 10;
