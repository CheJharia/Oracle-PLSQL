select lpad(' ',2*(level-1)) || operation ||
       ' ' || options || ' '|| object_name ||
       ' ' || decode(id, 0, 'Cost = '||position )
       "Execution Plan"
from plan_table
start with id = 0
connect by prior id = parent_id;
