create or replace
procedure list_dept_employees (department in varchar2 
                               default 'POL') is
begin
for a in (select * from employee 
          where fk_department = department)
      loop
       dbms_output.put_line (a.last_name);
      end loop;
end;
/
exec list_dept_employees('WEL');
drop procedure list_dept_employees;