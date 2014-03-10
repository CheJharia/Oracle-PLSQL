declare
   cursor a is select * from department;
   a_var         a%rowtype;
   last_name     employee.last_name%type;
   first_name    employee.first_name%type;
   procedure find_oldest_employee
     (department in varchar2,
      fname out employee.first_name%type,
      lname out employee.last_name%type) is
   cursor b is select first_name, last_name from employee
               where birth_date = (select max(birth_date) 
                                   from employee
                                   where fk_department = department);
   begin
     open b; fetch b into fname, lname; close b;
   end find_oldest_employee;
   begin
   open a;
   fetch a into a_var;
   while a%found loop
      find_oldest_employee (a_var.department, first_name,
                            last_name);
      dbms_output.put_line (a_var.department||' '||first_name||
                            ' '||last_name);
      fetch a into a_var;
      end loop;
     close a;
end;
/
