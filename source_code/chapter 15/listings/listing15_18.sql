create or replace package body employee_objects is
    cursor list_employees  return employee%rowtype
     is select * from employee
        order by fk_department, last_name;
    function age (birth_date in date) return number is
      age number;
      begin
        age := trunc(months_between(sysdate, birth_date)/12, 0);
        return age;
      end;
    procedure total_employee_purchase
       (payroll_number in number, total_tools out number,
        total_glasses out number) is
      begin
        select count(tool_name) into total_tools
        from emp_tools
        where fk_payroll_number = payroll_number;
        select count(purchase_date) into total_glasses
        from glasses
        where fk_payroll_number = payroll_number;
      end;
  end employee_objects;
/
