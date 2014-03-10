accept payment_amt number format 999.99 prompt 'Enter Payment Amount: '
select last_name, first_name, payment_amount
from employee, emp_tools
where payroll_number = fk_payroll_number
  and payment_amount = &payment_amt;