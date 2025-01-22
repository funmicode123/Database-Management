USE cape_codd;

SELECT WarehouseID,
SUM(QuantityOnHand) AS TotalItemsOnHandLT3
FROM inventory
WHERE QuantityOnHand < 3
GROUP BY WarehouseID
ORDER BY TotalItemsOnHandLT3 DESC;
