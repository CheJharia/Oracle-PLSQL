select department, sum(nvl(wages, 90000)),
       dense_rank() over (order by sum(nvl(wages,90000)) desc) as rank_dense
from department, employee
where department = fk_department(+)
group by department;
