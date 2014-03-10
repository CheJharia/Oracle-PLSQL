declare
        type dept_name_table is table of varchar2(30) 
            index by binary_integer;
        dept_name     dept_name_table;
      begin
        for a in (select * from department)
        loop
          dept_name(ascii(a.department)) := a.department_name;
        end loop;
        for b in (select * from employee)
        loop
         dbms_output.put_line(dept_name(ascii(b.fk_department))||' '||b.last_name);
        end loop;
      end;
/
