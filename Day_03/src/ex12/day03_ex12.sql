insert into person_order
select 
	temp+(select max(id) from person_order) as id,
	id as person_id,
	(select id from menu where pizza_name = 'greek pizza') as menu_id,
	'2022-02-25' as order_date
from person 
join
generate_series(1,(select count(*) from person)) as temp on temp = person.id