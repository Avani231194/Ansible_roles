#!/bin/bash

/usr/bin/mysql -e "show master status"  > mysqloutput
#echo "which mysql" -e "show master status"  > mysqloutput
