set serveroutput on
declare
       b_day        employee.birth_date%type;
       cursor a is select max(birth_date) from employee;
     begin
       open a;
       fetch a into b_day;
       dbms_output.put_line (to_char(b_day));
       if not a%isopen then open a; end if;
       close a;
     end;
/
