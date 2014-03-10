create or replace package employee_objects is
    cursor list_employees  return employee%rowtype;
    function age (birth_date in date) return number;
    procedure total_employee_purchase
       (payroll_number in number, total_tools out number,
        total_glasses out number);
  end;
/
