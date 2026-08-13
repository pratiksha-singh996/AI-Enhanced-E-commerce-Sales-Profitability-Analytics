-- AI-Enhanced E-commerce Sales & Profitability Analytics
-- SQL Business Analysis

-- Query 1: Overall Business Performance
SELECT
    SUM(Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM OrderDetails;


-- Query 2: Category Performance
SELECT
    Category,
    SUM(Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    SUM(Quantity) AS Total_Quantity
FROM OrderDetails
GROUP BY Category
ORDER BY Total_Sales DESC;


-- Query 3: Profitability by Category
SELECT
    Category,
    SUM(Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(SUM(Profit) * 100.0 / SUM(Amount), 2) AS Profit_Margin
FROM OrderDetails
GROUP BY Category
ORDER BY Profit_Margin DESC;


-- Query 4: Loss-Making Sub-Categories
SELECT
    Category,
    sub_category,
    SUM(Amount) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(SUM(Profit) * 100.0 / SUM(Amount), 2) AS Profit_Margin
FROM OrderDetails
GROUP BY Category, sub_category
HAVING SUM(Profit) < 0
ORDER BY Total_Profit ASC;
