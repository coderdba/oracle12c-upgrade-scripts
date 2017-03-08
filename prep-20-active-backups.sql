set echo on

prompt ENSURE NO ACTIVE BACKUPS ARE PRESENT

SELECT * FROM v$backup WHERE status != 'NOT ACTIVE';

set echo off
