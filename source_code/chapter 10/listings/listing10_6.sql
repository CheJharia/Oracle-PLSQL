select last_name, wages, sum(cost) glasses, sum(tool_cost) tools
from employee, glasses, emp_tools
where payroll_number = glasses.fk_payroll_number(+)
  and payroll_number = emp_tools.fk_payroll_number(+)
group by last_name, wages;
