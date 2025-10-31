use pizzas;
-- Determine the distribution of orders by hour of the day.

select hour(order_time) as order_hour ,count(order_id)  as Total_orders
from orders
group by order_hour
order by order_hour;

