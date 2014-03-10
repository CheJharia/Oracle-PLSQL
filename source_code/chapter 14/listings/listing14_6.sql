set serveroutput on
declare
    retirement_date        date;
    emp_var               employee%rowtype;
begin
    select *
    into emp_var
    from employee where last_name = 'ANTHONY';
    retirement_date := add_months(emp_var.birth_date, 12*65);
    dbms_output.put_line (to_char(retirement_date));
end;
/
