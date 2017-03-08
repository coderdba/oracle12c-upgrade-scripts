set echo on

SELECT local_tran_id FROM dba_2pc_pending;
EXECUTE dbms_transaction.purge_lost_db_entry('');
COMMIT;

set echo off
