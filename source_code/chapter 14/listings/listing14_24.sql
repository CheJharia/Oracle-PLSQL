set serveroutput on
begin
     for cnt_var in (select first_name, last_name from employee)
     loop
        dbms_output.put_line(cnt_var.last_name);
     end loop;
end;
/
