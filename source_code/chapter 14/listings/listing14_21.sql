set serveroutput on
declare
    cursor a is select first_name, last_name from employee;
    emp_var       a%rowtype;
begin
    open a;
    for cnt_var in 1..10
    loop
      fetch a into emp_var;
      dbms_output.put_line(to_char(cnt_var)||' '||emp_var.last_name);
    end loop;
    close a;
end;
/
