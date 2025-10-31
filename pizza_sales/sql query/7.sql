use pizzas;
-- Join the necessary tables to find the total quantity of each pizza category ordered.

select category, sum(quantity) as quantity_ordered
from pizza_types join pizza
on pizza_types.pizza_type_id = pizza.pizza_type_id
join order_details
on order_details.pizza_id = pizza.pizza_id 
group by category order by quantity_ordered desc;


