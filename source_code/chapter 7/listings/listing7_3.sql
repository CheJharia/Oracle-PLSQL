select last_name, wages, nvl2(wages, wages*1.04, 0)
from employee
where last_name like 'R%';