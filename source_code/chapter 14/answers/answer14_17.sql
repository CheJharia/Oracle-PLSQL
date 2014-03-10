set serveroutput on
declare
       cursor a is select payroll_number, first_name||' '||last_name name
                         from employee;
       a_var       a%rowtype;
       cursor b is select count(*) t_cnt from emp_tools
                         where fk_payroll_number = a_var.payroll_number;
       b_var       b%rowtype;
       cursor c is select count(*) g_cnt from glasses
                         where fk_payroll_number = a_var.payroll_number;
       c_var       c%rowtype;
     begin
       open a;
       fetch a into a_var;
      while not a%notfound loop
         open b; fetch b into b_var; close b;
         open c; fetch c into c_var; close c;
         dbms_output.put_line (to_char(a%rowcount)||' '||a_var.name);
         dbms_output.put_line ('   Tool purchases '||to_char(b_var.t_cnt));
         dbms_output.put_line ('   Glass purchases '||to_char(c_var.g_cnt));
         fetch a into a_var;
      end loop;
     end;
/
