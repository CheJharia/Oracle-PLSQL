select department_name, last_name, first_name
from department, employee
where department = fk_department
order by department_name;
