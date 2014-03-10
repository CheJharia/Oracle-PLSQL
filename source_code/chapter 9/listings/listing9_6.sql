select department, sum(nvl(wages,90000)),
       rank() over (order by sum(nvl(wages,90000)) desc) 
       as rank_all
from department, employee
where department = fk_department(+)
group by department;
