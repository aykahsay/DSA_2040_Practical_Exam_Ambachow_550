SELECT 
    sf.InvoiceYear AS Year,
    sf.InvoiceMonth AS Month,
    sf.Description,
    sf.Quantity,
    sf.UnitPrice,
    (sf.Quantity * sf.UnitPrice) AS TotalSales
FROM SalesFact sf
WHERE sf.Country = 'United Kingdom'
ORDER BY sf.InvoiceYear, sf.InvoiceMonth;
