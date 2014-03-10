declare
        lname       employee.last_name%type;
      begin
        select last_name into lname from employee
        where last_name = 'PALINSKI';
      exception
        when others then
        dbms_output.put_line (to_char(sqlcode));
        dbms_output.put_line (sqlerrm);
      end;
/
