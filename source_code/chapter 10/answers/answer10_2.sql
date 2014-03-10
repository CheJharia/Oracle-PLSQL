create or replace view employee_wages as
select fk_department, last_name, first_name, city, wages
from employee
where fk_department = 'WEL'
with check option;

update employee_wages set fk_department = 'INT'
where city = 'PLAINS';