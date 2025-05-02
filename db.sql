CREATE SCHEMA `sales_database`
    DEFAULT CHARACTER SET utf8;

use sales_database;

CREATE TABLE `sales` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `product` VARCHAR(255) NOT NULL,
  `price` DECIMAL(16,2) NOT NULL DEFAULT 0,
  `quantity` INT NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`));

INSERT INTO `sales` (`product`, `price`, `quantity`)
VALUES ('Laptop', '1000', '5'),
        ('Phone', '700', '3'),
        ('Tablet', '500', '2'),
        ('Printer', '300', '4');

SELECT *
FROM `sales`;

SELECT *
FROM `sales`
LIMIT 2;

--- тоже выборка первых двух записей, но с явной сортировкой по id
SELECT * 
FROM `sales`
ORDER BY id ASC
LIMIT 2;

SELECT SUM(price * quantity)
AS totalPrice
FROM `sales`;

SELECT product,
	SUM(quantity) AS totalQuantity,
	AVG(price / quantity) AS avgPrice
FROM `sales`
GROUP BY product;
