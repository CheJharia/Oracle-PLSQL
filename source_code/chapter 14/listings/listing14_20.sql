set serveroutput on
declare
    cursor a is select last_name, first_name, wages from employee
                where fk_department = 'WEL'
                for update;
    a_var      a%rowtype;
begin
    open a;
    fetch a into a_var;
    while a%found loop
      dbms_output.put_line (a_var.last_name||' '||to_char(a_var.wages));
      update employee set wages = wages * 1.03
      where current of a;
      fetch a into a_var;
    end loop;
    close a;
    open a;
    fetch a into a_var;
    while a%found loop
      dbms_output.put_line (a_var.last_name||' '||to_char(a_var.wages));
      fetch a into a_var;
    end loop;
    close a;
end;
/
