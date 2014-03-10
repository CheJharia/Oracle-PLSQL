Create or replace view position_wages as 
select current_position, sum(wages) position_wages
from employee
group by current_position;
Create or replace view position_tools as 
select current_position, sum(tool_cost) position_tools
From employee, emp_tools
Where payroll_number = fk_payroll_number(+)
Group by current_position;
Create or replace view position_glasses as 
select current_position, sum(cost) position_glasses
From employee, glasses
Where payroll_number = fk_payroll_number(+)
Group by current_position;
Select position_wages.current_position,  
       position_wages+position_tools+position_glasses costs
From position_wages, position_tools, position_glasses
Where position_wages.current_position = position_tools.current_position(+)
  And position_tools.current_position = position_glasses.current_position(+);
