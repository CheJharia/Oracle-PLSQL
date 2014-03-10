declare
    tools     number;
    glasses   number;
begin
    for a in employee_objects.list_employees
    loop
 employee_objects.total_employee_purchase(a.payroll_number,
                                          tools, glasses);

 dbms_output.put_line (a.last_name||
  ' '||to_char(employee_objects.age(a.birth_date))||
   ' '||to_char(tools)||' '||to_char(glasses));
  end loop;
  end;
/
