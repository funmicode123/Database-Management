USE cape_codd;

SELECT SKU, SKU_Description, WarehouseID 
from inventory
where QuantityOnHand = 0 and QuantityOnOrder > 0
order by SKU ASC	