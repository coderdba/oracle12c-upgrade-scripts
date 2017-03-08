set echo on
set pages 1000

spool fileloc

SELECT name FROM v$controlfile;
SELECT file_name FROM dba_data_files;
SELECT group#, member FROM v$logfile;

spool off
