USE MDC;

select LastName, FirstName, Phone from customer
where LastName LIKE '%cat%'