set linesize 70
column fk_department noprint new_val dept
column last_name head 'Employee|Last Name' for a20
column first_name head 'Employee|First Name' for a20
column current_position head 'Classification' for a16
column wages for $99,999.00
column sysdate noprint old_val day
break on fk_department page on last_name
ttitle center 'Employees For Department' skip 1 center dept
btitle day center sql.pno
select sysdate, fk_department, last_name, first_name,
       current_position, wages
from employee
order by 2,3;
