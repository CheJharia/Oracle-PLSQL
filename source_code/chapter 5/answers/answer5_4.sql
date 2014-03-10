Select department_name, last_name, first_name, purchase_date, optician 
from department d, employee e, glasses g 
where d.department = e.fk_department 
  and e.payroll_number = g.fk_payroll_number;
