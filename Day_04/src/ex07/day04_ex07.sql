insert into person_visits 
values((select max(id)+1 from person_visits), (select id from person where name = 'Dmitriy'),
	   (select pz.id from pizzeria pz join menu m on pz.id = m.pizzeria_id
	   where price < 800 and m.pizza_name <> 'Papa Johns' order by 1 limit 1), '2022-01-08');
	   
refresh materialized view mv_dmitriy_visits_and_eats;
