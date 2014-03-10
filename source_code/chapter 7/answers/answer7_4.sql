Select fk_department, sum(cost), trunc(sum(cost),-2)
from employee, glasses
where payroll_number = fk_payroll_number(+)
group by fk_department;
