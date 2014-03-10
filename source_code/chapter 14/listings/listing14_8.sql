set serveroutput on
declare
    male_avg       number;
    female_avg     number;
begin
    select avg(months_between(employment_date, birth_date)/12)
      into male_avg
    from employee
    where gender = 'M';
    select avg(months_between(employment_date, birth_date)/12)
      into female_avg
    from employee
    where gender = 'F';
    if (male_avg > female_avg) then
     dbms_output.put_line ('Males have the greatest avg hiring age');
     dbms_output.put_line ('With and avg age of '||to_char(male_avg));
     if (male_avg > female_avg + 10) then
      dbms_output.put_line ('The male average is greater than 10 years');
     end if;
    else
     dbms_output.put_line ('Females have the greatest avg hiring age');
     dbms_output.put_line ('With and avg age of '||to_char(female_avg));
    end if;
end;
/
