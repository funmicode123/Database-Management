USE transport;

CREATE TABLE drivers(
  driver_id int PRIMARY KEY NOT NULL,
  name varchar(100) NOT NULL,
  rating varchar (50), 
  total_rides int NOT NULL
  );
  
  
  CREATE TABLE riders(
  rider_id int PRIMARY KEY NOT NULL,
  name varchar(100) NOT NULL,
  city varchar (50)
  );
  
  CREATE TABLE rides(
  ride_id int PRIMARY KEY NOT NULL,
  driver_id int NOT NULL,
  rider_id int NOT NULL,
  fair varchar(100) NOT NULL,
  rating varchar (50), 
  distance_km int NOT NULL
  );
  
  CREATE TABLE payments(
  payment_id int PRIMARY KEY NOT NULL,
  ride_id int NOT NULL,
  driver_id int NOT NULL,
  rider_id int NOT NULL,
  fair varchar(100) NOT NULL,
  rating varchar (50), 
  distance_km int NOT NULL
  );
  
  ALTER TABLE payments 
  ADD COLUMN amount INT NOT NULL,
  ADD COLUMN payment_method VARCHAR(50) NOT NULL,
  DROP COLUMN driver_id,
  DROP COLUMN fair,
  DROP COLUMN rating,
  DROP COLUMN distance_km;

ALTER TABLE rides
DROP COLUMN fair,
DROP COLUMN rating,
DROP COLUMN distance_km,
Add column fare decimal(10,2) NOT NULL,
ADD COLUMN rating DECIMAL(2,1), 
ADD COLUMN distance_km DECIMAL(5,2) NOT NULL;

ALTER TABLE payments
DROP COLUMN rider_id;

ALTER TABLE drivers
DROP COLUMN rating,
ADD COLUMN rating DECIMAL (2, 1) NOT NULL;

ALTER table drivers
DROP COLUMN driver_id,
DROP COLUMN name,
DROP COLUMN total_rides,
DROP COLUMN rating,
ADD COLUMN driver_id INT NOT NULL,
ADD COLUMN name varchar(100) NOT NULL,
ADD COLUMN rating DECIMAL (2, 1) NOT NULL, 
ADD COLUMN total_rides int NOT NULL;

INSERT INTO drivers VALUES(
1, 'John Doe', 4.5, 120);
INSERT INTO drivers VALUES
(2, 'Jane Smith', 4.2, 90);
INSERT INTO drivers VALUES
(3, 'James Bond', 4.7, 150);
INSERT INTO drivers VALUES
(4, 'Samantha James', 4.3, 80);
INSERT INTO drivers VALUES
(5, 'Michael Brown', 4.0, 60);
INSERT INTO drivers VALUES
(6, 'Nina Williams', 4.6, 200);
INSERT INTO drivers VALUES
(7, 'Chris Johnson', 4.1, 110);
INSERT INTO drivers VALUES
(8, 'Sarah Davis', 4.8, 100);
INSERT INTO drivers VALUES
(9, 'David Lee', 3.9, 70);
INSERT INTO drivers VALUES
(10, 'Emma Green', 4.4, 130);
INSERT INTO drivers VALUES
(11, 'Olumide Adebayo', 4.7, 150);
INSERT INTO drivers VALUES
(12, 'Grace Okafor', 4.3, 140);
INSERT INTO drivers VALUES
(13, 'Julius Adedeji', 4.6, 175);
INSERT INTO drivers VALUES
(14, 'Tolu Olowolagba', 4.2, 105);
INSERT INTO drivers VALUES
(15, 'Fola Akinwunmi', 4.5, 125);
INSERT INTO drivers VALUES
(16, 'Oluwaseun Bello', 4.1, 115);
INSERT INTO drivers VALUES
(17, 'Kayode Ogunleye', 4.8, 180);
INSERT INTO drivers VALUES
(18, 'Chinonso Ifeanyi', 3.8, 85);
INSERT INTO drivers VALUES
(19, 'Oluwafunmilayo Bello', 4.3, 140);
INSERT INTO drivers VALUES
(20, 'Adeola Akin', 4.6, 160);


INSERT INTO Riders VALUES
(1, 'Alice Johnson', 'Lekki');
INSERT INTO Riders VALUES
(2, 'Victor Martins', 'Ikeja');
INSERT INTO Riders VALUES
(3, 'Funke Bello', 'Victoria Island');
INSERT INTO Riders VALUES
(4, 'Tunde Adeyemi', 'Surulere');
INSERT INTO Riders VALUES
(5, 'Grace Olamide', 'Yaba');
INSERT INTO Riders VALUES
(6, 'Kingsley Obi', 'Lekki');
INSERT INTO Riders VALUES
(7, 'Folasade Okoro', 'Ikeja');
INSERT INTO Riders VALUES
(8, 'Emeka Okafor', 'Victoria Island');
INSERT INTO Riders VALUES
(9, 'Temilade Adedeji', 'Lekki');
INSERT INTO Riders VALUES
(10, 'Rita Durojaiye', 'Surulere');
INSERT INTO Riders VALUES
(11, 'Chuka Nwosu', 'Yaba');
INSERT INTO Riders VALUES
(12, 'Ayotunde Adeleke', 'Ikeja');
INSERT INTO Riders VALUES
(13, 'Lola Abiola', 'Lekki');
INSERT INTO Riders VALUES
(14, 'Olumide Bakare', 'Surulere');
INSERT INTO Riders VALUES
(15, 'Chidera Okonkwo', 'Victoria Island');
INSERT INTO Riders VALUES
(16, 'Wale Oni', 'Yaba');
INSERT INTO Riders VALUES
(17, 'Olivia Adebayo', 'Lekki');
INSERT INTO Riders VALUES
(18, 'Temidayo Alabi', 'Ikeja');
INSERT INTO Riders VALUES
(19, 'Micheal Ojo', 'Victoria Island');
INSERT INTO Riders VALUES
(20, 'Tolu Ayinde', 'Surulere');
INSERT INTO Riders VALUES
(21, 'Grace Williams', 'Lekki');
INSERT INTO Riders VALUES
(22, 'Olumide Ayodele', 'Ikeja');
INSERT INTO Riders VALUESriders
(23, 'James Osundare', 'Yaba');
INSERT INTO Riders VALUES
(24, 'Chika Okafor', 'Surulere');
INSERT INTO Riders VALUES
(25, 'Sandra Ogunleye', 'Victoria Island');

INSERT INTO Rides VALUES
(1, 1, 1, 3000, 4.5, 10);
INSERT INTO Rides VALUES
(2, 2, 2, 2500, 4.2, 8);
INSERT INTO Rides VALUES
(3, 3, 3, 4500, 4.7, 15);
INSERT INTO Rides VALUES
(4, 4, 4, 3500, 4.3, 12);
INSERT INTO Rides VALUES
(5, 5, 5, 2000, 4.0, 7);
INSERT INTO Rides VALUES
(6, 6, 6, 4000, 4.6, 20);
INSERT INTO Rides VALUES
(7, 7, 7, 2800, 4.1, 9);
INSERT INTO Rides VALUES
(8, 8, 8, 5000, 4.8, 18);
INSERT INTO Rides VALUES
(9, 9, 9, 2200, 3.9, 6);
INSERT INTO Rides VALUES
(10, 10, 10, 3700, 4.4, 14);
INSERT INTO Rides VALUES
(11, 11, 11, 3900, 4.7, 16);
INSERT INTO Rides VALUES
(12, 12, 12, 3600, 4.3, 11);
INSERT INTO Rides VALUES
(13, 13, 13, 4200, 4.6, 17);
INSERT INTO Rides VALUES
(14, 14, 14, 3300, 4.2, 13);
INSERT INTO Rides VALUES
(15, 15, 15, 3800, 4.5, 19);
INSERT INTO Rides VALUES
(16, 16, 16, 2500, 4.1, 8);
INSERT INTO Rides VALUES
(17, 17, 17, 4800, 4.8, 22);
INSERT INTO Rides VALUES
(18, 18, 18, 3100, 3.8, 10);
INSERT INTO Rides VALUES
(19, 19, 19, 3300, 4.3, 14);
INSERT INTO Rides VALUES
(20, 20, 20, 4600, 4.6, 20);
INSERT INTO Rides VALUES
(21, 1, 21, 2900, 4.4, 11);
INSERT INTO Rides VALUES
(22, 2, 22, 3200, 4.1, 12);
INSERT INTO Rides VALUES
(23, 3, 23, 3400, 4.7, 13);
INSERT INTO Rides VALUES
(24, 4, 24, 3100, 4.3, 9);
INSERT INTO Rides VALUES
(25, 5, 25, 3600, 4.2, 15);
INSERT INTO Rides VALUES
(26, 6, 1, 2800, 4.6, 12);
INSERT INTO Rides VALUES
(27, 7, 2, 3500, 4.1, 16);
INSERT INTO Rides VALUES
(28, 8, 3, 5000, 4.8, 18);
INSERT INTO Rides VALUES
(29, 9, 4, 2300, 3.9, 7);
INSERT INTO Rides VALUES
(30, 10, 5, 3800, 4.4, 14);
INSERT INTO Rides VALUES
(31, 11, 6, 4000, 4.7, 20);
INSERT INTO Rides VALUES
(32, 12, 7, 3300, 4.3, 13);
INSERT INTO Rides VALUES
(33, 13, 8, 4100, 4.6, 17);
INSERT INTO Rides VALUES
(34, 14, 9, 3100, 4.2, 11);
INSERT INTO Rides VALUES
(35, 15, 10, 4200, 4.5, 19);
INSERT INTO Rides VALUES
(36, 16, 11, 2900, 4.1, 12);
INSERT INTO Rides VALUES
(37, 17, 12, 4700, 4.8, 21);
INSERT INTO Rides VALUES
(38, 18, 13, 3300, 3.8, 10);
INSERT INTO Rides VALUES
(39, 19, 14, 3200, 4.3, 14);
INSERT INTO Rides VALUES
(40, 20, 15, 4500, 4.6, 20);
INSERT INTO Rides VALUES
(41, 1, 16, 3000, 4.5, 12);
INSERT INTO Rides VALUES
(42, 2, 17, 2500, 4.2, 9);
INSERT INTO Rides VALUES
(43, 3, 18, 4500, 4.7, 15);
INSERT INTO Rides VALUES
(44, 4, 19, 3500, 4.3, 13);
INSERT INTO Rides VALUES
(45, 5, 20, 2000, 4.0, 7);
INSERT INTO Rides VALUES
(46, 6, 21, 4000, 4.6, 20);
INSERT INTO Rides VALUES
(47, 7, 22, 2800, 4.1, 8);
INSERT INTO Rides VALUES
(48, 8, 23, 5000, 4.8, 18);
INSERT INTO Rides VALUES
(49, 9, 24, 2200, 3.9, 6);
INSERT INTO Rides VALUES
(50, 10, 25, 3700, 4.4, 14);


INSERT INTO Payments VALUES
(1, 1, 3000, 'Card');
INSERT INTO Payments VALUES
(2, 2, 2500, 'Cash');
INSERT INTO Payments VALUES
(3, 3, 4500, 'Card');
INSERT INTO Payments VALUES
(4, 4, 3500, 'Mobile Money');
INSERT INTO Payments VALUES
(5, 5, 2000, 'Cash');
INSERT INTO Payments VALUES
(6, 6, 4000, 'Card');
INSERT INTO Payments VALUES
(7, 7, 2800, 'Mobile Money');
INSERT INTO Payments VALUES
(8, 8, 5000, 'Card');
INSERT INTO Payments VALUES
(9, 9, 2200, 'Cash');
INSERT INTO Payments VALUES
(10, 10, 3700, 'Mobile Money');
INSERT INTO Payments VALUES
(11, 11, 3900, 'Card');
INSERT INTO Payments VALUES
(12, 12, 3600, 'Cash');
INSERT INTO Payments VALUES
(13, 13, 4200, 'Mobile Money');
INSERT INTO Payments VALUES
(14, 14, 3300, 'Card');
INSERT INTO Payments VALUES
(15, 15, 3800, 'Mobile Money');
INSERT INTO Payments VALUES
(16, 16, 2500, 'Cash');
INSERT INTO Payments VALUES
(17, 17, 4800, 'Card');
INSERT INTO Payments VALUES
(18, 18, 3100, 'Cash');
INSERT INTO Payments VALUES
(19, 19, 3300, 'Mobile Money');
INSERT INTO Payments VALUES
(20, 20, 4600, 'Card');
INSERT INTO Payments VALUES
(21, 21, 2900, 'Cash');
INSERT INTO Payments VALUES
(22, 22, 3200, 'Card');
INSERT INTO Payments VALUES
(23, 23, 3400, 'Mobile Money');
INSERT INTO Payments VALUES
(24, 24, 3100, 'Cash');
INSERT INTO Payments VALUES
(25, 25, 3600, 'Card');
INSERT INTO Payments VALUES
(26, 26, 2800, 'Mobile Money');
INSERT INTO Payments VALUES
(27, 27, 3500, 'Card');
INSERT INTO Payments VALUES
(28, 28, 5000, 'Cash');
INSERT INTO Payments VALUES
(29, 29, 2300, 'Mobile Money');
INSERT INTO Payments VALUES
(30, 30, 3800, 'Card');
INSERT INTO Payments VALUES
(31, 31, 4000, 'Cash');
INSERT INTO Payments VALUES
(32, 32, 3300, 'Mobile Money');
INSERT INTO Payments VALUES
(33, 33, 4100, 'Card');
INSERT INTO Payments VALUES
(34, 34, 3100, 'Cash');
INSERT INTO Payments VALUES
(35, 35, 4200, 'Mobile Money');
INSERT INTO Payments VALUES
(36, 36, 2900, 'Card');
INSERT INTO Payments VALUES
(37, 37, 4700, 'Cash');
INSERT INTO Payments VALUES
(38, 38, 3300, 'Mobile Money');
INSERT INTO Payments VALUES
(39, 39, 3200, 'Card');
INSERT INTO Payments VALUES
(40, 40, 4500, 'Cash');
INSERT INTO Payments VALUES
(41, 41, 3000, 'Card');
INSERT INTO Payments VALUES
(42, 42, 2500, 'Cash');
INSERT INTO Payments VALUES
(43, 43, 4500, 'Mobile Money');
INSERT INTO Payments VALUES
(44, 44, 3500, 'Card');
INSERT INTO Payments VALUES
(45, 45, 2000, 'Cash');
INSERT INTO Payments VALUES
(46, 46, 4000, 'Card');
INSERT INTO Payments VALUES
(47, 47, 2800, 'Mobile Money');
INSERT INTO Payments VALUES
(48, 48, 5000, 'Card');
INSERT INTO Payments VALUES
(49, 49, 2200, 'Cash');
INSERT INTO Payments VALUES
(50, 50, 3700, 'Mobile Money');

SELECT name, rating from drivers
order by rating desc
limit 5;

SELECT rider_id, count(rides_id) AS total_rides
FROM rides
group by rider_id
HAVING COUNT(rides_id) > 5;

SELECT SUM(amount) AS total_revenue
FROM payments;

SELECT city,
COUNT(rider_id) AS total_rides
from riders
GROUP BY city
ORDER BY total_rides DESC
LIMIT 1;


SELECT driver_id, drivers.name AS driver_name, 
       SUM(fare) AS total_revenue
FROM rides 
JOIN payments ON drivers.driver_id = payments.driver_id
GROUP BY drivers.driver_id, drivers.name
ORDER BY total_revenue DESC
LIMIT 1;






