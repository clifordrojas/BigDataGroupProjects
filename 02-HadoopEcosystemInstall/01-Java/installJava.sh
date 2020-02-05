#!/bin/sh

#Ensure Java 
cd /opt

#Get Java 8 
#sudo wget -O jdk-8u221-linux-x64.tar.gz -c --content-disposition "https://javadl.oracle.com/webapps/download/AutoDL?BundleId=239835_230deb18db3e4014bb8e3e8324f81b43"

#Unpack Java 8
#sudo tar -xzvf jdk-8u221-linux-x64.tar.gz

#Remove zip
#sudo rm jdk-8u221-linux-x64.tar.gz

#Move to home dir
cd ~/

# install Java
sudo apt update
sudp apt install openjdk-8-jdk-headless openjre-8-headless
sudo apt install openjdk-8-jdk openjdk-8-jre
#Add to bash profile
sudo ln -s /opt/jdk1.8.0_221/bin/java /usr/bin/java


