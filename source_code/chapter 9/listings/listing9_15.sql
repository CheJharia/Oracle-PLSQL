select department, last_name, first_name, tool_cost,
       sum(tool_cost) 
       over (order by purchase_date rows unbounded preceding) balance
from department, employee, emp_tools
where department = fk_department
  and payroll_number = fk_payroll_number;
