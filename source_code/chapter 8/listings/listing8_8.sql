select last_name, first_name, wages
from employee
where wages > all (select wages
                   from employee
                   where fk_department = 'INT');
