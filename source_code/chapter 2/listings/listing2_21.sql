create table consultant_projects
(employee_id       	number,
 project_name      	varchar(20),
 est_completion_date  	date,
 foreign key (employee_id)
 references consultant (employee_id) on delete cascade,
 primary key (employee_id, project_name));
