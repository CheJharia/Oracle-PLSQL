Create or replace procedure answer9 (beg_date in date, end_date in date) is
          lname         employee.last_name%type;
      Begin
          For a in (select * from department)
          Loop
               Answer9a(a.department, beg_date, end_date, lname);
               Dbms_output.put_line (a.department||' '||lname);
          End loop;
      End;
/
Execute answer9('01-JAN-1901', '01-JAN-1999');
Drop procedure answer9;
Drop procedure answer9a;
