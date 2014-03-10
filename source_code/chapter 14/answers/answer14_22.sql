set serveroutput on
begin
       for cnt_var in (select fk_department, first_name||' '||last_name name
                                from employee
                                where fk_department in ('INT', 'POL')
                                order by 1)
       loop
         dbms_output.put_line (cnt_var.fk_department||' '||cnt_var.name);
       end loop;
     end;
/
