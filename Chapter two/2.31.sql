USE cape_codd;

SELECT SKU, SKU_Description
from inventory
where SKU_Description Like "Half-Dome%"
	