select department_name
from department
where not exists (select * from employee
                  where fk_department = department.department);