set serveroutput on
declare
    cursor a is select first_name, last_name from employee;
begin
    for cnt_var in a
    loop
      dbms_output.put_line(to_char(a%rowcount)||' '||cnt_var.last_name);
    end loop;
end;
/
