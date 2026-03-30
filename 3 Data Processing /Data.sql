-- EDA
SELECT *
FROM `bright_case_study`.`bright_coffee`.`bright_coffee_shop_analysis_case_study_1` 
LIMIT 100;
----------------------------------------------------------------------------------------------------------------------------------------------------

-- type of product
SELECT DISTINCT product_category,
                product_type,
                unit_price
FROM `bright_case_study`.`bright_coffee`.`bright_coffee_shop_analysis_case_study_1`;

----------------------------------------------------------------------------------------------------------------------------------------------------
-- Total number of transaction per stores
SELECT DISTINCT store_location,
                COUNT(transaction_id) AS total_transaction
FROM `bright_case_study`.`bright_coffee`.`bright_coffee_shop_analysis_case_study_1`
GROUP BY store_location
ORDER BY total_transaction ASC;

----------------------------------------------------------------------------------------------------------------------------------------------------
-- Check minimum date and maximum date
SELECT MIN(transaction_date) AS min_date,
       MAX(transaction_date) AS max_date
FROM `bright_case_study`.`bright_coffee`.`bright_coffee_shop_analysis_case_study_1`;


----------------------------------------------------------------------------------------------------------------------------------------------------
--   checking revenue per store location by product category
SELECT store_location,
       product_category,
       SUM(unit_price * transaction_qty) AS total_revenue
FROM `bright_case_study`.`bright_coffee`.`bright_coffee_shop_analysis_case_study_1`
GROUP BY ALL;


--------------------------------------------------------------------------------------------------------------------------------------------------
-- Total revenue per store by product category and product type
SELECT store_location,
       product_category,
       product_type,
       SUM(unit_price * transaction_qty) AS total_revenue
       FROM `bright_case_study`.`bright_coffee`.`bright_coffee_shop_analysis_case_study_1`
       GROUP BY ALL
       ORDER BY total_revenue DESC;


--------------------------------------------------------------------------------------------------------------------------------------------------
-- what is the MIN price and MAX price
SELECT MAX(unit_price) AS max_price,
       MIN(unit_price) AS min_price
FROM `bright_case_study`.`bright_coffee`.`bright_coffee_shop_analysis_case_study_1`;


--------------------------------------------------------------------------------------------------------------------------------------------------
SELECT product_category,
       product_type,
       product_detail,
CASE 
    WHEN unit_price > 25 THEN 'expensive'
    WHEN unit_price BETWEEN 10 AND 25 THEN 'reasonable'
    WHEN unit_price < 10 THEN 'cheap'
END AS price_category
FROM `bright_case_study`.`bright_coffee`.`bright_coffee_shop_analysis_case_study_1`
GROUP BY ALL
ORDER BY price_category DESC;

SELECT MIN(transaction_date) AS min_date,
       MAX(transaction_date) AS max_date
FROM `bright_case_study`.`bright_coffee`.`bright_coffee_shop_analysis_case_study_1`;

SELECT store_location,
       SUM(unit_price * transaction_qty) AS total_revenue,
CASE 
    WHEN transaction_date BETWEEN '2023-01-01' AND '2023-03-31' THEN 'Q1'
    WHEN transaction_date BETWEEN '2023-04-01' AND '2023-06-30' THEN 'Q2'
END AS quarterly
FROM `bright_case_study`.`bright_coffee`.`bright_coffee_shop_analysis_case_study_1`
GROUP BY ALL;

SELECT store_location,
       SUM(transaction_qty) AS total_transaction_quantity
FROM `bright_case_study`.`bright_coffee`.`bright_coffee_shop_analysis_case_study_1`
GROUP BY store_location;


---------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT store_location,
       Monthname(transaction_date) AS month_name,
       SUM(transaction_qty*unit_price) AS revenue
FROM `bright_case_study`.`bright_coffee`.`bright_coffee_shop_analysis_case_study_1`
GROUP BY ALL;

SELECT product_category,
       product_type,
       unit_price,
       transaction_qty,
       unit_price*transaction_qty AS revenue
FROM `bright_case_study`.`bright_coffee`.`bright_coffee_shop_analysis_case_study_1`;


----------------------------------------------------------------------------------------------------------------------------------------------------------------
SELECT MIN(transaction_time) AS min_time,
       MAX(transaction_time) AS max_time
FROM `bright_case_study`.`bright_coffee`.`bright_coffee_shop_analysis_case_study_1`;SELECT transaction_id,
       transaction_date,
       transaction_time,
       transaction_qty,
       store_id,
       store_location,
       product_id,
       unit_price,
       product_category,
       product_type,
       product_detail,
       Dayname(transaction_date) AS day_name,
       Monthname(transaction_date) AS month_name,
       Dayofmonth(transaction_date) AS day_of_month,
CASE 
       WHEN Dayname(transaction_date) IN('Sun', 'Sat') THEN 'Weekend'
       ELSE 'Weekday'
    END AS day_classification,
CASE    
       WHEN date_format(transaction_time, 'HH:mm:ss') BETWEEN '05:00:00' AND '08:59:59' THEN '01.Rush Hour'
       WHEN date_format(transaction_time, 'HH:mm:ss') BETWEEN '09:00:00' AND '11:59:59' THEN '02 Mid Morning'
       WHEN date_format(transaction_time, 'HH:mm:ss') BETWEEN '12:00:00' AND '15:59:59' THEN '03.Afternoon'
       WHEN date_format(transaction_time, 'HH:mm:ss') BETWEEN '16:00:00' AND '18:00:00' THEN '04.Rush Hour'
       ELSE '05.Night'
    END AS time_classification,
CASE
       WHEN transaction_qty*unit_price <=50 THEN '01.Low Spender'
       WHEN transaction_qty*unit_price BETWEEN 51 AND 200 THEN '02.Medium Spender'
       WHEN transaction_qty*unit_price BETWEEN 201 AND 300 THEN '03.High Spender'
       ELSE '04.Big Spender'
    END AS spend_bucket,
       transaction_qty*unit_price AS Revenue
FROM `bright_case_study`.`bright_coffee`.`bright_coffee_shop_analysis_case_study_1`;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

