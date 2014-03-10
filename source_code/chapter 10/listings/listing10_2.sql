create view employee_names as
select fk_department, last_name, first_name
from employee
where fk_department = 'INT'
with check option;
update employee_names set fk_department = 'WEL'
where first_name = 'DWIGHT';
update employee_names set first_name = 'IKE'
where first_name = 'DWIGHT';
update employee set fk_department = 'WEL'
where first_name = 'IKE';