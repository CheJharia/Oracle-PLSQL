select last_name, first_name, wages,
       rank() over (order by wages asc nulls first) as ranking_1,
       rank() over (order by wages asc nulls last) as ranking_1,
       rank() over (order by wages desc nulls first) as ranking_1,
       rank() over (order by wages desc nulls last) as ranking_1
from employee;
