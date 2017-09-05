#!/bin/bash
echo -e "Restarting old running instancees of apps\n"
echo "Restarting admin_python\n"
echo -e "Stopping process pid `ps -ef | grep "python /home/admin_python/manage.py runserver" |grep -v grep | awk {'print $2'}`\n"
ps -ef | grep "python /home/admin_python/admin_python/manage.py runserver" |grep -v grep | awk {'print $2'} | xargs kill -9
cd /home/admin_python/admin_python/
source /home/admin_python/admin_python/env/bin/activate
echo -e "\nStarting new instance of app"
nohup python /home/admin_python/admin_python/manage.py runserver 0.0.0.0:8000 &
