set serveroutput on
declare
    oldest_birth_date     date;
    lname                 employee.last_name%type;
    fname                 employee.first_name%type;
    cursor find_old_b_day is select min(birth_date) from employee;
    cursor id_employee is select last_name, first_name
                          from employee
                          where birth_date = oldest_birth_date;
begin
    open find_old_b_day;
    fetch find_old_b_day into oldest_birth_date;
    close find_old_b_day;
    open id_employee;
    fetch id_employee into lname, fname;
    close id_employee;
    dbms_output.put_line ('The Oldest Employee Is' 
                           ||lname||', '||fname);
end;
/
