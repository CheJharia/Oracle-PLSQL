declare
    lname     employee.last_name%type;
begin
    select last_name into lname from employee;
    dbms_output.put_line (lname);
exception
    when too_many_rows then 
      dbms_output.put_line ('Error occured in procedure');
end;
/
