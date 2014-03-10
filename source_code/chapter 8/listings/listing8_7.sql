select last_name, first_name, wages
from employee
where wages > any (select wages
                   from employee
                   where fk_department = 'INT');
