-- exercise 0.1
-- write a program that says 'goodbye'
set serveroutput on;
host clear
declare
    message varchar2(20) := 'goodbye';
    a number := 10;
    b number := 20;
    c number := a + b;
    f number := 70 / 30;
    -- global variables
    num1 number := 95;
    num2 number := 85;
begin
	dbms_output.put_line(message);
	dbms_output.put_line(a);
	dbms_output.put_line(b);
	dbms_output.put_line('value of c: '||c);
	dbms_output.put_line('value of f: '||f);
	dbms_output.put_line('Global variable num1: '||num1);
	dbms_output.put_line('Global variable num2: '||num2);
	declare
	-- local variables
    num1 number := 95;
    num2 number := 85;	
	begin
	dbms_output.put_line('Local variable num1: '||num1);
	dbms_output.put_line('Local variable num2: '||num2);
	end;
end;

-- exercise 0.4
create table customers(
	id int not null,
	name varchar2(20) not null,
	age int not null,
	address varchar2(20),
	salary decimal (18,2),
	primary key(id)
	)

insert into customers (id, name, age, address, salary) values(1, 'Ramesh', 32, 'Ahmedabad', 2000.00);
insert into customers (id, name, age, address, salary) values(2, 'Khilan', 25, 'Delhi', 1500.00);
insert into customers (id, name, age, address, salary) values(3, 'Kaushik', 23, 'Kota', 2000.00);
insert into customers (id, name, age, address, salary) values(4, 'Chaitali', 25, 'Mumbai', 6500.00);
insert into customers (id, name, age, address, salary) values(5, 'Hardik', 27, 'Bhopal', 8500.00);
insert into customers (id, name, age, address, salary) values(6, 'Komal', 22, 'MB', 4500.00);

declare
	vname varchar2(20);
	vaddress varchar2(20);
	vsalary number;
begin
    select name, address, salary into vname, vaddress, vsalary
    from customers where id = 2;
    dbms_output.put_line('Customer '||vname||' from '||vaddress||' earns ' || vsalary);
end;


-- exercise 0.5
declare
   a number:=100;
begin
	if a < 20
	then
		dbms_output.put_line('a is less than 20');
		dbms_output.put_line('a is ' || a);
	else
		dbms_output.put_line('a is not less than 20');	
		dbms_output.put_line('a is ' || a);
	end if;
end;


-- exercise 0.6
declare
	grade varchar2(1):='A';
begin
  	case grade
		when 'A' then dbms_output.put_line('Excellent'); 
		when 'B' then dbms_output.put_line('Very good'); 
		when 'C' then dbms_output.put_line('Good'); 
		when 'D' then dbms_output.put_line('Pass'); 
		else dbms_output.put_line('Grade unknown'); 
	end case;
end;


-- exercise 0.7
declare
	val number := 10;
begin
	for num in 1..10 loop
		dbms_output.put_line(val); 
		val := val + 10
		exit when val > 60;
	end loop;
	dbms_output.put_line('After exit val is: '|| val);
end;


















