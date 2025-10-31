use pizza;
-- Calculate the percentage contribution of each pizza type to total revenue.

select pizza_types.category,
round((sum((order_details.quantity)*(pizza.price))/(select sum(order_details.quantity * pizza.price)
from  order_details join pizza
on pizza.pizza_id = order_details.pizza_id))*100,2) as Total_revenue_percent
from pizza_types join pizza
on pizza_types.pizza_type_id = pizza.pizza_type_id
join order_details 
on order_details.pizza_id = pizza.pizza_id
group by pizza_types.category
order by Total_revenue_percent desc;






