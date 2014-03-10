set serveroutput on
declare
        h_day                    employee.employment_date%type;
        lname                    employee.last_name%type;
        fname                    employee.first_name%type;
        cursor start_day is select min(employment_date) from employee
                                      where fk_department = 'WEL';
        cursor emp_name is select first_name, last_name from employee
                                         where employment_date = h_day;
      begin
        open start_day;
        fetch start_day into h_day;
        close start_day;
        open emp_name;
        fetch emp_name into fname, lname;
        close emp_name;
        dbms_output.put_line (fname||' '||lname||' was the first employee hired');
     end;
/
