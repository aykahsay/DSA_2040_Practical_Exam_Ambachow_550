SELECT 
    Country,
    ROUND(SUM(Quantity * UnitPrice), 2) AS Total_Sales
FROM retail_data
GROUP BY Country
ORDER BY Total_Sales DESC;
