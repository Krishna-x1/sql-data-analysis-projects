use pizzas;
-- List the top 5 most ordered pizza types along with their quantities.


select pizza_types.name, sum(order_details.quantity) as Total_Quantity
from pizza_types join pizza
on pizza_types.pizza_type_id = pizza.pizza_type_id
join order_details
on  order_details.pizza_id = pizza.pizza_id
group by pizza_types.name 
order by Total_Quantity desc limit 5;

