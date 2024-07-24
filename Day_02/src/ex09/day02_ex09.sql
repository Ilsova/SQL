select p.name from person p
join person_order po on po.person_id = p.id
join menu m on m.id = po.menu_id and (m.pizza_name = 'pepperoni pizza' or m.pizza_name = 'cheese pizza')
where gender = 'female'
group by p.name
having count(distinct m.pizza_name) = 2
order by p.name
