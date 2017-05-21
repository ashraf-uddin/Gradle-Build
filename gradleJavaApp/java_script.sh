#!/bin/bash
# make distribution file using gradle and run a java application 


cd javaapp/ && gradle clean && gradle distzip

cd build/distributions/ && unzip -q javaapp.zip 
echo "unzip distributions folder successfully."
echo -e "*****************************************\n"

cd javaapp/bin/ && ./javaapp




