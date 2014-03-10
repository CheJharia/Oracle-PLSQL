select rpad(last_name, 25, '*')
from employee
where fk_department = 'POL';
