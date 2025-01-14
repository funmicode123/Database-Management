CREATE DATABASE e_commerce;

USE e_commerce;
CREATE TABLE products (
  productId int PRIMARY KEY NOT NULL,
  productName varchar(100) NOT NULL,
  productType varchar(100) NOT NULL,
  availableStock int NOT NULL,
  productPrice decimal(10,2) DEFAULT NULL,
  UNIQUE KEY productName (productName)
)