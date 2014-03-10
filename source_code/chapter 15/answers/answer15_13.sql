create or replace function seniority (employment_date in date) return number
        is
          seniority    number;
        begin 
          seniority :=  trunc(months_between(sysdate, employment_date)/12, 1);
          return seniority;
        end;
/
        select last_name, seniority(employment_date) from employee;
        drop function seniority;
