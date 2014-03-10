declare
 cursor a is select fk_payroll_number, sum(tool_cost) cost 
             from emp_tools
             group by fk_payroll_number;
 type tool_statistics_table is table of a%rowtype index 
       by binary_integer;
 tool_statistics      tool_statistics_table;
 counter      number := 1;
 i    binary_integer;
begin
 open a;
 fetch a into tool_statistics(counter);
 counter := counter + 1;
 while a%found loop
   fetch a into tool_statistics(counter);
   counter := counter + 1;
 end loop;
 close a;
 dbms_output.put_line ('Array Variable 1'
                        ||tool_statistics(1).cost);
 dbms_output.put_line ('Array Variable 3'
                        ||tool_statistics(3).cost);
 dbms_output.put_line ('Array Variable 6'
                        ||tool_statistics(6).cost);
 dbms_output.put_line ('Total Record Count'
              ||tool_statistics.count);
 i := tool_statistics.first;
 dbms_output.put_line ('First Employee'
             ||tool_statistics(i).fk_payroll_number);
 i := tool_statistics.last;
 dbms_output.put_line ('Last Employee'
             ||tool_statistics(i).fk_payroll_number);
 i := tool_statistics.next(2);
 dbms_output.put_line ('Following Employee 2'
         ||tool_statistics(i).fk_payroll_number);
 i := tool_statistics.prior(2);
 dbms_output.put_line ('Preceding Employee 2 '
         ||tool_statistics(i).fk_payroll_number);
 if tool_statistics.exists(35) then
   dbms_output.put_line ('Record 35 exists');
 else
   dbms_output.put_line ('Record 35 does not exist');
 end if;
end;
/
