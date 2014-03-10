Select lpad(department_name, 20, '#'), rpad(last_name, 25, '-')
From department, employee
Where department = fk_department; 
