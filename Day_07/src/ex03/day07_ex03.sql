select tmp1.name, coalesce(tmp1.total_count,0) + coalesce(tmp2.total_count,0) as total_count from
(select pz.name, count(pv.visit_date) as total_count from pizzeria pz
join person_visits pv on pv.pizzeria_id = pz.id
group by pz.name) as tmp1 
full join
(select pz.name, count(po.order_date) as total_count from person_order po
join menu m on m.id = po.menu_id
join pizzeria pz on pz.id = m.pizzeria_id
group by pz.name) as tmp2 on tmp1.name = tmp2.name
order by 2 desc, 1