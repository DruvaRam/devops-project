#!/bin/bash
set -e
sudo apt-get update -y
sudo apt-get install default-jdk -y
echo "JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java" | sudo tee /etc/environment
source /etc/environment
sudo apt-get install maven -y
mvn -version
sudo apt-get install unzip -y
wget https://services.gradle.org/distributions/gradle-4.6-bin.zip
sudo mkdir /opt/gradle
sudo unzip gradle-4.6-bin.zip -d /opt/gradle
echo "export PATH=$PATH:/opt/gradle/gradle-4.6/bin" | sudo tee /etc/environment
source /etc/environment
gradle -v
sudo apt-get install git -y
echo "Success"
