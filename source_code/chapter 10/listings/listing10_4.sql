create or replace view wages_difference as
select employee.fk_department, payroll_number, last_name, first_name,
       wages, employee_purchases/(dept_purchases/employee_amt) Percent_of_Department_Avg
from employee,
     (select fk_payroll_number, sum(cost) employee_purchases
      from (select fk_payroll_number, nvl(tool_cost,0) cost
            from emp_tools
            union all
            select fk_payroll_number, nvl(cost,0)
            from glasses) 
     group by fk_payroll_number) e,
     (select fk_department, sum(cost) dept_purchases
      from (select fk_department, nvl(tool_cost,0) cost
            from employee, emp_tools
            where payroll_number = fk_payroll_number(+)
            union all
            select fk_department, nvl(cost,0)
            from employee, glasses
            where Payroll_number = fk_payroll_number(+))
      group by fk_department) f,
      (select fk_department, count(*) employee_amt 
       from employee
       group by fk_department) c
where employee.payroll_number = e.fk_payroll_number(+)
  and employee.fk_department = f.fk_department(+)
  and employee.fk_department = c.fk_department;
Select * from wages_difference order by 1,2;
