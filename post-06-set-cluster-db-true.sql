set echo on

alter system set cluster_database=TRUE scope=spfile;
shutdown immediate;

set echo off
