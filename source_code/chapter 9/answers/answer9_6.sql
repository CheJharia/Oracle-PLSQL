select tool_name, purchase_date, tool_cost,
       tool_cost - lag(tool_cost, 1) over 
      (partition by tool_name order by purchase_date) diff
from emp_tools;
