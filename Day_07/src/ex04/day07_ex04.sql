select p.name, count(pv.visit_date) as count_of_visits from person p
join person_visits pv on pv.person_id = p.id
group by p.name
having count(pv.visit_date) > 3
