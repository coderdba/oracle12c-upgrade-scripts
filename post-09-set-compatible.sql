set echo on

ALTER SYSTEM SET COMPATIBLE = '12.0.0' SCOPE=SPFILE;

shutdown;
startup;

set echo off
