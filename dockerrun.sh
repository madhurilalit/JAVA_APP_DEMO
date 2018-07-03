#!/bin/sh
echo "This is a Application Run "

buildnum=$1
sudo docker run -v /home/ubuntu/tomcat/:/var/lib/tomcat7/webapps/myapp -d -p 8081:8080 madhurilalit/javademo:$buildnum