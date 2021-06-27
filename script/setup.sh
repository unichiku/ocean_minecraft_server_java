#!/bin/sh

rpm --import https://yum.corretto.aws/corretto.key 
curl -L -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo
yum install -y java-16-amazon-corretto-devel

yum install -yt git

mkdir minecraft
cd minecraft

wget https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
java -jar BuildTools.jar --rev 1.17
find . | grep -v 'spigot-1.17.jar' | xargs rm -rf

java -Xmx2048M -Xms2048M -jar spigot-1.17.jar nogui
