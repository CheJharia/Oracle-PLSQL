create or replace view employee_data as
select department_name, last_name||', '||first_name name, 
       wages, birth_date, 
       trunc(months_between(sysdate, birth_date)/12,0) age,
       employment_date, 
       trunc(months_between(sysdate, birth_date)/12,0) seniority_yrs
from department, employee
where department = fk_department;
select department_name, name, seniority_yrs
from employee_data
order by seniority_yrs desc;
drop view employee_data;