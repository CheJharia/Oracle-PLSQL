create or replace function highest_seniority
     (department in varchar2)
      return varchar2
    is
    cursor a is select * from employee
                where employment_date =
                      (select min(employment_date)
                       from employee
                       where fk_department = department);
   a_var       a%rowtype;
   begin
    open a;
    fetch a into a_var;
    if a%notfound then
        return 'No Employees in the Department';
    else
        return a_var.last_name||', '||a_var.first_name;
    end if;
   end;
/
declare
    name     varchar2(50);
  begin
    for a in (select department from department)
    loop
      name := highest_seniority(a.department);
      dbms_output.put_line (a.department||' '||name);
    end loop;
end;
/
drop function highest_seniority;
