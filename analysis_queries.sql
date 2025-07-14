-- Online orders by brand & product line
SELECT COUNT(online_order) AS number_of_online_orders, brand, product_line
FROM transactions
WHERE online_order = 'TRUE'
GROUP BY brand, product_line
ORDER BY brand, product_line;

-- Top 10 customers by number of transactions
SELECT COUNT(ts.transaction_id) AS no_of_transactions, cd.customer_id
FROM transactions ts
LEFT JOIN cust_demographic cd ON ts.customer_id = cd.customer_id
GROUP BY cd.customer_id
ORDER BY no_of_transactions DESC
LIMIT 10;

-- Customer segmentation by wealth
SELECT COUNT(DISTINCT cd.customer_id) AS count_of_customers,
       COUNT(ts.transaction_id) AS count_of_transactions,
       cd.wealth_segment
FROM cust_demographic cd
LEFT JOIN transactions ts ON ts.customer_id = cd.customer_id
GROUP BY wealth_segment;

-- Age-wise distribution of transactions
SELECT t.brand,
       CASE
         WHEN age_column < 18 THEN 'Under 18'
         WHEN age_column BETWEEN 18 AND 29 THEN '18–29'
         WHEN age_column BETWEEN 30 AND 39 THEN '30–39'
         WHEN age_column BETWEEN 40 AND 49 THEN '40–49'
         WHEN age_column BETWEEN 50 AND 59 THEN '50–59'
         WHEN age_column >= 60 THEN '60 and over'
         ELSE 'Unknown'
       END AS age_group,
       COUNT(*) AS total_transactions
FROM transactions t
JOIN cust_demographic cd ON cd.customer_id = t.customer_id
GROUP BY t.brand, age_group
ORDER BY t.brand, age_group;
