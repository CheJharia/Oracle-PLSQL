declare
 cursor a is select fk_payroll_number, 
                    sum(tool_cost) cost from emp_tools
               group by fk_payroll_number;
   type tool_statistics_table is 
     table of a%rowtype index by binary_integer;
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
     tool_statistics.delete(7);
     if tool_statistics.exists(7) then
        dbms_output.put_line ('Record 7 exists');
     else
        dbms_output.put_line ('Record 7 does not exist');
     end if;
     tool_statistics.delete(2,4);
     if tool_statistics.exists(3) then
        dbms_output.put_line ('Record 3 exists');
     else
        dbms_output.put_line ('Record 3 does not exist');
     end if;
     tool_statistics.delete;
     if tool_statistics.exists(1) then
        dbms_output.put_line ('Record 1 exists');
     else
        dbms_output.put_line ('Record 1 does not exist');
     end if;
  end;
/
