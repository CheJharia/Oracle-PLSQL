select last_name, wages, nvl(wages,0)
from employee
where fk_department = 'INT';
