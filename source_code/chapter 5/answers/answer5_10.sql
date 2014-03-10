select last_name, first_name, count(cost), sum(cost), avg(nvl(cost,0)) 
from employee, glasses 
where payroll_number = fk_payroll_number(+) 
group by last_name, first_name;
