select m.pizza_name, m.price, pz.name as pizzeria_name from menu m
join pizzeria pz on pz.id = m.pizzeria_id
except 
select m.pizza_name, m.price, pz.name as pizzeria_name from menu m
join person_order po on po.menu_id = m.id 
join pizzeria pz on pz.id = m.pizzeria_id
order by 1, 2