#!/bin/sh
echo "This stage would build docker image and push to dockerhub "

buildnum=$1
sudo docker run -v /home/ubuntu/tomcat/:/var/lib/tomcat7/webapps/myapp -d -p 8081:8080 madhurilalit/javademo:$buildnum
