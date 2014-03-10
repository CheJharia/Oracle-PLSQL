set linesize 70
column fk_department noprint new_val dept
column name head 'Employee|Name' for a35
column current_position head 'Classification' for a16
column wages for $99,999.00
column sysdate noprint old_val day
ttitle center 'Employees For Department' skip 1 center dept
btitle day center sql.pno
select sysdate, fk_department, last_name||', '||first_name name,
       current_position, wages
from employee
where fk_department = 'POL';
clear columns
ttitle off


