Select fk_department, last_name, nvl(wages,0)/52 
from employee 
order by 1, 3;
