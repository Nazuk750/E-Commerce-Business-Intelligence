-- ============================================================
-- E-Commerce Business Intelligence & Customer Analytics
-- SQL Analysis Project
-- ============================================================

CREATE DATABASE IF NOT EXISTS ecommerce_analytics;
USE ecommerce_analytics;

-- ============================================================
-- 1. TABLES
-- ============================================================

CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    city VARCHAR(50),
    state VARCHAR(50),
    customer_segment VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    sub_category VARCHAR(50),
    price DECIMAL(10,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,
    region VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE IF NOT EXISTS order_details (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    discount DECIMAL(5,2) DEFAULT 0,
    sales DECIMAL(10,2) NOT NULL,
    profit DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- ============================================================
-- 2. CUSTOMERS DATA
-- ============================================================

INSERT INTO customers
(customer_name, email, city, state, customer_segment)
VALUES
('Aarav Sharma', 'aarav@gmail.com', 'Delhi', 'Delhi', 'Regular'),
('Priya Singh', 'priya@gmail.com', 'Mumbai', 'Maharashtra', 'Premium'),
('Rohan Mehta', 'rohan@gmail.com', 'Bengaluru', 'Karnataka', 'Regular'),
('Ananya Gupta', 'ananya@gmail.com', 'Chandigarh', 'Punjab', 'Premium'),
('Karan Verma', 'karan@gmail.com', 'Jaipur', 'Rajasthan', 'Regular'),
('Simran Kaur', 'simran@gmail.com', 'Amritsar', 'Punjab', 'Premium'),
('Aditya Kapoor', 'aditya@gmail.com', 'Pune', 'Maharashtra', 'Regular'),
('Mehak Arora', 'mehak@gmail.com', 'Ludhiana', 'Punjab', 'Regular'),
('Rahul Malhotra', 'rahul@gmail.com', 'Noida', 'Uttar Pradesh', 'Premium'),
('Isha Jain', 'isha@gmail.com', 'Hyderabad', 'Telangana', 'Regular');

-- ============================================================
-- 3. PRODUCTS DATA
-- ============================================================

INSERT INTO products
(product_name, category, sub_category, price)
VALUES
('Laptop Pro 14', 'Electronics', 'Laptops', 74999.00),
('Wireless Mouse', 'Electronics', 'Accessories', 1299.00),
('Mechanical Keyboard', 'Electronics', 'Accessories', 3499.00),
('Smartphone X', 'Electronics', 'Mobiles', 42999.00),
('Bluetooth Headphones', 'Electronics', 'Audio', 2999.00),
('Running Shoes', 'Fashion', 'Footwear', 2499.00),
('Denim Jacket', 'Fashion', 'Clothing', 1999.00),
('Cotton T-Shirt', 'Fashion', 'Clothing', 799.00),
('Office Chair', 'Furniture', 'Chairs', 8999.00),
('Study Table', 'Furniture', 'Tables', 6999.00),
('Coffee Maker', 'Home Appliances', 'Kitchen', 4499.00),
('Air Fryer', 'Home Appliances', 'Kitchen', 5999.00),
('Backpack', 'Accessories', 'Bags', 1499.00),
('Smart Watch', 'Electronics', 'Wearables', 5999.00),
('Water Bottle', 'Accessories', 'Lifestyle', 699.00);

-- ============================================================
-- 4. ORDERS DATA
-- ============================================================

INSERT INTO orders
(customer_id, order_date, region)
VALUES
(1, '2026-01-05', 'North'),
(2, '2026-01-08', 'West'),
(3, '2026-01-12', 'South'),
(4, '2026-01-15', 'North'),
(5, '2026-01-20', 'West'),
(6, '2026-01-25', 'North'),
(7, '2026-02-02', 'West'),
(8, '2026-02-08', 'North'),
(9, '2026-02-14', 'North'),
(10, '2026-02-18', 'South'),
(1, '2026-02-22', 'North'),
(2, '2026-03-03', 'West'),
(3, '2026-03-10', 'South'),
(4, '2026-03-15', 'North'),
(5, '2026-03-20', 'West'),
(6, '2026-03-25', 'North'),
(7, '2026-04-01', 'West'),
(8, '2026-04-07', 'North'),
(9, '2026-04-12', 'North'),
(10, '2026-04-18', 'South');

-- ============================================================
-- 5. ORDER DETAILS DATA
-- ============================================================

INSERT INTO order_details
(order_id, product_id, quantity, discount, sales, profit)
VALUES
(1, 1, 1, 5.00, 71249.05, 9500.00),
(1, 2, 2, 10.00, 2338.20, 420.00),
(2, 4, 1, 8.00, 39559.08, 6200.00),
(2, 5, 2, 5.00, 5688.10, 1100.00),
(3, 6, 1, 10.00, 2249.10, 500.00),
(3, 8, 3, 5.00, 2277.15, 600.00),
(4, 3, 1, 5.00, 3324.05, 700.00),
(4, 9, 1, 10.00, 8099.10, 1500.00),
(5, 7, 2, 15.00, 3398.30, 700.00),
(5, 13, 1, 5.00, 1424.05, 300.00),
(6, 14, 1, 8.00, 5519.08, 1200.00),
(6, 10, 1, 5.00, 6649.05, 1300.00),
(7, 11, 2, 10.00, 8098.20, 1500.00),
(7, 12, 1, 5.00, 5699.05, 1100.00),
(8, 2, 3, 10.00, 3507.30, 650.00),
(8, 8, 2, 5.00, 1518.10, 400.00),
(9, 1, 1, 7.00, 69749.07, 9200.00),
(9, 15, 2, 10.00, 1258.20, 250.00),
(10, 5, 1, 5.00, 2849.05, 550.00),
(10, 6, 2, 8.00, 4598.16, 950.00),
(11, 4, 1, 5.00, 40849.05, 6500.00),
(11, 14, 2, 10.00, 10798.20, 2200.00),
(12, 3, 2, 5.00, 6648.10, 1400.00),
(12, 13, 1, 8.00, 1379.08, 300.00),
(13, 7, 1, 10.00, 1799.10, 350.00),
(13, 11, 1, 5.00, 4274.05, 850.00),
(14, 9, 2, 10.00, 16198.20, 3000.00),
(14, 12, 1, 5.00, 5699.05, 1100.00),
(15, 10, 1, 8.00, 6439.08, 1250.00),
(15, 15, 3, 10.00, 1887.30, 400.00);

-- ============================================================
-- 6. BASIC BUSINESS METRICS
-- ============================================================

-- 1. Total Revenue
SELECT SUM(sales) AS total_revenue
FROM order_details;

-- 2. Total Profit
SELECT SUM(profit) AS total_profit
FROM order_details;

-- 3. Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM order_details;

-- 4. Total Customers
SELECT COUNT(*) AS total_customers
FROM customers;

-- ============================================================
-- 7. SALES ANALYSIS
-- ============================================================

-- 5. Category-wise Sales
SELECT
    p.category,
    SUM(od.sales) AS total_sales
FROM order_details od
JOIN products p
    ON od.product_id = p.product_id
GROUP BY p.category
ORDER BY total_sales DESC;

-- 6. Category-wise Profit
SELECT
    p.category,
    SUM(od.profit) AS total_profit
FROM order_details od
JOIN products p
    ON od.product_id = p.product_id
GROUP BY p.category
ORDER BY total_profit DESC;

-- 7. Top 5 Products by Sales
SELECT
    p.product_name,
    SUM(od.sales) AS total_sales
FROM order_details od
JOIN products p
    ON od.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC
LIMIT 5;

-- 8. Customer-wise Revenue
SELECT
    c.customer_name,
    SUM(od.sales) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- 9. Monthly Sales
SELECT
    MONTHNAME(o.order_date) AS month,
    SUM(od.sales) AS total_sales
FROM orders o
JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY MONTH(o.order_date), MONTHNAME(o.order_date)
ORDER BY MONTH(o.order_date);

-- 10. State-wise Revenue
SELECT
    c.state,
    SUM(od.sales) AS total_revenue
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY c.state
ORDER BY total_revenue DESC;

-- ============================================================
-- 8. ADVANCED SQL ANALYSIS
-- ============================================================

-- 11. Customers Spending More Than 10,000
SELECT
    c.customer_name,
    SUM(od.sales) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY c.customer_name
HAVING SUM(od.sales) > 10000
ORDER BY total_spent DESC;

-- 12. Customers Spending Above Average
SELECT
    c.customer_name,
    SUM(od.sales) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY c.customer_id, c.customer_name
HAVING SUM(od.sales) > (
    SELECT AVG(customer_total)
    FROM (
        SELECT
            o.customer_id,
            SUM(od.sales) AS customer_total
        FROM orders o
        JOIN order_details od
            ON o.order_id = od.order_id
        GROUP BY o.customer_id
    ) AS customer_spending
)
ORDER BY total_spent DESC;

-- 13. Customer Sales Using CTE
WITH customer_sales AS (
    SELECT
        c.customer_id,
        c.customer_name,
        SUM(od.sales) AS total_spent
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN order_details od
        ON o.order_id = od.order_id
    GROUP BY c.customer_id, c.customer_name
)
SELECT
    customer_name,
    total_spent
FROM customer_sales
ORDER BY total_spent DESC;

-- 14. Customer Spending Segmentation Using CASE
SELECT
    c.customer_name,
    SUM(od.sales) AS total_spent,
    CASE
        WHEN SUM(od.sales) >= 50000 THEN 'High Value'
        WHEN SUM(od.sales) >= 20000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS spending_category
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_spent DESC;

-- 15. Product Sales Ranking
SELECT
    p.product_name,
    SUM(od.sales) AS total_sales,
    RANK() OVER (
        ORDER BY SUM(od.sales) DESC
    ) AS sales_rank
FROM products p
JOIN order_details od
    ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name
ORDER BY sales_rank;

-- 16. Monthly Running Sales Total
SELECT
    MONTHNAME(o.order_date) AS month,
    SUM(od.sales) AS monthly_sales,
    SUM(SUM(od.sales)) OVER (
        ORDER BY MONTH(o.order_date)
    ) AS running_sales
FROM orders o
JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY MONTH(o.order_date), MONTHNAME(o.order_date)
ORDER BY MONTH(o.order_date);

-- 17. New vs Returning Customers
SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    CASE
        WHEN COUNT(o.order_id) = 1 THEN 'New Customer'
        ELSE 'Returning Customer'
    END AS customer_type
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY total_orders DESC;

-- 18. Customer Lifetime Value
SELECT
    c.customer_name,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(od.sales) AS lifetime_value
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY c.customer_id, c.customer_name
ORDER BY lifetime_value DESC;

-- 19. Product Profitability
SELECT
    p.product_name,
    p.category,
    SUM(od.sales) AS total_sales,
    SUM(od.profit) AS total_profit
FROM products p
JOIN order_details od
    ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name, p.category
ORDER BY total_profit DESC;

-- 20. Discount vs Profit
SELECT
    CASE
        WHEN discount < 5 THEN 'Low Discount'
        WHEN discount BETWEEN 5 AND 10 THEN 'Medium Discount'
        ELSE 'High Discount'
    END AS discount_category,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    AVG(profit) AS average_profit
FROM order_details
GROUP BY discount_category
ORDER BY total_profit DESC;

-- 21. Region-wise Performance
SELECT
    o.region,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(od.sales) AS total_sales,
    SUM(od.profit) AS total_profit
FROM orders o
JOIN order_details od
    ON o.order_id = od.order_id
GROUP BY o.region
ORDER BY total_sales DESC;

-- 22. Category Profit Margin
SELECT
    p.category,
    SUM(od.sales) AS total_sales,
    SUM(od.profit) AS total_profit,
    ROUND(
        (SUM(od.profit) / SUM(od.sales)) * 100,
        2
    ) AS profit_margin_percentage
FROM products p
JOIN order_details od
    ON p.product_id = od.product_id
GROUP BY p.category
ORDER BY profit_margin_percentage DESC;

-- ============================================================
-- END OF PROJECT SQL
-- ============================================================
