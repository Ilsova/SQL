(select pz.name from pizzeria pz
join person_visits pv on pv.pizzeria_id = pz.id
join person p on p.id = pv.person_id
where p.gender = 'female'
except all
select pz.name from pizzeria pz
join person_visits pv on pv.pizzeria_id = pz.id
join person p on p.id = pv.person_id
where p.gender = 'male')
union all
(select pz.name from pizzeria pz
join person_visits pv on pv.pizzeria_id = pz.id
join person p on p.id = pv.person_id
where p.gender = 'male'
except all
select pz.name from pizzeria pz
join person_visits pv on pv.pizzeria_id = pz.id
join person p on p.id = pv.person_id
where p.gender = 'female')
order by 1
