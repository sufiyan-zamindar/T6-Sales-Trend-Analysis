USE courses;
SELECT * FROM courses.salesdata;

SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(Revenue) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    online_sales
WHERE 
    order_date BETWEEN '01-01-2015' AND '31-12-2016'
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    YEAR(order_date), MONTH(order_date);




