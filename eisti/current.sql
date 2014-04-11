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
						    cnum*100, 
						    'Current account');
	end loop;
end;