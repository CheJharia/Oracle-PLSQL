set serveroutput on
declare
  cursor find_old_b_day is select min(birth_date) day 
                           from employee;
  old_date              find_old_b_day%rowtype;
  cursor id_employee is select last_name, first_name
                        from employee
                        where birth_date = old_date.day;
  id                    id_employee%rowtype;
begin
  open find_old_b_day;
  fetch find_old_b_day into old_date;
  close find_old_b_day;
  open id_employee;
  fetch id_employee into id;
  close id_employee;
  dbms_output.put_line ('The Oldest Employee Is '
                         ||id.last_name||', '||id.first_name);
end;
/
