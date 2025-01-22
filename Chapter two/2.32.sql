USE cape_codd;

SELECT SKU, SKU_Description
FROM inventory
WHERE SKU_Description like '%climb%';
