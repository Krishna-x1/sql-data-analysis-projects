use pizzas;
-- Identify the most common pizza size ordered.


select size, count(order_details_id) as Order_count
from order_details join pizza
on order_details.pizza_id = pizza.pizza_id
group by size
order by Order_count desc;

