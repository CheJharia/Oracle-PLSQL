Create or replace PROCEDURE answer11a (dept in varchar2, rate out number) IS
         BEGIN
              if dept = 'WEL' then rate := .07; 
               elsif dept = 'INT' then rate := .06; 
               elsif dept = 'POL' then rate := .15;
               else
                 rate := .05;
              end if;
         END;
/
         create or replace PROCEDURE answer11 (dept in varchar2) IS
              new_wages      number;
              rate           number;
         begin
              for a in (select * from employee where fk_department = dept)
                 loop
                    problem11a(a.fk_department, rate);
                    new_wages := a.wages * (1 + rate);
                    update employee set wages = new_wages
                        where payroll_number = a.payroll_number;
                       dbms_output.put_line (a.last_name||' '||to_char(a.wages)||
                                                              ' '||to_char(new_wages));    
                 end loop;
         end;
/
        Execute answer11('WEL');
        Drop procedure answer11a;

        Drop procedure answer11;
