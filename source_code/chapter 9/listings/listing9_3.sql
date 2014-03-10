select gender, department, sum(wages)
from department, employee
where department = fk_department
group by cube(gender, department)
order by 1,2;
