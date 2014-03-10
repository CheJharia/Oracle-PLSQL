select fk_department, last_name, first_name, tool_name
from employee, emp_tools
where payroll_number = fk_payroll_number
  and fk_department = &&department_code
union 
select fk_department, last_name, first_name, optician
from employee, glasses
where payroll_number = fk_payroll_number
  and fk_department = &department_code;