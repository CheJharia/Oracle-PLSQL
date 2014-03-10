set serveroutput on
declare
    counter_variable   number := 1;
    cursor a is select last_name from employee;
    cur_var            a%rowtype;
begin
    open a;
    while counter_variable != 7
    loop
      fetch a into cur_var;
      dbms_output.put_line (cur_var.last_name);
      counter_variable := counter_variable +1;
    end loop;
end;
/
