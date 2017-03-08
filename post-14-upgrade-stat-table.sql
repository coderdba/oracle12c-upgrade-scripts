set echo on

EXECUTE DBMS_STATS.UPGRADE_STAT_TABLE('SYS','dictstattab');

set echo off
