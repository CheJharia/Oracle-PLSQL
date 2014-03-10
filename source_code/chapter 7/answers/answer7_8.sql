Select last_name, first_name, 
      Round((months_between(min(purchase_date), birth_date))/12,0) age
From employee, glasses
Where payroll_number = fk_payroll_number
Group by last_name, first_name, birth_date;
