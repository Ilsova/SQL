select p.name from person p
join person_order po on po.person_id = p.id
join menu m on m.id = po.menu_id
where gender = 'male' and (address = 'Moscow' or address = 'Samara') 
and m.pizza_name in ('pepperoni pizza','mushroom pizza')
order by 1 desc
