SELECT 
    CASE strftime('%w', InvoiceDate)
        WHEN '0' THEN 'Sunday'
        WHEN '1' THEN 'Monday'
        WHEN '2' THEN 'Tuesday'
        WHEN '3' THEN 'Wednesday'
        WHEN '4' THEN 'Thursday'
        WHEN '5' THEN 'Friday'
        WHEN '6' THEN 'Saturday'
    END AS Weekday,
    ROUND(SUM(Quantity * UnitPrice), 2) AS Total_Sales
FROM retail_data
GROUP BY Weekday
ORDER BY Total_Sales DESC;
