-- exceptions
-- 4 types of exception:
	-- identified and pre-defined by oracle
	-- user identified and defined by user
	-- anonymous and pre-defined by oracle
	-- anonymous and defined by user

-- exercise 0.1, 0.2
create table customers( id int not null,
name varchar (20) not null, age int not null,
address char (25),
salary decimal (18, 2),
primary key (id) );

insert into customers (id,name,age,address,salary) values (1, 'ramesh', 32, 'ahmedabad', 2000.00 );
insert into customers (id,name,age,address,salary) values (2, 'khilan', 25, 'delhi', 1500.00 );
insert into customers (id,name,age,address,salary) values (3, 'kaushik', 23, 'kota', 2000.00 );
insert into customers (id,name,age,address,salary) values (4, 'chaitali', 25, 'mumbai', 6500.00 );
insert into customers (id,name,age,address,salary) values (5, 'hardik', 27, 'bhopal', 8500.00 );
insert into customers (id,name,age,address,salary) values (6, 'komal', 22, 'mp', 4500.00 );

declare
-- variables
	cname customers.name%type;
	csalary customers.salary%type;
	cid customers.id%type := 19;
-- exception
	negative_id exception;
begin
	if cid < 0 then raise negative_id; end if;
	select name, salary
		into cname, csalary
		from customers
		where id = cid;
    dbms_output.put_line(cname || ' ' || cid);
exception
	when no_data_found then
		dbms_output.put_line('no such customer !');
	when negative_id then
		dbms_output.put_line('id must be greater than zero');
end;

-- exercise 1.1
-- copy name, firstname from table person into table client;
declare
-- variables
	pcount number;
	pname person.name%type;
	pfname person.firstname%type;
begin
	select count(*) into pcount from person;
	for i in 1..pcount loop
		select name, firstname
			into pname, pfname
			from person
			where numpers = i;
		insert into client (numcli, namecli, firstnamecli)
					values (i, pname, pfname);
	end loop;
end;
-- verification
select * from client;

-- exercise 1.2
declare
-- variables
	cnumcli client.numcli%type;
	cname client.namecli%type;
	cfname client.firstnamecli%type;
begin
	select numcli, namecli, firstnamecli
		into cnumcli, cname, cfname
		from client
		where numcli = 
			(select max(numcli) from client);
	insert into staff (numpers, namepers, firstnamepers)
				values (cnumcli, cname, cfname);
end;
-- verif
select * from staff;


-- exercise 1.3
declare
-- variables
	cnum client.numcli%type;
	cname client.namecli%type;
	cfname client.firstnamecli%type;
	pnum person.numpers%type;
	otype typeoperation.nametypeoper%type := 'cash deposit';
	onumtype typeoperation.numtypeoper%type;

  staffnum staff.numpers%type;
	ncli number;
begin
  	-- get staff number(the one who makes the operations)
  select max(numpers) into staffnum from staff;
	-- get operation id
	select numtypeoper into onumtype
		from typeoperation
		where nametypeoper = otype;
	-- open account
	select count(*) into ncli from client;
	for i in 1..ncli loop
		select numcli, namecli, firstnamecli
			into cnum, cname, cfname
			from client
			where numcli = i;
		insert into clientaccount(numcli, numccl, numtypecla, dateccl, numpers)
					values(cnum,
                (select nvl(max(numccl), 0)+1 from clientaccount),
                onumtype,
                sysdate,
                staffnum);
		insert into operation(numcli, numccl, numoper, numtypeoper, dateoper, amountoper, libeloper)
					values(cnum, 
						   (select nvl(max(numccl), 0) from clientaccount), 
						   (select nvl(max(numoper), 0)+1 from operation),
						    onumtype,
						    sysdate,
						    staffnum*10, 
						    'Current account');
	end loop;
	exception
	when no_data_found then
		dbms_output.put_line('Data not found');
end;
-- verif
select * from operation;
