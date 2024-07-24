select p.name as person_name, temp.pizza_name as pizza_name, temp.name as pizzeria_name
from person_order po
join person p on p.id = po.person_id
join 
(select menu.id, menu.pizza_name, zz.name from menu
 join pizzeria zz on zz.id = menu.pizzeria_id) temp on temp.id = po.menu_id
order by person_name, pizza_name, pizzeria_name