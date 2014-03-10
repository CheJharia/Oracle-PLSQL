select last_name, first_name, wages
from employee
where wages > all (select nvl(wages,0)
                   from employee
                   where fk_department = 'INT');
