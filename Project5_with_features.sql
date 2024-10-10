-- 'Ordered_After_2012' looks at two years after 2012 
SELECT c.CustomerKey, 
       COUNT(CASE WHEN s.OrderDate < '2012-01-01 00:00:00.000' THEN s.SalesOrderNumber END) AS [Orders_Before_2012],
       BirthDate, MaritalStatus, Gender, YearlyIncome, TotalChildren, NumberChildrenAtHome,
       EnglishEducation, HouseOwnerFlag, DateFirstPurchase, CommuteDistance,       
       CASE -- essentially, an if statement
           WHEN COUNT(CASE WHEN s.OrderDate > '2012-01-01 00:00:00.000' THEN 1 END) > 0 
           THEN 1 
           ELSE 0 
       END AS [Ordered_After_2012]
FROM DimCustomer c
JOIN FactInternetSales s ON s.CustomerKey = c.CustomerKey
GROUP BY c.CustomerKey,
    BirthDate, MaritalStatus, Gender, YearlyIncome, TotalChildren, NumberChildrenAtHome,
    EnglishEducation, HouseOwnerFlag, DateFirstPurchase, CommuteDistance
HAVING COUNT(CASE WHEN s.OrderDate < '2012-01-01 00:00:00.000' THEN s.SalesOrderNumber END) > 0
ORDER BY c.CustomerKey ASC;