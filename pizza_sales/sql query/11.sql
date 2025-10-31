use pizzas;
-- Determine the top 3 most ordered pizza types based on revenue.

select pizza_types.name, round(sum((order_details.quantity)*(pizza.price))) as Total_revenue
from pizza_types join pizza
on pizza_types.pizza_type_id = pizza.pizza_type_id
join order_details 
on order_details.pizza_id = pizza.pizza_id
group by pizza_types.name 
order by Total_revenue desc limit 3;

