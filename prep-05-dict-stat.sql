set echo on

exec dbms_stats.gather_dictionary_stats;

set echo off
