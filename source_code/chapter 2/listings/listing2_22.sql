alter table consultant_projects
  add primary key (employee_id, project_name);
alter table consultant_projects 
  modify project_name varchar2(20) not null;
alter table consultant_projects
  disable primary key;
alter table consultant_projects
  enable primary key;
alter table consultant_projects
  drop primary key;
