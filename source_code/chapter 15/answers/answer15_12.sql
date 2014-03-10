Create or replace function saying return varchar2 is
        Begin
           Return 'I am soon to be a PL/SQL function guru';
        End;
/
        Begin
           Dbms_output.put_line (saying);
        End;
/
        Drop function saying.

