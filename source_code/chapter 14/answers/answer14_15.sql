set serveroutput on
declare
       cursor a is select first_name||' '||last_name name
                         from employee
                         where fk_department = 'INT';
       a_var       a%rowtype;
     begin
       open a;
       fetch a into a_var;
       while a%found loop
         dbms_output.put_line (a_var.name);
         fetch a into a_var;
       end loop;
       close a;
     end;
/
