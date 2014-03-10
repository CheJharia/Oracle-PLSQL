declare
         sen    number;
         abs    number;
       begin
         for a in personnel.list_emps
         loop
           sen := personnel.seniority(a.employment_date);
           personnel.avail_absences(sen, abs);
           dbms_output.put_line(a.last_name||' '||to_char(abs));
         end loop;
       end;
/
