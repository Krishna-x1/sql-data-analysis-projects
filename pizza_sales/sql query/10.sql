use pizzas;
-- Group the orders by date and calculate the average number of pizzas ordered per day.

select round(avg(daily.Total_orders)) as avg_pizza_per_day
from(
select order_date, sum(quantity) as Total_orders 
from order_details join orders
on order_details.order_id = orders.order_id
group by order_date) as daily;

