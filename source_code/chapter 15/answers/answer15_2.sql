declare
        bad_payroll_number          exception;
        pragma exception_init (bad_payroll_number, -02291);
      begin
        insert into emp_tools (fk_payroll_number, tool_name, purchase_date)
        values (987, 'PLIERS', '08-APR-98');
      exception
        when bad_payroll_number then
        dbms_output.put_line ('You have violated the payroll number constraint');
      end;
/
