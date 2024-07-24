select m.pizza_name, pz.name as pizzeria_name_1, pz2.name as pizzeria_name_2, m.price from menu m
join menu m2 on m2.pizza_name = m.pizza_name and m.price = m2.price and m.pizzeria_id > m2.pizzeria_id
join pizzeria pz on pz.id = m.pizzeria_id
join pizzeria pz2 on pz2.id = m2.pizzeria_id
order by 1
