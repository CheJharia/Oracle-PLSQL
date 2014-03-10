select fk_department, last_name, first_name, wages
from employee
where last_name = 'JOHNSON'
  and wages is null;
