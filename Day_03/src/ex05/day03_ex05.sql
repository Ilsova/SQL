select pz.name as pizzeria_name from pizzeria pz
join person_visits pv on pv.pizzeria_id = pz.id
join person p on p.id = pv.person_id
join person_order po on po.person_id = p.id
join menu m on m.id = po.menu_id
where p.name = 'Andrey' 
except
select pz.name from person_order po
join person p on p.id = po.person_id 
join person_visits pv on pv.person_id = po.id
join menu m on m.id = po.menu_id
join pizzeria pz on pz.id = m.pizzeria_id
where p.name = 'Andrey'
order by 1
