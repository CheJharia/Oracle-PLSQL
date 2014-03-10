select last_name, first_name, wages, emp_wage_rank
from (select last_name, first_name, wages,
             rank() over(order by nvl(wages,0) desc) as emp_wage_rank
      from employee)
      where emp_wage_rank <= 3;
