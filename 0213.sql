-- 문제 1

SELECT DISTINCT
	country 
FROM
	customers
ORDER BY
	country ASC;

-- 문제 2
SELECT DISTINCT
	state
FROM
	customers
ORDER BY
	state DESC;
    
-- 문제 3
SELECT 
	customerNumber, customerName, country
FROM
	customers
WHERE
	country != 'USA'
ORDER BY
	customerNumber DESC;
    
-- 문제 4
select 
	*
from 
	offices
where 
	city = 'Paris';
    

-- 문제 5
SELECT
	customerNumber, customerName, country, state
FROM
	customers
WHERE
	country = 'USA' AND state = 'CA'
ORDER BY
	customerName DESC;
    
-- 문제 6
SELECT
	customerNumber, customerName, country, state
FROM
	customers
WHERE
	country = 'USA' AND state = 'CA'
ORDER BY
	customerNumber DESC;

-- 문제 7
SELECT
	customerNumber, customerName, country, state
FROM
	customers
WHERE
	state = 'CA' OR state = 'NY' OR state = 'CT' OR state = 'PA'
ORDER BY
	customerNumber DESC;
    
-- 문제 8
SELECT
	productCode, productName, quantityInStock
FROM
	products
WHERE
	quantityInStock < 1000
ORDER BY
	quantityInStock ASC;
    
-- 문제 9
SELECT
	productCode, productName, quantityInStock
FROM
	products    
WHERE
	quantityInStock BETWEEN 2000 AND 3000
ORDER BY
	quantityInStock DESC;
    
-- 문제 10
SELECT
	customerNumber, customerName, phone
FROM
	customers
WHERE
	phone LIKE '%555'
ORDER BY
	customerName DESC;

-- 문제 11
SELECT
	productCode, quantityInStock
FROM
	products
ORDER BY
	quantityInStock DESC 
		LIMIT 5;

-- 문제 12
SELECT
	jobTitle, count(*) AS 'count_job'
FROM
	employees
GROUP BY
	jobTitle
ORDER BY
	count(*) DESC,jobTitle DESC;
    
-- 문제 13
SELECT
	country, count(*) AS 'count_country'
FROM
	customers
GROUP BY
	country
ORDER BY
	count(*) DESC, country DESC;
    
-- 문제 14
SELECT
	orderNumber, sum(quantityOrdered * priceEach) AS total
FROM
	orderdetails
GROUP BY
	orderNumber
ORDER BY
	total DESC;
    
-- 문제 15
SELECT
	year(orderDate) AS 'year', Count(*) AS 'COUNT(orderNumber)'
FROM
	orders
GROUP BY
	year(orderDate)
ORDER BY
	year;
    
-- 문제 16
SELECT
	productLine, max(quantityInStock) AS max_stock
FROM
	products
GROUP BY
	productLine
HAVING
	max_stock < 9000;
    
-- 문제 17
SELECT
	orderNumber, sum(quantityOrdered) AS itemCount, sum(priceeach * quantityOrdered) AS total
FROM
	orderdetails
GROUP BY
	ordernumber
HAVING
	itemCount >= 500 AND total >= 50000;
	

    


    
	

    


	