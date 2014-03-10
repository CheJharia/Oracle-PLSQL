set serveroutput on
declare
       t     emp_tools%rowtype;
       g     glasses%rowtype;
     begin
       for a in (select * from employee) loop
         t.tool_cost := null;  t.tool_name := null; t.purchase_date := null;
         g.cost := null; g.purchase_date := null;
           for b in (select * from emp_tools 
                         where fk_payroll_number = a.payroll_number)
           loop
             if t.tool_cost is null or b.tool_cost > t.tool_cost then
               t.tool_cost := b.tool_cost;
               t.tool_name := b.tool_name;
               t.purchase_date := b.purchase_date;
            end if;
           end loop;
           for c in (select * from glasses
                         where fk_payroll_number = a.payroll_number)
           loop
             if g.cost is null or c.cost > g.cost then
               g.cost := c.cost;
               g.purchase_date := c.purchase_date;
             end if;
           end loop;
           dbms_output.put_line (a.last_name||' purchased');
           dbms_output.put_line ('Tool: '||t.purchase_date||' '||t.tool_name||' '
                                                 ||to_char(t.tool_cost));
           dbms_output.put_line ('Glasses: '||g.purchase_date||' '||to_char(g.cost));
           end loop;
     end;
/

