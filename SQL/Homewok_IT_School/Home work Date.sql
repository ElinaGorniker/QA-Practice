ALTER TABLE products 
ADD date_of_arrival DATE DEFAULT NULL;

SELECT id, name, price, categoryID, 
DAY(date_of_arrival) AS Day, 
MONTH(date_of_arrival) AS Month, 
YEAR(date_of_arrival) AS Year 
FROM products;

SELECT YEAR(date_of_arrival), COUNT(*) AS Count 
FROM products 
GROUP BY YEAR(date_of_arrival);  
