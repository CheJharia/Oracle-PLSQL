Select lower(department_name), upper(last_name), initcap(first_name)
      from department, employee
      where department = fk_department;
