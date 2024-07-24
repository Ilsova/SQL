create materialized view mv_dmitriy_visits_and_eats as
(select pi.name as pizzeria_name from pizzeria pi
join menu m on m.pizzeria_id = pi.id and m.price < 800
join person_visits pv on pv.pizzeria_id = pi.id and pv.visit_date = '2022-01-08'
join person p on p.id = pv.person_id and p.name = 'Dmitriy')