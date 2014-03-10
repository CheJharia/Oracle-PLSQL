set linesize 70
ttitle center 'Clerical Employees' sql.pno
btitle right 'Prepared By John Palinski'
select fk_department, last_name, first_name
from employee
where current_position like '%CLERK%'
order by 1,2,3;
ttitle off
btitle off

