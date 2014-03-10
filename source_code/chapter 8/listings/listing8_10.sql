select last_name, first_name, optician, cost
from employee, glasses
where payroll_number = fk_payroll_number
  and (optician, cost) = (select optician, cost
                          from glasses
                          where fk_payroll_number = 25);
