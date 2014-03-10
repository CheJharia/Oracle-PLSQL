Insert into glasses (fk_payroll_number, purchase_date, optician, cost)
select payroll_number, '07-MAY-2001', 'Pearl Optical', 78 
from employee
where fk_department = 'WEL';
