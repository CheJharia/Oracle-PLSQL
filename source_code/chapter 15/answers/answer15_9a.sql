      create or replace procedure answer9a 
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
/
