      -- Trend Cart -Customer Behavior Analysis Project SQL part 
create database customer_shopping_behavior;
use customer_shopping_behavior;
select * from customer  limit 3900;
select count(*) from customer;

             -- Total Revenue
SELECT 
    ROUND(SUM(`Purchase Amount (USD)`), 2) AS total_revenue
FROM customer;

			-- Average Order Value (AOV)
SELECT 
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS avg_order_value
FROM customer;
         
             -- Total Customers
SELECT 
    COUNT(DISTINCT `Customer ID`) AS total_customers
FROM customer;
          --  Revenue Analysis (VERY IMPORTANT)
   -- Revenue by Category
SELECT 
    Category,
    ROUND(SUM(`Purchase Amount (USD)`), 2) AS revenue
FROM customer
GROUP BY Category
ORDER BY revenue DESC;

              -- Revenue by Season
SELECT 
    Season,
    ROUND(SUM(`Purchase Amount (USD)`), 2) AS revenue
FROM customer
GROUP BY Season
ORDER BY revenue DESC;


              -- Subscription Impact 
          -- Subscription vs Non-Subscription Revenue
SELECT 
    `Subscription Status`,
    ROUND(SUM(`Purchase Amount (USD)`), 2) AS revenue,
    COUNT(*) AS total_orders
FROM customer
GROUP BY `Subscription Status`;

                -- High-Value Customers (CLV Logic)
          --  Top 10 Customers by Lifetime Value
SELECT 
    `Customer ID`,
    ROUND(SUM(`Purchase Amount (USD)` * `Previous Purchases`), 2) AS customer_value
FROM customer
GROUP BY `Customer ID`
ORDER BY customer_value DESC
LIMIT 10;

                   -- Purchase Frequency Insights
          -- Average Purchase Frequency
SELECT 
    `Frequency of Purchases`,
    COUNT(*) AS customers
FROM customer
GROUP BY `Frequency of Purchases`
ORDER BY customers DESC;

                  -- Discount & Promotion Effectiveness
            --  Discount Applied vs Purchase Amount
SELECT 
    `Discount Applied`,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS avg_purchase_amount,
    COUNT(*) AS total_orders
FROM customer
GROUP BY `Discount Applied`;

              -- Promo Code Usage Impact
SELECT 
    `Promo Code Used`,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS avg_purchase_amount,
    COUNT(*) AS orders
FROM customer
GROUP BY `Promo Code Used`;

             -- Top Spending Customer per Category
SELECT *
FROM (
    SELECT 
        Category,
        `Customer ID`,
        SUM(`Purchase Amount (USD)`) AS total_spent,
        RANK() OVER (
            PARTITION BY Category 
            ORDER BY SUM(`Purchase Amount (USD)`) DESC
        ) AS rank_in_category
    FROM customer
    GROUP BY Category, `Customer ID`
) ranked
WHERE rank_in_category = 1;

               -- Customer Segmentation (SQL-Only)
          --  Behavioral Segmentation
SELECT 
    `Customer ID`,
    CASE
        WHEN `Previous Purchases` >= 10 THEN 'High-Value Loyal'
        WHEN `Discount Applied` = 'Yes' THEN 'Discount-Driven'
        ELSE 'Low Engagement'
    END AS customer_segment
FROM customer;

                     --  Operational Insights
                -- Shipping Type Performance
SELECT 
    `Shipping Type text`,
    COUNT(*) AS total_orders,
    ROUND(AVG(`Purchase Amount (USD)`), 2) AS avg_order_value
FROM customer
GROUP BY `Shipping Type text`
ORDER BY avg_order_value DESC;

				-- Payment Method Preference
SELECT 
    `Payment Method`,
    COUNT(*) AS usage_count
FROM customer
GROUP BY `Payment Method`
ORDER BY usage_count DESC;

              -- Performance & Reusability
-- Create a reusable revenue view
CREATE VIEW category_revenue AS
SELECT 
    Category,
    SUM(`Purchase Amount (USD)`) AS revenue
FROM customer
GROUP BY Category;
-- Index for faster analysis
CREATE INDEX idx_customer_id
ON customer(`Customer ID`);

    -- And add a Data Quality Check:

SELECT COUNT(*) 
FROM customer
WHERE `Purchase Amount (USD)` IS NULL;