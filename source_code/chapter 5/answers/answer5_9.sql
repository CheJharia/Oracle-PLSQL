Select department_name, sum(cost) 
from department, employee, glasses 
where department = fk_department(+) 
  and payroll_number = fk_payroll_number(+) 
group by department_name;
