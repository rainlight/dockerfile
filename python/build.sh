#!/bin/bash

DIR=$(cd .;pwd)
TMP=${DIR}/tmp

# Add config file
rm -rf $TMP && mkdir -p $TMP
cp conf/pip.conf $TMP/
cp conf/sources.list $TMP/

cp Dockerfile.py36 $TMP/Dockerfile
cd $TMP
docker build . -t 192.168.1.100:5000/python:36
docker push 192.168.1.100:5000/python:36
cd $DIR

cp Dockerfile.py35 $TMP/Dockerfile
cd $TMP
docker build . -t 192.168.1.100:5000/python:35
docker push 192.168.1.100:5000/python:35
cd $DIR

cp Dockerfile.py27 $TMP/Dockerfile
cd $TMP
docker build . -t 192.168.1.100:5000/python:27
docker push 192.168.1.100:5000/python:27
cd $DIR

rm -rf $TMP
