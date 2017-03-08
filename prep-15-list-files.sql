spool prep-list-files

set echo on

SELECT name FROM v$controlfile;
SELECT file_name FROM dba_data_files;
SELECT group#, member FROM v$logfile;

set echo off

spool off
