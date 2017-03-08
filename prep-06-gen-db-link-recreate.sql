set echo on
set feed off
set lines 200

spool post-db-link-recreate.sql

    SELECT 'CREATE '||DECODE(U.NAME,'PUBLIC','public ')||'DATABASE LINK '||CHR(10)
    ||DECODE(U.NAME,'PUBLIC',Null, 'SYS','',U.NAME||'.')|| L.NAME||chr(10)
    ||'CONNECT TO ' || L.USERID || ' IDENTIFIED BY "'||L.PASSWORD||'" USING
    '''||L.HOST||''''
    ||chr(10)||';' TEXT
    FROM SYS.LINK$ L, SYS.USER$ U
    WHERE L.OWNER# = U.USER#;

spool off

set echo off
set feed on
