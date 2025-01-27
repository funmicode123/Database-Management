USE mdc;

SELECT 
    customer.LastName, 
    customer.FirstName, 
    customer.Phone, 
    invoice.DateIn, 
    invoice.DateOut
FROM 
    customer
JOIN 
    invoice ON customer.CustomerID = invoice.CustomerID
WHERE 
    invoice.TotalAmount > 100;
