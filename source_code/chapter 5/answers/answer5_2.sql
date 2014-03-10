Select last_name, first_name, purchase_date, optician 
from employee, glasses 
where payroll_number = fk_payroll_number(+);
