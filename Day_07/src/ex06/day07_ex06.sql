select pz.name, count(po.order_date) as count_of_orders, round(avg(m.price),2) as average_price,
max(m.price) as max_price, min(m.price) as min_price from pizzeria pz
join menu m on m.pizzeria_id = pz.id
join person_order po on po.menu_id = m.id
group by pz.name
order by 1