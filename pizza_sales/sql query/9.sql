use pizzas;
-- Join relevant tables to find the category-wise distribution of pizzas.


select category , count(name) as Number_of_Pizzas 
from pizza_types
group by category ;

