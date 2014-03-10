select gender, department, sum(wages)
from department, employee
where department = fk_department
group by rollup(gender, department)
order by 1,2;
