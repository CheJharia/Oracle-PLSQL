set serveroutput on
declare
      avg_age        number;
      cursor a_age is select trunc(avg(months_between(employment_date, 
                                  birth_date)/12),0)
                               from employee;
      begin
        open a_age;
        fetch a_age into avg_age;
        close a_age;
        dbms_output.put_line ('This average starting age is '||to_char(avg_age));
      end;
/
