select m.pizza_name, m.price, pz.name as pizzeria_name, pv.visit_date from pizzeria pz
left join menu m on m.pizzeria_id = pz.id
left join person_visits pv on pv.pizzeria_id = pz.id
left join person p on p.id = pv.person_id 
where p.name = 'Kate' and price between 800 and 1000
order by pizza_name, price, pizzeria_name
