set echo on

EXECUTE DBMS_STATS.GATHER_FIXED_OBJECTS_STATS;

set echo off
