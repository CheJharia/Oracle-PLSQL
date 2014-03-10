Select last_name, first_name 
from employee
where first_name = 'JOHN'
union
select last_name, first_name
from employee
where first_name = 'HAROLD'
union
select last_name, first_name
from employee
where first_name = 'WILLIAM';
