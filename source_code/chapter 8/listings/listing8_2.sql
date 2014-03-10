select last_name, first_name
from employee, emp_tools
where payroll_number = fk_payroll_number
  and fk_department = 'POL'
union all
select last_name, first_name
from employee, glasses
where payroll_number = fk_payroll_number
  and fk_department = 'POL'
order by 1,2;