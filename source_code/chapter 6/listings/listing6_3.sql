select last_name, length(last_name)
from employee
where fk_department = 'POL';
