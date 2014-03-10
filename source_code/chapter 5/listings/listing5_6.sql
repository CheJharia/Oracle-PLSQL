select emp.payroll_number, emp.last_name,
       prev.payroll_number, prev.last_name "Previous hire"
from employee emp, employee prev
where emp.payroll_number = prev.payroll_number(+) + 1
order by emp.payroll_number;
