-- sales_analysis.sql
SELECT 
    strftime('%Y', InvoiceDate) AS Year,
    Country,
    SUM(Quantity * UnitPrice) AS TotalSales
FROM retail
GROUP BY Year, Country
ORDER BY Year, TotalSales DESC;
