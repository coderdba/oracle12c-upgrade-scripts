set echo on

SELECT dbms_stats.get_prefs('CONCURRENT') from dual;

-- SET THIS TRUE/FALSE AS NEEDED
BEGIN 
DBMS_STATS.SET_GLOBAL_PREFS('CONCURRENT','FALSE'); 
END; 
/

SELECT dbms_stats.get_prefs('CONCURRENT') from dual;

set echo off
