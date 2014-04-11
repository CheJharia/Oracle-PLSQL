drop table operation; 
drop table clientaccount; 
drop table typecla;
drop table typeoperation; 
drop table staff;
drop table client;

create table client ( 
	numcli number,
	namecli varchar2(30), 
	firstnamecli varchar2(30), 
	address varchar2(60),
	tel varchar(10)
);
create table staff ( 
	numpers number,
	namepers varchar2(30), 
	firstnamepers varchar2(30), 
	manager number,
	salary number
);
create table typecla ( 
	numtypecla number,
	nametypecla varchar2(30) );
create table clientaccount ( 
	numcli number,
	numccl number,
	numtypecla number,
	dateccl date default sysdate not null, 
	numpers number
);
create table typeoperation ( 
	numtypeoper number,
	nametypeoper varchar2(30) );
create table operation ( 
	numcli number,
	numccl number,
	numoper number,
	numtypeoper number,
	dateoper date default sysdate not null, 
	amountoper number not null,
	libeloper varchar2(30) );

alter table client add (
	constraint pk_client primary key (numcli), constraint ck_telephone check(length(tel)=10)
);

alter table staff add (
	constraint pk_staff primary key (numpers), constraint ck_salary check(salary >= 1254.28)
);

alter table typecla add constraint pk_typecla primary key (numtypecla);

alter table typeoperation add constraint pk_typeoperation primary key (numtypeoper);

alter table clientaccount add (
	constraint pk_clientaccount primary key (numcli, numccl),
	constraint fk_ccl_typecla foreign key (numtypecla) references typecla (numtypecla),
	constraint fk_ccl_client foreign key (numcli) references client (numcli),
	constraint fk_ccl_staff foreign key (numpers) references staff (numpers) 
);

alter table operation add (
	constraint pk_operation primary key (numcli, numccl, numoper), 
	constraint fk_oper_ccl foreign key (numcli, numoper) references clientaccount (numcli, numccl),
	constraint fk_oper_codeoper foreign key (numtypeoper) references typeoperation (numtypeoper),
	constraint montant_operation check(amountoper <> 0 and amountoper >= -1000 and amountoper <= 1000)
);

insert into typecla values ( (select nvl(max(numtypecla), 0) + 1 from typecla ), 'current account');
insert into typecla values ( (select nvl(max(numtypecla), 0) + 1 from typecla ), 'supplement account');
insert into typecla values ( (select nvl(max(numtypecla), 0) + 1 from typecla ), 'pel');
insert into typeoperation values ( (select nvl(max(numtypeoper), 0) + 1 from typeoperation ), 'cash deposit');
insert into typeoperation values ( (select nvl(max(numtypeoper), 0) + 1 from typeoperation ), 'punction');
insert into typeoperation values ( (select nvl(max(numtypeoper), 0) + 1 from typeoperation ), 'transfer'); 
insert into typeoperation values ( (select nvl(max(numtypeoper), 0) + 1 from typeoperation ), 'withdraw');