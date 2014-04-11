drop table person;
create table person(
	numpers number primary key, 
	name varchar2(30) not null, 
	firstname varchar2(30),
	father references person(numpers),
	mother references person(numpers)
);
insert into person values (1, 'de montmirail, dit le hardi', 'godefroy', null, null); 
insert into person values (16, 'et', null, null, null);
insert into person values (2, 'nelson', 'prince rogers', 1, 16);
insert into person values (3, 'bowie', 'david', null, null);
insert into person values (4, 'mercury', 'freddie', null, null); 
insert into person values (13, 'gore', 'tipper', null, null); 
insert into person values (5, 'george', 'bart', 3, 4);
insert into person values (12, 'cersei', 'jamie', null, null); 
insert into person values (6, 'quatro', 'suzi', null, null); 
insert into person values (7, 'may', 'brian', 4, 6);
insert into person values (8, 'dijkstra', 'edger', 2, 13);
insert into person values (9, 'stark', 'eddard', 4, 13);
insert into person values (10, 'bach', 'johann sebastian', 9, 6); 
insert into person values (17, 'lannister', 'cersei', null, null); 
insert into person values (11, 'lannister', 'joffrey', 12, 17); 
insert into person values (15, 'socrates', null, null, null); 
insert into person values (19, 'stark', 'catelyn', null, null); 
insert into person values (20, 'stark', 'robb', 9, 19);
insert into person values (21, 'lannister', 'tyrion', 9, 17); 
insert into person values (14, 'snow', 'john', 9, 6);
insert into person values (18, 'deacon', 'john', 7, 13);