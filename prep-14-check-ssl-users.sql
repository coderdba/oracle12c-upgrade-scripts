set echo on

spool check-ssl-users

SELECT name FROM sys.user$
     WHERE ext_username IS NOT NULL
     AND password = 'GLOBAL';

spool off

set echo off
