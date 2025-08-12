SELECT 
    strftime('%Y-%m', InvoiceDate) AS YearMonth,
    ROUND(SUM(Quantity * UnitPrice), 2) AS Total_Sales
FROM retail_data
GROUP BY YearMonth
ORDER BY YearMonth;
