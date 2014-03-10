Create or replace procedure answer10 (beg_date in date, end_date in date) is
      lname         employee.last_name%type;
      procedure answer10a 
            (dept in varchar2, beg_date in date, end_date in date, 
             lname out employee.last_name%type) 
      is
      begin
	select min(last_name) into lname 
   	from employee
     	where fk_department = dept
                and birth_date between beg_date and end_date
                and birth_date = (select min(birth_date)
                                            from employee
                                            where fk_department = dept
                                                 and birth_date between beg_date and end_date);
      end;
      Begin
              For a in (select * from department)
              Loop
                  Answer10a(a.department, beg_date, end_date, lname);
                  Dbms_output.put_line (a.department||' '||lname);
              End loop;
       End;
/
       Execute answer10('01-JAN-1901', '01-JAN-1999');
       Drop procedure answer10;
