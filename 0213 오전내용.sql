-- 복습 1
SELECT 
	lastName
FROM 
	employees
ORDER BY
	lastName ASC;
    
-- Distinct
SELECT DISTINCT
	lastName
FROM
	employees
ORDER BY
	lastName ASC;
    
-- WHERE
SELECT
	select_list
FROM
	table_name
WHERE
	search_condition;
    
-- WHERE Practice1

SELECT
	lastName, firstName, officeCode
FROM 
	employees
WHERE
	officecode = 1;
    
-- WHERE Practice2

SELECT
	lastName,firstName,jobTitle
FROM
	employees
WHERE
	jobtitle != 'Sales Rep';
    
-- WHERE Practice3
SELECT
	lastName,firstName,officeCode,jobTitle
FROM
	employees
WHERE
	officeCode >= 3 and jobtitle = 'Sales Rep';
    
-- WHERE Practice4
SELECT
	lastName,firstName,officeCode,jobtitle
FROM
	employees
WHERE
	officeCode < 5 OR jobtitle != 'Sales REP';

-- WHERE Practice5
SELECT
	lastName,firstName,officeCode
FROM
	employees
WHERE
	1 <= officeCode AND officeCode <=4 ;
    
-- WHERE Practice6
SELECT
	lastName,firstName,officeCode
FROM
	employees
WHERE
	1 <= officeCode AND officeCode <=4 
    ORDER BY officeCode;
    
-- WHERE Practice7
SELECT
	lastName,firstName,officeCode
FROM
	employees
WHERE
	officeCode =1 OR officeCode =3 OR officeCode =4;
    
-- WHERE Practice8
SELECT
	lastName,firstName,officeCode
FROM
	employees    
WHERE
	officeCode NOT IN (1,3,4);
    
-- WHERE Practice9
SELECT
	lastName,firstName
FROM
	employees    
WHERE
	lastName Like'%son';
    
-- WHERE Practice10
SELECT
	lastName,firstName
FROM
	employees
WHERE
	firstName Like '___y';
    
-- LIMIT Practice1
SELECT
	firstName,officeCode
FROM
	employees
ORDER BY
	officeCode DESC LIMIT 7;
    
-- LIMIT Practice2
SELECT
	firstName,officeCode
FROM
	employees
ORDER BY
	officeCode DESC LIMIT 3,5;
    
-- GROUP BY Practice1
SELECT
	country, AVG(creditLimit) AS avgOfCreditLimit
FROM
	customers
GROUP BY
	country
ORDER BY
	avgOfCreditLimit DESC;
    
-- GROUP BY Practice2
SELECT
	country, AVG(creditLimit)
FROM
	customers
GROUP BY
	country
HAVING
	AVG(creditLimit) > 80000;
    
-- NULL
SELECT
	postalCode
FROM
	customers
WHERE
	postalCode IS NOT NULL
ORDER BY
	postalCode;
