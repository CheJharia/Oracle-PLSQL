select (case when tool_cost >= 0 and tool_cost <= 10 
                  then '0 to 10'
             when tool_cost > 10 and tool_cost <= 20 
                  then '10.01 to 20'
             when tool_cost > 20 and tool_cost <= 30 
                  then '20.01 to 30'
             when tool_cost > 30 then 'Above 30' end) 
        "Tool Costs", count(*) as amount
from emp_tools
group by (case when tool_cost >= 0 
                and tool_cost <= 10 then '0 to 10'
               when tool_cost > 10 and tool_cost <= 20 
                  then '10.01 to 20'
               when tool_cost > 20 and tool_cost <= 30 
                  then '20.01 to 30'
               when tool_cost > 30 then 'Above 30' end);
