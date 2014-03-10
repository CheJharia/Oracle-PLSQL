create or replace function age (birth_date in date)
  return number is
  age   number;
begin
  age := trunc(months_between(sysdate, birth_date)/12, 0);
  return age;
end;
/
select last_name, age(birth_date)
from employee
where fk_department = 'WEL';
