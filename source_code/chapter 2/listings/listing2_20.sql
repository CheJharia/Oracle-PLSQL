create table consultant_projects
(employee_id       	number references consultant,
 project_name      	varchar(20),
 est_completion_date  	date);
