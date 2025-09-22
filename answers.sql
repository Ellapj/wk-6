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

-- Note: INNER JOIN returns only employees who have a matching office assignment
-- This will show all employees since every employee in this database has a valid officeCode


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

-- Note: LEFT JOIN returns all records from products table
-- and matching records from productlines table
-- In this database, all products have matching product lines, so this will return all products


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

-- Note: RIGHT JOIN returns all records from orders table (right table)
-- and matching records from customers table (left table)
-- LIMIT 10 restricts the result to first 10 orders
-- In this database, all orders have matching customers


-- ==========================================
-- Additional Examples and Verification Queries
-- ==========================================

-- Query to verify table structures:
-- DESCRIBE employees;
-- DESCRIBE offices;
-- DESCRIBE products;
-- DESCRIBE productlines;
-- DESCRIBE customers;
-- DESCRIBE orders;

-- Query to count records in each table:
-- SELECT 'employees' as table_name, COUNT(*) as record_count FROM employees
-- UNION ALL
-- SELECT 'offices', COUNT(*) FROM offices
-- UNION ALL
-- SELECT 'products', COUNT(*) FROM products
-- UNION ALL
-- SELECT 'productlines', COUNT(*) FROM productlines
-- UNION ALL
-- SELECT 'customers', COUNT(*) FROM customers
-- UNION ALL
-- SELECT 'orders', COUNT(*) FROM orders;

-- Sample data preview queries:
-- SELECT * FROM employees LIMIT 5;
-- SELECT * FROM offices LIMIT 5;
-- SELECT * FROM products LIMIT 5;

/*
JOIN Types Explanation:
1. INNER JOIN: Returns only matching records from both tables
2. LEFT JOIN: Returns all records from left table + matching from right table
3. RIGHT JOIN: Returns all records from right table + matching from left table

Database Schema Notes:
- employees table has: employeeNumber, lastName, firstName, email, officeCode, etc.
- offices table has: officeCode, city, phone, addressLine1, country, etc.
- products table has: productCode, productName, productLine, productVendor, etc.
- productlines table has: productLine, textDescription, etc.
- customers table has: customerNumber, customerName, etc.
- orders table has: orderNumber, orderDate, shippedDate, status, customerNumber, etc.

Best Practices:
- Always use table aliases (e.g., 'e' for employees) for cleaner, readable code
- Specify column names with table prefixes to avoid ambiguity
- Use meaningful alias names that make sense in context
- Test queries with small result sets first using LIMIT
- Check for NULL values in JOIN conditions when using LEFT/RIGHT JOINs
*/
