select department_name, last_name, first_name, wages,
       emp_wage_rank
from (select department_name, last_name, first_name, wages,
             rank() over(partition by department_name 
             order by nvl(wages,0) desc) as emp_wage_rank
      from department, employee
      where department = fk_department)
where emp_wage_rank <= 2;
