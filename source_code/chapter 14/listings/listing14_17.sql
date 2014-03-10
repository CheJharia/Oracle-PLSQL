set serveroutput on
declare
    cursor a is select payroll_number, last_name from employee
                where fk_department = 'WEL';
    a_var       a%rowtype;
    cursor b is select tool_name, tool_cost from emp_tools
                where fk_payroll_number = a_var.payroll_number;
    b_var             b%rowtype;
    hi_tool_name      emp_tools.tool_name%type;
    hi_tool_cost      emp_tools.tool_cost%type;
begin
    open a; fetch a into a_var;
    while a%found loop
      open b; fetch b into b_var;
      while b%found loop
        if b_var.tool_cost > hi_tool_cost or b_var.tool_cost is null then
           hi_tool_name := b_var.tool_name;
           hi_tool_cost := b_var.tool_cost;
        end if;
        fetch b into b_var;
       end loop;
       close b;
       dbms_output.put_line (a_var.last_name||' '||b_var.tool_name);
       hi_tool_name := null;
       hi_tool_cost := null;
       fetch a into a_var;
    end loop;
    close a;
end;
/
