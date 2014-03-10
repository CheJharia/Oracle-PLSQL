select 'Employee Has Purchased Tools', last_name, first_name
from employee
where exists (select * from emp_tools
              where fk_payroll_number = employee.payroll_number)
union all
select 'Employee Has Not Purchased Tools', last_name, first_name
from employee
where not exists (select * from emp_tools
                  where fk_payroll_number =
                  employee.payroll_number);
