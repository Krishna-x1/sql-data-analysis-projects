use pizzas;
-- Calculate the total revenue generated from pizza sales.

select round(sum(order_details.quantity * pizza.price),2) as Total_Revenue
from  order_details join pizza
on pizza.pizza_id = order_details.pizza_id;



