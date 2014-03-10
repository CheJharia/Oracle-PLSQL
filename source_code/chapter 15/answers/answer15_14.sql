create or replace function tool_number (payroll_number in varchar2)
        return number is
          tool_number    number;
        begin
          select count(tool_name) 
          into tool_number
          from emp_tools
          where fk_payroll_number = payroll_number;
          return tool_number;
        end;
/
       create or replace function glasses_number (payroll_number in varchar2)
         return number is
         glasses_number    number;
       begin
         select count(optician)
         into glasses_number
         from glasses
         where fk_payroll_number = payroll_number;
         return glasses_number;
       end;
/
       begin
       for a in (select * from employee)
       loop
         dbms_output.put_line ('Name: '||a.last_name);
         dbms_output.put_line ('Tools   : '||to_char(tool_number(a.payroll_number)));      
         dbms_output.put_line ('Glasses: '||to_char(glasses_number(a.payroll_number)));
       end loop;
    end;
/
    drop function tool_number;
    drop function glasses_number;
