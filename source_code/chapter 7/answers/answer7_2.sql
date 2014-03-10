Select last_name, first_name, avg(nvl(cost,0)) 
from employee, glasses
where payroll_number = fk_payroll_number(+)
group by last_name, first_name;
