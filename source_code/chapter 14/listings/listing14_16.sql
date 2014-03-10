set serveroutput on
declare
    cursor a is select last_name from employee;
    cur_var            a%rowtype;
begin
    open a;
    fetch a into cur_var;
    while a%found
    loop
      dbms_output.put_line (cur_var.last_name);
      fetch a into cur_var;
    end loop;
end;
/
