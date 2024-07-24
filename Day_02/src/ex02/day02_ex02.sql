select coalesce(p.name, '-') as person_name, visit_date, coalesce(pz.name, '-') as pizzeria_name
from (select * from person_visits
where visit_date between '2022-01-01' and '2022-01-03') pv
full join pizzeria pz ON pz.id = pv.pizzeria_id
full join person p on p.id = pv.person_id
order by person_name, visit_date, pizzeria_name;
