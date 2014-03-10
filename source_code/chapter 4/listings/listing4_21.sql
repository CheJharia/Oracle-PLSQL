select last_name, first_name
from employee
where fk_department = 'POL'
order by last_name desc;

