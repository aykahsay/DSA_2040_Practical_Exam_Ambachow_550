SELECT 
    CustomerID,
    ROUND(AVG(Quantity * UnitPrice), 2) AS Avg_Order_Value
FROM retail_data
GROUP BY CustomerID
ORDER BY Avg_Order_Value DESC;
