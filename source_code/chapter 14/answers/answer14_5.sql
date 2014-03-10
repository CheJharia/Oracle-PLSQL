set serveroutput on
declare
      bush_tool_purchases        number;
      truman_tool_purchases      number;
    begin
      select count(*) into bush_tool_purchases
      from employee, emp_tools
      where employee.payroll_number = emp_tools.fk_payroll_number
          and last_name = 'BUSH';
      select count(*) into truman_tool_purchases
      from employee, emp_tools
      where employee.payroll_number = emp_tools.fk_payroll_number
          and last_name = 'TRUMAN';
      if bush_tool_purchases > truman_tool_purchases then
        dbms_output.put_line ('Bush has '||to_char(bush_tool_purchases-                
              truman_tool_purchases)||' more than Truman');
      else
        dbms_output.put_line ('Truman has '||to_char(truman_tool_purchases- 
              bush_tool_purchases)||' more than Bush');
      end if;
    end;
/
