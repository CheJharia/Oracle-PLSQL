Create or replace procedure answer8 (beg_date in date, end_date in date) is
         Begin
              For a in (select * from employee where birth_date between beg_date 
                                                                    and end_date) Loop
                   Dbms_output.put_line (a.last_name||' '||a.birth_date);
              End loop;
          End;
/
Execute answer8('01-JAN-1901', '01-JAN-1999');
Drop procedure answer8;
