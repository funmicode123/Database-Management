USE cape_codd;

SELECT WarehouseID,
SUM(QuantityOnHand) AS TotalItemsOnHandLT3
FROM inventory
WHERE QuantityOnHand < 3
GROUP BY WarehouseID
HAVING COUNT(SKU) < 2
ORDER BY TotalItemsOnHandLT3 DESC;


-- WHERE: It filters rows at the row level before any aggregation or grouping occurs. 
-- In this query, the WHERE QuantityOnHand < 3 clause limits the rows to those with fewer than 3 items on hand. 
-- This reduces the data set that is passed to the next step (GROUP BY).
-- HAVING:  It filters the results at the group level, i.e., after the rows are grouped and aggregated. 
-- In this query, the HAVING COUNT(SKU) < 2 condition filters out warehouses that have 2 or more SKUs in their TotalItemsOnHandLT3.
