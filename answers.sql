-- ============================================================================
-- PLP Academy: Database Systems
-- Week 4 Database Assignment: Advanced SQL Queries and Aggregations
-- Student: Michael Myeko
-- ============================================================================

-- Question 1: Total payment amount for each payment date (Top 5 latest dates)
SELECT 
    paymentDate, 
    SUM(amount) AS total_amount
FROM 
    payments
GROUP BY 
    paymentDate
ORDER BY 
    paymentDate DESC
LIMIT 5;

-- Question 2: Average credit limit of each customer grouped by name and country
SELECT 
    customerName, 
    country, 
    AVG(creditLimit) AS average_credit_limit
FROM 
    customers
GROUP BY 
    customerName, 
    country;

-- Question 3: Total price of products ordered grouped by product code and quantity
SELECT 
    productCode, 
    quantityOrdered, 
    SUM(quantityOrdered * priceEach) AS total_price
FROM 
    orderdetails
GROUP BY 
    productCode, 
    quantityOrdered;

-- Question 4: Highest payment amount for each check number
SELECT 
    checkNumber, 
    MAX(amount) AS highest_amount
FROM 
    payments
GROUP BY 
    checkNumber;
