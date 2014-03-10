Create or replace view dept_wages 
  as select fk_department, sum(wages) dept_wages
     from employee
     group by fk_department;
Create or replace view dept_tools 
  as select fk_department, sum(tool_cost) dept_tools
     From employee, emp_tools
     Where payroll_number = fk_payroll_number(+)
     Group by fk_department;
Create or replace view dept_glasses 
  as select fk_department, sum(cost) dept_glasses
     From employee, glasses
     Where payroll_number = fk_payroll_number(+)
     Group by fk_department;
Select dept_wages.fk_department, 
       dept_wages+dept_tools+dept_glasses
From dept_wages, dept_tools, dept_glasses
Where dept_wages.fk_department = dept_tools.fk_department(+)
  And dept_wages.fk_department = dept_glasses.fk_department(+);
