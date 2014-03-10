Select department_name, last_name, first_name, purchase_date, optician 
from department, employee, glasses 
where department = fk_department 
  and payroll_number = fk_payroll_number;
