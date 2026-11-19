
-- Week 6 Assignment: SQL Joins and Relationships
-- Student Name: Emmanuel Lokudu
-- Date: 2026-11-19

-- Question 1: INNER JOIN
-- Employees and Offices

SELECT
    employees.firstName,
    employees.lastName,
    employees.email,
    employees.officeCode
FROM employees
INNER JOIN offices
    ON employees.officeCode = offices.officeCode;


-- Question 2: LEFT JOIN
-- Products and Product Lines

SELECT
    products.productName,
    products.productVendor,
    products.productLine
FROM products
LEFT JOIN productlines
    ON products.productLine = productlines.productLine;


-- Question 3: RIGHT JOIN
-- Customers and Orders (First 10 Orders)

SELECT
    orders.orderDate,
    orders.shippedDate,
    orders.status,
    orders.customerNumber
FROM customers
RIGHT JOIN orders
    ON customers.customerNumber = orders.customerNumber
LIMIT 10;
