Create or replace package personnel is
             Cursor list_emps return employee%rowtype;
             Function seniority (employment_date in date) return number;
             Procedure avail_absences (seniority in number, absences out number);
       End;
/
       Create or replace package body personnel is
              Cursor list_emps return employee%rowtype
              Is
              Select * from employee;
              Function seniority (employment_date in date) return number
              Is
                  Seniority    number;
              Begin
                  Seniority := trunc(months_between(sysdate, employment_date)/12, 0);
                  Return seniority;
             End;
             Procedure avail_absences (seniority in number, absences out number)
             Is
             begin
                 if seniority > 50 then absences := 10;
                   elsif seniority > 40 then absences := 9;
                   elsif seniority > 30 then absences := 8;
                   elsif seniority > 20 then absences := 7;
                   elsif seniority > 10 then absences := 6;
                 else
	           absences := 5;
                    end if;
            end;
       end personnel;
/
