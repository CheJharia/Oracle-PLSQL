set serveroutput on
declare
    hi_tool_name      emp_tools.tool_name%type;
    hi_tool_cost      emp_tools.tool_cost%type;
begin
    for outer_loop in (select payroll_number, last_name from employee
                       where fk_department = 'WEL')
    loop
        for inner_loop in (select tool_name, tool_cost from emp_tools
                          where fk_payroll_number = outer_loop.payroll_number)
        loop
        if (inner_loop.tool_cost > hi_tool_cost 
            or hi_tool_cost is null) then
           hi_tool_name := inner_loop.tool_name;
           hi_tool_cost := inner_loop.tool_cost;
        end if;
        end loop;
        dbms_output.put_line (outer_loop.last_name||' '||hi_tool_name);
        hi_tool_name := null;
        hi_tool_cost := null;
    end loop;
end;
/
