select gender, current_position, 
       sum(tool_cost) "Tool Cost"
from employee, emp_tools
where payroll_number = fk_payroll_number(+)
group by rollup (gender, current_position)
order by 1,2;