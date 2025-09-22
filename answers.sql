-- Joins and Relationships Assignment
-- Author: Marymagdalene
-- Date: 22/09/2025

-- ==========================================
-- Question 1: INNER JOIN
-- ==========================================
-- Write an SQL query to get firstName, lastName, email, and officeCode of all employees.
-- Use INNER JOIN to combine employees table with offices table using officeCode column.

SELECT 
    e.firstName,
    e.lastName,
    e.email,
    e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;

-- Note: INNER JOIN returns only records that have matching values in both tables
-- This will show employees who have a valid office assignment


-- ==========================================
-- Question 2: LEFT JOIN
-- ==========================================
-- Write an SQL query to get productName, productVendor, and productLine from products table.
-- Use LEFT JOIN to combine products table with productlines table using productLine column.

SELECT 
    p.productName,
    p.productVendor,
    p.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;

-- Note: LEFT JOIN returns all records from the left table (products)
-- and matching records from the right table (productlines)
-- If no match exists, NULL values are returned for productlines columns


-- ==========================================
-- Question 3: RIGHT JOIN
-- ==========================================
-- Write an SQL query to retrieve orderDate, shippedDate, status, and customerNumber 
-- for the first 10 orders. Use RIGHT JOIN to combine customers table with orders table 
-- using customerNumber column.

SELECT 
    o.orderDate,
    o.shippedDate,
    o.status,
    o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
LIMIT 10;

-- Note: RIGHT JOIN returns all records from the right table (orders)
-- and matching records from the left table (customers)
-- LIMIT 10 restricts the result to first 10 records
-- This will show the first 10 orders even if some don't have customer details


-- ==========================================
-- Additional Examples and Best Practices
-- ==========================================
/*
JOIN Types Summary:
1. INNER JOIN: Returns only matching records from both tables
2. LEFT JOIN: Returns all records from left table + matching from right
3. RIGHT JOIN: Returns all records from right table + matching from left
4. FULL OUTER JOIN: Returns all records when there's a match in either table

Best Practices:
- Always use table aliases (e.g., 'e' for employees) for cleaner code
- Specify column names with table prefixes to avoid ambiguity
- Use meaningful alias names that make sense in context
- Comment your queries to explain the business logic
- Test queries with small datasets first

Performance Tips:
- Ensure JOIN columns are indexed for better performance
- Use appropriate JOIN types based on your data requirements
- Consider the order of tables in your JOIN for optimization
*/
