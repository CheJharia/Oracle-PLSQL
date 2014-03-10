set serveroutput on
declare
       cursor a is select first_name||' '||last_name name,
                         to_char(birth_date, 'DD-MON-YYYY') bday
                         from employee
                         order by 1;
       a_var      a%rowtype;
     begin
       open a;
       for cnt_var in reverse 1..5 loop
         fetch a into a_var;
         dbms_output.put_line (to_char(cnt_var)||' '||a_var.name||' '||a_var.bday);
      end loop;
      close a;
      end;
/
