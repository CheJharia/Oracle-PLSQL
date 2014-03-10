select * 
from (select department, last_name||', '||first_name, 
             sum(cost) eyeglass_cost,
             rank() over (partition by department
             order by sum(cost) asc nulls first) Lowest_eyeglass_cost_rank
      from department, employee, glasses
      where department = fk_department
        and payroll_number = fk_payroll_number(+)
      group by department, last_name, first_name)
where lowest_eyeglass_cost_rank <= 2;