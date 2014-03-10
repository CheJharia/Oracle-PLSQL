select last_name, first_name,
       count(tool_cost) count, sum(tool_cost) sum, 
       avg(nvl(tool_cost,0)) avg
from employee, emp_tools
where payroll_number = fk_payroll_number(+)
group by last_name, first_name;
