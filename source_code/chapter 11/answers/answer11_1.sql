set linesize 132
column sysdate noprint new_val day
column last_name hea 'Last Name' for a15
column first_name hea 'First Name' for a10
column employment_date hea 'Employment| Date' jus center format a10
column current_position hea 'Current Position' format a18
column wages hea 'Wages' format $999,999.99
column purchase_date hea 'Tool|Purchase| Date' format a10 jus center
column tool_name hea 'Tool Name'  
column tool_cost hea 'Cost of|Tool' format $999.99 jus right
column department_name hea 'Department Name'
break on department_name on last_name on first_name -
      on employment_date on current_position on wages  
compute sum label 'Dept Total' of tool_cost on department_name
ttitle left day center 'Departmental Tool Purchases'
btitle right sql.pno
select department_name, last_name, first_name, employment_date,
       current_position, wages, purchase_date, tool_name, tool_cost, sysdate
from department, employee, emp_tools  
where department = fk_department
  and payroll_number = fk_payroll_number
order by 1,2,3,7;
clear columns
clear computes
clear breaks
ttitle off
btitle off
