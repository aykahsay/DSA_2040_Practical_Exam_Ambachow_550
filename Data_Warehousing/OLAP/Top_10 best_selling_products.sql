SELECT 
    Description,
    SUM(Quantity) AS Total_Quantity
FROM retail_data
GROUP BY Description
ORDER BY Total_Quantity DESC
LIMIT 10;
