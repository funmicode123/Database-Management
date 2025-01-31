use cape_codd;

SELECT count(QuantityOnHand) AS Total_Products,
SUM(QuantityOnHand) AS Total_Quantity,
AVG(QuantityOnHand) AS Average_Quantity,
MIN(QuantityOnHand) AS Minimum_Quantity,
MAX(QuantityOnHand) AS Maximum_Quantity
FROM inventory;


-- COUNT: This function returns the number of rows that matchches a particular requirement.
-- SUM: This function returns the total sum of a numeric column 

