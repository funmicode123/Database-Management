USE transport;
SELECT drivers.driver_id AS driver_id, drivers.name AS driver_name, 
       SUM(fare) AS total_revenue
FROM rides, drivers
WHERE drivers.driver_id = rides.driver_id
GROUP BY drivers.driver_id, drivers.name
ORDER BY total_revenue DESC
LIMIT 1;

SELECT rides_id AS RideID, fare AS Fare
FROM rides
WHERE fare < (SELECT AVG(fare) * 0.5 FROM rides)
   OR fare > (SELECT AVG(fare) * 1.5 FROM rides);

SELECT rides.rider_id AS RiderID, riders.name AS Name, 
       AVG(rides.rating) AS AverageRating
FROM rides
JOIN riders ON rides.rider_id = riders.rider_id  
GROUP BY rides.rider_id, riders.name;

SELECT riders.city AS Area, AVG(rides.rating) AS AverageRating
FROM riders
JOIN rides ON riders.rider_id = rides.rider_id  
GROUP BY riders.city
ORDER BY AverageRating DESC  
LIMIT 5;

SELECT drivers.driver_id AS DriverID, drivers.name AS Name
From drivers, rides
WHERE rides_id is NULL;

SELECT rides_id AS RideID, distance_km AS DistanceKM, driver_id AS DriverID,
	rider_id AS RiderID
FROM rides
ORDER BY distance_km DESC
LIMIT 5; 

SELECT driver_id AS DriverID, count(rides_id) AS TotalRides
FROM rides
group by driver_id
ORDER BY TotalRides DESC;

SELECT payment_method AS PaymentMethod, count(payment_method) AS NumberOfTransaction
FROM payments
WHERE amount > 50000
GROUP BY payment_method;

SELECT rides_id AS RideID, duration AS Duration, driver_id AS DriverID
from drivers, rides
WHERE duration > 2
Order by Duration Desc;

SELECT drivers.driver_id AS DriverID,
	AVG(drivers.rating) AS AVGDriverRating
FROM drivers
JOIN rides ON rides.driver_id = drivers.driver_id  
Group by drivers.driver_id
Order by AVGDriverRating DESC
LIMIT 7;
