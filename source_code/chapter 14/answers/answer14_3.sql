set serveroutput on
declare
       retirement_date        date;
       emp_var               employee%rowtype;
     begin
       select max(birth_date)
       into emp_var.birth_date
       from employee;
       select last_name, first_name
       into emp_var.last_name, emp_var.first_name
       from employee
       where birth_date = emp_var.birth_date;
       retirement_date := add_months(emp_var.birth_date, 12*65);
       dbms_output.put_line (emp_var.first_name||' '||emp_var.last_name||' Retires On');
       dbms_output.put_line (to_char(retirement_date));
    end;
/
