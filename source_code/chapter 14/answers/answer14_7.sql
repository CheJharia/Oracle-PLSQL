set serveroutput on
declare
      decade           number;
    begin
      select to_number(substr(birth_date, 8, 2)) into decade
      from employee
      where last_name = 'CLINTON';
      if decade between 0 and 9 then
        dbms_output.put_line ('Clinton was born in the 1st decade');
      elsif decade between 10 and 19 then 
        dbms_output.put_line ('Clinton was born in the 2nd decade');
        elsif decade between 20 and 29 then 
          dbms_output.put_line ('Clinton was born in the 3rd decade');
          elsif decade between 30 and 39 then 
            dbms_output.put_line ('Clinton was born in the 4th decade');
            elsif decade between 40 and 49 then 
              dbms_output.put_line ('Clinton was born in the 5th decade');
              elsif decade between 50 and 59 then 
                dbms_output.put_line ('Clinton was born in the 6th decade');
                elsif decade between 60 and 69 then 
                  dbms_output.put_line ('Clinton was born in the 7th decade');
                  elsif decade between 70 and 79 then 
                    dbms_output.put_line ('Clinton was born in the 8th decade');
                    elsif decade between 80 and 89 then 
                      dbms_output.put_line ('Clinton was born in the 9th decade');
                      elsif decade between 90 and 99 then 
                        dbms_output.put_line ('Clinton was born in the 10th decade');
      end if;
    end;
/
