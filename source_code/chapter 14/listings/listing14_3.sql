set serveroutput on;
declare
    local_variable         varchar2(30);
begin
    select 'Number of Employees'||to_char(count(last_name),'999')
      into local_variable
    from employee;
    dbms_output.put_line (local_variable);
exception
   when others then dbms_output.put_line('ERROR OCCURED');
end;
/
