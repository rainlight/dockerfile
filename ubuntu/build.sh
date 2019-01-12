#!/bin/bash
DIR=$(cd .;pwd)
TMP=${DIR}/tmp

# Add config file
rm -rf $TMP && mkdir -p $TMP
cp conf/pip.conf $TMP/
cp conf/sources.list $TMP/

cp Dockerfile.1604 $TMP/Dockerfile
cd $TMP
docker build . -t base:1604
cd $DIR

rm -rf $TMP
