#!/bin/bash
# script for file transfer to remote server

#cd
#tar -Rczf Documents/celloscope_pjct.tgz Documents/celloscope_pjct/

#ls

root_dir="`pwd`"
#echo "$root_dir"

cd javawebapp/web/ && gradle clean && gradle build && cd


scp $root_dir/javawebapp/web/build/libs/web.war root@192.168.0.232:/home/ashraful/webapps/

ssh root@192.168.0.232 sh /home/ashraful/server_script.sh


