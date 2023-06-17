-- MY SQL ASSIGNMENT 1
-- 1. Prepare a list of offices sorted by country, state, city.
SELECT OFFICECODE,COUNTRY, STATE, CITY FROM OFFICES
ORDER BY OFFICECODE ASC;


-- 2. How many employees are there in the company?
SELECT COUNT(EMPLOYEENUMBER) AS TOTAL_EMPLOYEES FROM EMPLOYEES;
-- There are 23 Emplyees in the company

-- 3. What is the total of payments received?
SELECT SUM(AMOUNT) AS TOTAL_PAYMENTS_RECEIVED FROM PAYMENTS;
-- A total payments of 8853839.23 USD was received.


-- 4. List the product lines that contain 'Cars'.
SELECT PRODUCTLINE FROM PRODUCTS
WHERE PRODUCTLINE IN ("CLASSIC CARS" , "VINTAGE CARS");
-- OR
SELECT DISTINCT productLine
FROM products
WHERE productLine LIKE '%Cars%';


-- 5. Report total payments for October 28, 2004.
SELECT SUM(AMOUNT) AS TOTAL_PAYMENTS FROM PAYMENTS
WHERE PAYMENTDATE = "2004-10-28"
-- The total payments for October 28, 2004. is 47411.33



-- 6. Report those payments greater than \\$100,000.
SELECT * FROM PAYMENTS
WHERE AMOUNT > 100000;


-- 7. List the products in each product line.
SELECT PRODUCTNAME, PRODUCTLINE FROM PRODUCTS
GROUP BY PRODUCTLINE;
-- OR
SELECT productLine, productName
FROM products
ORDER BY productLine, productName;


-- 8. How many products in each product line?
SELECT PRODUCTNAME, PRODUCTLINE, COUNT(QUANTITYINSTOCK) AS PRODUCT_QUANTITY FROM PRODUCTS
GROUP BY PRODUCTLINE
ORDER BY PRODUCT_QUANTITY DESC;
-- OR
SELECT PRODUCTLINE, COUNT(QUANTITYINSTOCK) AS PRODUCT_QUANTITY FROM PRODUCTS
GROUP BY PRODUCTLINE
ORDER BY PRODUCT_QUANTITY DESC;



-- 9. What is the minimum payment received?
SELECT MIN(AMOUNT) AS MIN_AMOUNT FROM PAYMENTS;
-- The minimum payment received is $615.45



-- 10. List all payments greater than twice the average payment.
SELECT * FROM PAYMENTS
WHERE AMOUNT > 2 * (SELECT AVG(AMOUNT) FROM PAYMENTS);


-- 11. What is the average percentage markup of the MSRP on buyPrice?
SELECT AVG((MSRP-buyPrice)/buyPrice)*100 AS avg_markup_percentage
FROM PRODUCTS;
-- The average percentage markup of the MSRP on buyprice is 88.7023921713


-- 12. How many distinct products does ClassicModels sell?
SELECT COUNT(DISTINCT productCode) as distinct_products
FROM products;
-- ClassicModels sell 110 distinct products

-- 13. Report the name and city of customers who don't have sales representatives?
SELECT * FROM CUSTOMERS;
SELECT CUSTOMERNAME, CITY FROM CUSTOMERS
WHERE SALESREPEMPLOYEENUMBER IS NULL
ORDER BY CUSTOMERNAME ASC;

--  14. What are the names of executives with VP or Manager in their title? Use the CONCAT 
-- function to combine the employee's first name and last name into a single field for reporting.
SELECT CONCAT(firstName, ' ', lastName) AS executive_name
FROM employees
WHERE jobTitle LIKE '%VP%' OR jobTitle LIKE '%Manager%';

-- 15. Which orders have a value greater than $5,000?
SELECT ORDERNUMBER, SUM(PRICEEACH * QUANTITYORDERED) AS ORDERVALUE
FROM ORDERDETAILS
GROUP BY ORDERNUMBER
HAVING ORDERVALUE > 5000;
