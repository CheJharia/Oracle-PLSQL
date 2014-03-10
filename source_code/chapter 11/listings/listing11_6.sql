set linesize 80
set pagesize 60
set termout off
spool c:\test.txt
select last_name, first_name, current_position 
from employee
order by 1, 2;
spool off
set termout on