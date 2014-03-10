Select 'Born Before 1920', last_name, first_name, 
       to_char(birth_date, 'DD-MON-YYYY')
from employee, emp_tools
where birth_date < '01-JAN-1920'
  and payroll_number = fk_payroll_number
union
select 'Born After 1920', last_name, first_name, 
       to_char(birth_date, 'DD-MON-YYYY')
from employee, glasses
where birth_date >= '01-JAN-1920'
  and payroll_number = fk_payroll_number
order by 1 desc, 2;
