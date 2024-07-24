(select pz.name, count(pv.visit_date), 'visit' as action_type from pizzeria pz
join person_visits pv on pv.pizzeria_id = pz.id
group by pz.name
order by 2 desc
limit 3)
union
(select pz.name, count(po.order_date), 'order' as action_type from person_order po
join menu m on m.id = po.menu_id
join pizzeria pz on pz.id = m.pizzeria_id
group by pz.name
order by 2 desc
limit 3)
order by 3, 2 desc