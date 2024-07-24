(select pz.name from pizzeria pz
join menu m on m.pizzeria_id = pz.id
join person_order po on po.menu_id = m.id
join person p on p.id = po.person_id
where p.gender = 'female'
except
select pz.name from pizzeria pz
join menu m on m.pizzeria_id = pz.id
join person_order po on po.menu_id = m.id
join person p on p.id = po.person_id
where p.gender = 'male')
union
(select pz.name from pizzeria pz
join menu m on m.pizzeria_id = pz.id
join person_order po on po.menu_id = m.id
join person p on p.id = po.person_id
where p.gender = 'male'
except
select pz.name from pizzeria pz
join menu m on m.pizzeria_id = pz.id
join person_order po on po.menu_id = m.id
join person p on p.id = po.person_id
where p.gender = 'female')
order by 1

