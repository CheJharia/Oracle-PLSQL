Select department_name, count(last_name) 
from department, employee 
where department = fk_department(+) 
group by department_name;
