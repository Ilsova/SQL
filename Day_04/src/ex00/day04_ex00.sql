create view v_person_female as
select * from person
where gender = 'female'

create view v_person_male as
select * from person
where gender = 'male'