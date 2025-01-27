USE MDC;

select LastName, FirstName, Phone from customer
where Phone LIKE '1__23%';