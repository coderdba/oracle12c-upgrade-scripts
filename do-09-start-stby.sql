set echo on
startup mount;
alter database recover managed standby database using current logfile disconnect from session;

set echo off
