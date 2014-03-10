create view employee_names as
select fk_department, last_name, first_name
from employee
where fk_department = 'INT'
with read only;
update employee_names set first_name = 'IKE'
where first_name = 'DWIGHT';
