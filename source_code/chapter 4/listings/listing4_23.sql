select last_name, first_name, sum(tool_cost)
from employee, emp_tools
where payroll_number = fk_payroll_number
group by last_name, first_name
order by 3 desc;
