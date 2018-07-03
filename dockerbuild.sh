#!/bin/sh

echo "This is a Build docker image stage"
dockerPwd=$1
buildnum=$2
sudo docker build -t madhurilalit/javademo:$buildnum .
sudo docker login --username madhurilalit --password $dockerPwd
sudo docker push madhurilalit/javademo:$buildnum