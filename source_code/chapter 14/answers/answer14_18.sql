set serveroutput on
declare
       cursor a is select * from employee
                         for update of absences;
       a_var      a%rowtype;
     begin
       open a;
       fetch a into a_var;
       while a%found loop
         update employee set absences = 0
         where current of a;
         fetch a into a_var;
       end loop;
       close a;
     end;
/   
