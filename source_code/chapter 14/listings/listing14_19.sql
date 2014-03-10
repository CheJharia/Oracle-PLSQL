set serveroutput on
declare
    cursor a is select last_name, first_name from employee
                where fk_department = 'WEL'
                for update of wages;
    a_var      a%rowtype;
begin
    open a;
    fetch a into a_var;
    while a%found loop
      dbms_output.put_line (a_var.last_name);
      fetch a into a_var;
    end loop;
end;
/
