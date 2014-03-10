select last_name, rtrim(last_name, 'ONL')
from employee
where fk_department = 'POL';
