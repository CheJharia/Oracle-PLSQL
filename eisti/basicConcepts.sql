-- why use pl/sql?
-- to allow procedural programming with sql because:
--  sql has no loops, conditional test, etc

-- pl := procedural language

-- example: outputting a message to console
set serveroutput on;
declare
  -- declaring a structure
    type point is record(
        xcoor number,
        ycoor number
        );
    p point;
    message1 varchar2(20) :='hello world!';
    pi constant number := 3.141592654;
  -- user-defines subtypes
    subtype name is varchar2(20);
    subtype message2 is varchar2(100);
  -- declare two variables of user-defined subtypes
    salutation name;
    greeting message2;
  -- store sql result in a variable
    salaryaverage number;
begin
    salutation := 'afiq!';
    greeting := 'welcome to the world of pl/sql';
    p.xcoor := 1;
    p.ycoor := 3;

  dbms_output.put_line(message1);
  dbms_output.put_line('pi is ' || pi);
  dbms_output.put_line('hello ' || salutation || ' ' || greeting);
  dbms_output.put_line('point p is at (' || p.xcoor || ',' || p.ycoor ||')');

  -- calculate average salary
  select avg(wages) into salaryaverage from employee;
  dbms_output.put_line('the average salary of table employee is ' || round(salaryaverage,2));

  -- control structures 
  -- conditionals
  if salaryaverage < 5000
  then
    dbms_output.put_line('we should get more salary!!');
  else
    dbms_output.put_line('we are rich!');
  end if;
  -- loops
  while salaryaverage > 5000 loop
    dbms_output.put_line('we have an economic crisis!');
    salaryaverage := salaryaverage - 1000;
  end loop;
    dbms_output.put_line('we have become poor :(');
  for count in 1..5 loop
    salaryaverage := salaryaverage + 1000; 
    dbms_output.put_line('Profit for this month is ' || salaryaverage || ' kaching, kaching!'); 
  end loop;
end;