select p.name, m.pizza_name, m.price, round((m.price - (m.price * pd.discount/100))) as discount_price,
pz.name as pizzeria_name from menu m
join pizzeria pz on pz.id = m.pizzeria_id
join person_discounts pd on pd.pizzeria_id = pz.id
join person p on p.id = pd.person_id
order by p.name, m.pizza_name
