set serveroutput on

spool /home/oracle/scripts/drop_users.log

call sys.drop_users_after_day(sysdate - 11) ;

spool off;

exit
