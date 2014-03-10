set serveroutput on
declare
       cursor a is select * from emp_tools;
       a_var     a%rowtype;
       counter   number := 0;
     begin
       open a;
       loop
         fetch a into a_var;
         counter := counter + 1;
         dbms_output.put_line (to_char(counter)||' '||a_var.purchase_date||' 
             '||a_var.tool_name);
         exit when counter = 12;
       end loop;
     end;
/
