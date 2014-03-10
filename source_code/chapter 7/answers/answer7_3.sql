Select fk_department, avg(nvl(cost,0)), round(avg(nvl(cost,0)), -1)
from employee, glasses
where payroll_number = fk_payroll_number(+)
group by fk_department;
