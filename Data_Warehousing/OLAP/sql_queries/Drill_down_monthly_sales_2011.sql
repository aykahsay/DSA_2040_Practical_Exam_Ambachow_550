SELECT 
    strftime('%Y', InvoiceDate) AS InvoiceYear, 
    strftime('%m', InvoiceDate) AS InvoiceMonth, 
    ROUND(SUM(Quantity * UnitPrice), 2) AS TotalSales
FROM SalesFact
WHERE strftime('%Y', InvoiceDate) = '2011'
GROUP BY InvoiceYear, InvoiceMonth
ORDER BY InvoiceMonth;
