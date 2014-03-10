declare
   procedure list_employees (department in varchar2)
   is
   begin
    for a in (select last_name, employment_date from employee
              where fk_department = department)
    loop
      dbms_output.put_line (a.last_name||
                            ' '||to_char(a.employment_date));
    end loop;
    end;
    procedure list_employees
     (department in varchar2, hired in date)
    is
    begin
      for a in (select last_name, employment_date from employee
                where fk_department = department
                  and employment_date > hired)
    loop
      dbms_output.put_line (a.last_name||
                            ' '||to_char(a.employment_date));
    end loop;
    end;
 begin
     dbms_output.put_line ('Results of the first procedure');
     list_employees('WEL');
     dbms_output.put_line ('----');
     dbms_output.put_line ('Results of the second procedure');
     list_employees('WEL', '01-JAN-60');
   end;
/
