use pizzas;
-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.

SELECT category, name, revenue,
    RANK() OVER (PARTITION BY category ORDER BY revenue DESC) AS rn
FROM (
    SELECT category, name,
	SUM(order_details.quantity * pizza.price) AS revenue
    FROM pizza_types JOIN pizza
	ON pizza_types.pizza_type_id = pizza.pizza_type_id
    JOIN order_details
	ON order_details.pizza_id = pizza.pizza_id
    GROUP BY category, name ) AS a
ORDER BY category, rn;

