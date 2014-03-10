select gender, department, sum(wages), 
       grouping(gender) as gdr, grouping(department) as dpt
from department, employee
where department = fk_department
group by rollup(gender, department)
order by 1,2;
