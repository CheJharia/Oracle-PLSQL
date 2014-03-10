declare
 cursor a is select fk_payroll_number, 
             sum(tool_cost) cost from emp_tools
             group by fk_payroll_number;
 type tool_statistics_table is table of a%rowtype index by 
      binary_integer;
 tool_statistics      tool_statistics_table;
 counter      number := 1;
begin
 open a;
 fetch a into tool_statistics(counter);
 counter := counter + 1;
 while a%found loop
   fetch a into tool_statistics(counter);
   counter := counter + 1;
 end loop;
 close a;
 dbms_output.put_line ('Array Variable 1');
 dbms_output.put_line ('Array Variable 3' 
                        ||tool_statistics(3).cost);
 dbms_output.put_line ('Array Variable 6'
                        ||tool_statistics(6).cost);
end;
/
