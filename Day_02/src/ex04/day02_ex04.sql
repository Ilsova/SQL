select m.pizza_name, pz.name as pizzeria_name, m.price from menu m
left join pizzeria pz on pz.id = m.pizzeria_id
where pizza_name = 'mushroom pizza' or pizza_name = 'pepperoni pizza'
order by pizza_name, name