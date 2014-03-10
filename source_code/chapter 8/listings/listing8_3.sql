select last_name, first_name
from employee, glasses
where payroll_number = fk_payroll_number
  and fk_department = 'POL'
minus
select last_name, first_name
from employee, emp_tools
where payroll_number = fk_payroll_number
  and fk_department = 'POL';