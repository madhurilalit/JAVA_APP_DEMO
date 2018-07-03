#!/bin/sh
#This stage would build docker image and push to dockerhub####

buildnum=$1
dockerRunningContainerId=$(sudo docker ps | grep 8081 | sudo docker ps -q)
#echo dockerRunningContainerId =$dockerRunningContainerId

sudo docker stop $dockerRunningContainerId
sudo docker run -v /home/ubuntu/tomcat/:/var/lib/tomcat7/webapps/myapp -d -p 8081:8080 madhurilalit/javademo:$buildnum

exitstatus=$?

if [ $exitstatus -eq 0 ];then
   echo " Container started successfully"
else
   echo "Container start has issue. Please check the logs."
   exit 1
fi
