#!/bin/bash

#Configurações do Oracle
export TMP=/tmp
export TMPDIR=$TMP

export ORACLE_HOSTNAME=(nome_servidor)
export ORACLE_BASE=/u01/app/oracle
export ORACLE_HOME=$ORACLE_BASE/product/12.2.0/dbhome_1
export ORACLE_SID=cliente

export PATH=/usr/sbin:$PATH
export PATH=$ORACLE_HOME/bin:$PATH

export LD_LIBRARY_PATH=$ORACLE_HOME/lib:/lib:/usr/lib
export CLASSPATH=$ORACLE_HOME/jlib:$ORACLE_HOME/rdbms/jlib

sqlplus -S / as sysdba @/home/oracle/scripts/drop_users.sql

