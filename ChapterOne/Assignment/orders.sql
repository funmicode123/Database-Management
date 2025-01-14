CREATE DATABASE e_commerce;

USE e_commerce;
CREATE TABLE orders(
	orderId SERIAL ,
    userId INT NOT NULL,
    productId INT NOT NULL,
    orderQuantity INT NOT NULL,
    CONSTRAINT fk_orders_users
    FOREIGN KEY (userId) REFERENCES users(userId),
    CONSTRAINT fk_orders_products
    FOREIGN KEY (productId) REFERENCES products(productId)
    );
    
    ALTER TABLE users
    MODIFY COLUMN userId INT;