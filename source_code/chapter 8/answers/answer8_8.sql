accept department_code prompt 'Enter Department Code: ';
select department_name, tool_name, tool_cost
from department, employee, emp_tools
where department = fk_department
  and payroll_number = fk_payroll_number
  and department = upper('&department_code')
union
select department_name, optician, cost
from department, employee, glasses
where department = fk_department
  and payroll_number = fk_payroll_number
  and department = upper('&department_code');

