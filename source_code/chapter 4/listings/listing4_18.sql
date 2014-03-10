select fk_department, last_name, first_name
from employee
where last_name like '%C%'
  and (fk_department = 'INT'
   or fk_department = 'WEL');
