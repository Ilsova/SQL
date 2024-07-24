select pz.name as pizzeria_name, rating
from pizzeria pz
left join person_visits on person_visits.pizzeria_id = pz.id 
where person_visits.id is null
