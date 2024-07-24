select pz.name from pizzeria pz
join person_visits pv on pv.pizzeria_id = pz.id
join person p on p.id = pv.person_id
join menu m on m.pizzeria_id = pz.id
where p.name = 'Dmitriy' and pv.visit_date = '2022-01-08' and price < 800
