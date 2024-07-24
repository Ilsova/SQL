select order_date, CONCAT (per.name, ' (age:', per.age, ')') as person_information from person_order
natural join 
(select name, age, id as person_id from person) per
order by order_date, person_information
