SELECT 
    sf.Country, 
    sf.InvoiceYear AS Year, 
    sf.InvoiceQuarter AS Quarter,
    SUM(sf.Quantity * sf.UnitPrice) AS TotalSales
FROM SalesFact sf
GROUP BY sf.Country, sf.InvoiceYear, sf.InvoiceQuarter
ORDER BY sf.Country, sf.InvoiceYear, sf.InvoiceQuarter;
