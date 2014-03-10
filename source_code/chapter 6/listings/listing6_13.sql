select trim(leading 'R' from last_name) "Leading Option",
       trim(trailing 'N' from last_name) "Trailing Option",
       trim(both 'R' from last_name) "Both Option"
from employee
where last_name like 'R%'
   or last_name like '%N';