-- Determine the top 3 most ordered pizza types based on revenue.

select pizza_types.name,  -- pizzaNames

sum(orders_details.quantity * pizzas.price) as revenue -- sum of quantity * price = revenue

from pizza_types join pizzas -- joins pizza_types and pizzas

on pizzas.pizza_type_id = pizza_types.pizza_type_id -- on the basis of pizza_type_id

join orders_details

on orders_details.pizza_id = pizzas.pizza_id

group by pizza_types.name -- order the output in pizza_types.name

order by revenue desc limit 3;