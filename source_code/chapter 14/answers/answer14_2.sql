set serveroutput on
begin <<sections>>
        goto section3;
       <<section1>>
       dbms_output.put_line ('Section 1');
       goto section4;
       <<section2>>
       dbms_output.put_line ('Section 2');
       goto section1;
       <<section3>>
       dbms_output.put_line ('Section 3');
       goto section2;
       <<section4>>
       dbms_output.put_line ('Section 4');
end b_label;
/ 
