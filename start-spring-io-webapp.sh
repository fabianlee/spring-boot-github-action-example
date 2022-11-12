#!/bin/bash
#
# Creates starter Spring Boot App
# https://start.spring.io
#

id="${1:-spring-boot-github-action-example}"
groupId="${2:-org.fabianlee}"
artifact_id=$id
SpringAppClassName=SpringMain
version="1.0.0"
javaVersion=17
springBootVersion=2.7.5

# send parameters that create zip containing SpringBoot project
curl -s https://start.spring.io/starter.tgz \
    -d type=gradle-project \
    -d dependencies=web,prometheus,devtools,actuator \
    -d javaVersion=$javaVersion \
    -d bootVersion=$springBootVersion \
    -d groupId=$groupId \
    -d artifactId=$artifact_id \
    -d name=$SpringAppClassName \
    -d baseDir=$id \
    -d version=$version | tar -xzvf -

# copy this script to directory just created, for posterity
cp $(basename $0) $id/.
