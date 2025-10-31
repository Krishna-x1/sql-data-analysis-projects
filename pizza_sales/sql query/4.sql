use pizzas;
-- Identify the highest-priced pizza.


SELECT pizza_types.name, pizza.price
FROM pizza_types JOIN pizza
ON pizza_types.pizza_type_id = pizza.pizza_type_id
ORDER BY pizza.price desc limit 1;



