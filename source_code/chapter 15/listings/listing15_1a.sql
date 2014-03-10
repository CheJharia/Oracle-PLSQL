declare
    lname     employee.last_name%type;
begin
    select last_name into lname from employee;
    dbms_output.put_line (lname);
end;
/
