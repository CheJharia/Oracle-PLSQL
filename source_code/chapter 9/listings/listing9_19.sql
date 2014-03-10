select last_name, wages,
       lead(wages, 1) 
       over (order by employment_date) - wages 
       as "Wage Differences"
from employee;
