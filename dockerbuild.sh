#!/bin/sh

echo "This is a Build docker image stage"
dockerPwd=$1
echo $dockerPwd
sudo docker build -t madhurilalit/javademo:1.0 .
sudo docker login --username madhurilalit --password $dockerPwd
sudo docker push madhurilalit/javademo:1.0