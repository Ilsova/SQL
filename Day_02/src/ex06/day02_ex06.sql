select pizza_name, pz.name as pizzeria_name from menu
join person_order po on po.menu_id = menu.id
join person p on p.id = po.person_id 
join pizzeria pz on pz.id = menu.pizzeria_id
where p.name = 'Denis' or p.name = 'Anna'
order by 1, 2