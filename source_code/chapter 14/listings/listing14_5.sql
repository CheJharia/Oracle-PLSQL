set serveroutput on
declare
   retirement_date        date;
   emp_var               employee%rowtype;
begin
   select min(birth_date)
   into emp_var.birth_date
   from employee;
   retirement_date := add_months(emp_var.birth_date, 12*65);
   dbms_output.put_line (to_char(retirement_date));
end;
/
