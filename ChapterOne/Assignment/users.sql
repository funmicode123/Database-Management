CREATE DATABASE e_commerce;

USE e_commerce;
CREATE TABLE users(
  userId int PRIMARY KEY NOT NULL,
  firstName varchar(100) NOT NULL,
  SecondName varchar(100) NOT NULL,
  phoneNumber int UNIQUE NOT NULL
  );