select last_name||', '||first_name, sum(tool_cost) tool_cost,
       NTILE(4) over (order by sum(tool_cost) desc nulls last) quartile
from employee, emp_tools
where payroll_number = fk_payroll_number(+)
group by last_name||', '||first_name;
