select CONCAT (name, ' (age:', CAST(age as char),',gender:''', gender,''',address:''', address,''')') as person_information from person
order by person_information asc