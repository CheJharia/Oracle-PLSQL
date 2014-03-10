set serveroutput on
begin <<b_label>>
    goto middle;
    <<top>>
    dbms_output.put_line ('Top Statement');
    goto bottom;
    <<middle>>
    dbms_output.put_line ('Middle Statement');
    goto top;
    <<bottom>>
    dbms_output.put_line ('Bottom Statement');
end b_label;
/
