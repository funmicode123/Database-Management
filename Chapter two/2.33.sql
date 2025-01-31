use cape_codd;

SELECT DISTINCT SKU, SKU_Description
FROM inventory 
WHERE SKU_Description LIKE '__d%';
