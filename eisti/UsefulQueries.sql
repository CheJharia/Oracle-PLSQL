-- get the first day of the month
select trunc (sysdate, 'month') "first day of current month"
	from dual;
-- get the last day of the month
select trunc (last_day (sysdate)) "last day of current month"
	from dual;
-- get the first day of the year
select trunc (sysdate, 'year') "year first day" 
	from dual;	
-- get the last day of the year
select add_months (trunc (sysdate, 'year'), 12) - 1 "year last day" 
	from dual
-- get the number of days in current month
select cast (to_char (last_day (sysdate), 'dd') as int) number_of_days
  from dual;

-- get the number of days left in current month
select sysdate,
       last_day (sysdate) "last",
       last_day (sysdate) - sysdate "days left"
  from dual;

 -- get the number of days between two dates
 select round ( (months_between ('01-feb-2014', '01-mar-2012') * 30), 0)
          num_of_days
  from dual;
 
select trunc(sysdate) - trunc(e.hire_date) from employees;

-- display each months start and end date upto last month
--  of the year
select add_months (trunc (sysdate, 'month'), i) start_date,
       trunc (last_day (add_months (sysdate, i))) end_date
  from xmltable (
          'for $i in 0 to xs:int(d) return $i'
          passing xmlelement (
                     d,
                     floor (
                        months_between (
                           add_months (trunc (sysdate, 'year') - 1, 12),
                           sysdate)))
          columns i integer path '.');

-- check whether a table exists
select table_name
  from user_tables
 where table_name = 'table_name';

-- check whether a column exists in a table
select column_name as found
  from user_tab_cols
 where table_name = 'table_name' and column_name = 'column_name';

-- showing the table structure
select dbms_metadata.get_ddl ('table', 'table_name', 'user_name') from dual;

-- find the actual size of a database
select sum (bytes) / 1024 / 1024 / 1024 as gb from dba_data_files;

-- convert number to words
select to_char (to_date (1526, 'j'), 'jsp') from dual;
-- output: one thousand five hundred twenty-six

-- find string in package source code: find a particular procedure/function
--  from all the source code
select *
  from dba_source
 where upper (text) like '%foo_something%'
and owner = 'user_name';

-- convert comma separated values into table
with csv
     as (select 'aa,bb,cc,dd,ee,ff'
                   as csvdata
           from dual)
    select regexp_substr (csv.csvdata, '[^,]+', 1, level) pivot_char
      from dual, csv
connect by regexp_substr (csv.csvdata,'[^,]+', 1, level) is not null;

--generate random number between 0 and 100
select round (dbms_random.value () * 100) + 1 as random_num from dual;

-- select random rows 
select column from
( select column from table
order by dbms_random.value )
where rownum <= 10

--  generate random data
select     level                                                       empl_id,
           mod (rownum, 50000)                                         dept_id,
           trunc (dbms_random.value (1000, 500000), 2)                 salary,
           decode (round (dbms_random.value (1, 2)), 1, 'm', 2, 'f')   gender,
           to_date (   round (dbms_random.value (1, 28))
                    || '-'
                    || round (dbms_random.value (1, 12))
                    || '-'
                    || round (dbms_random.value (1900, 2010)),
                    'dd-mm-yyyy'
                   )                                                   dob,
           dbms_random.string ('x', dbms_random.value (20, 50))        address
      from dual
connect by level < 10000;