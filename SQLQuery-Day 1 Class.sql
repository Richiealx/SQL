SELECT 1+1
SELECT 'Richard'
SELECT 'Richard went to church today'
SELECT column 1, column 2, column 3
FROM [database].[schema].[table]

SELECT *
FROM [bikestore] [sales] [customers];


---My name is Richard Frimpong--
SELECT 2+5
SELECT 'i met Bammy today'
SELECT 'richiefrimps6@gamil.com'

---syntax for selecting a table---
SELECT columns 1, columns 2, columns 3
FROM [database].[schema].[table]
SELECT phone, street, city
FROM [BikeStores].[sales].[customers];
SELECT *
FROM [BikeStores].[sales].[customers];

---SELECT city, state, zip_code, email---
SELECT city,state, zip_code, email
FROM [BikeStores].[sales].[customers];
SELECT city
FROM [BikeStores].[sales].[customers];
---SORTING DATA---
SELECT *
FROM [database].[schema].[table]
ORDER BY column_name DESC
SELECT *
FROM [BikeStores].[sales].[customers]
ORDER BY first_name DESC;
SELECT *
FROM [BikeStores].[sales].[customers]
ORDER BY first_name ASC;
---COMPARISON OPEARTOR--
>
<
>=
<=


