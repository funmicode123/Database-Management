USE cape_codd;

SELECT SKU, SKU_Description, Warehouse.WarehouseID, WarehouseCity, WarehouseState
FROM inventory
JOIN Warehouse ON inventory.WarehouseID = Warehouse.WarehouseID
WHERE WarehouseCity = 'Atlanta' 
   OR WarehouseCity = 'Bangor' 
   OR WarehouseCity = 'Chicago';
