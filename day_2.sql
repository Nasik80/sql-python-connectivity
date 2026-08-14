CREATE DATABASE shopping_db;
USE shopping_db;
CREATE TABLE Product(
product_id INT AUTO_INCREMENT primary KEY,
product_name varchar(50) NOT NULL,
category VARCHAR(50) NOT NULL,
price INT,
stock INT,
rating DECIMAL(3,1)
);

select * from Product;

show tables;

desc Product;

INSERT INTO Product (product_name, category, price, stock, rating)
VALUES
('Laptop', 'Electronics', 65000, 10, 4.8),
('Mobile', 'Electronics', 25000, 25, 4.5),
('Rice', 'Grocery', 1200, 40, 4.2),
('Shirt', 'Clothing', 900, 30, 4.1),
('TV', 'Electronics', 45000, 8, 4.7),
('Shoes', 'Clothing', 2200, 18, 4.3),
('Oil', 'Grocery', 850, 50, 4.0),
('Headphones', 'Electronics', 1800, 12, 4.6);

select product_name, price from Product;
select category, stock from Product;
select * from Product where price > 5000;
select * from Product where price < 1000;
select * from Product where price between 1000 and 5000;
select * from Product where stock > 20;
select * from Product where rating > 4;
select * from Product where category = 'Electronics' and rating > 4;
select * from Product where category = 'Grocery' or category = 'Clothing';
select product_name, rating from Product where stock < 15;
update Product set price = 70000 where product_name = 'Laptop';
UPDATE Product SET stock = 20 WHERE product_name = 'TV';
UPDATE Product SET category = 'Accessories' WHERE product_name = 'Headphones';
ALTER TABLE Product ADD brand VARCHAR(50);
ALTER TABLE Product RENAME COLUMN product_name TO item_name;
ALTER TABLE Product MODIFY brand VARCHAR(100);
ALTER TABLE Product RENAME TO Product_Details;
DELETE FROM Product_Details WHERE product_id = 8;
SELECT * FROM Product_Details;
ALTER TABLE Product_Details DROP COLUMN brand;
DROP TABLE Product_Details;
DROP DATABASE shopping_db;

