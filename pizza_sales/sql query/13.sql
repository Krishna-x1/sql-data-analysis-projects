use pizzas;
-- Analyze the cumulative revenue generated over time.

SELECT
    DATE(orders.order_date) AS order_date,
    ROUND(SUM(order_details.quantity * pizza.price)) AS daily_revenue,
    ROUND(SUM(SUM(order_details.quantity * pizza.price)) 
        OVER (ORDER BY DATE(orders.order_date))) AS cumulative_revenue
FROM order_details
JOIN orders
    ON order_details.order_id = orders.order_id
JOIN pizza
    ON order_details.pizza_id = pizza.pizza_id
GROUP BY order_date
ORDER BY order_date asc;




