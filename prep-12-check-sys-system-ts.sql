set echo on

SELECT username, default_tablespace
     FROM dba_users
     WHERE username in ('SYS','SYSTEM');

set echo off
