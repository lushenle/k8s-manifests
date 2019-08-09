#!/bin/bash
cd /apps/jenkins && java -server -Xms1024m -Xmx1024m -Xss512k -jar jenkins-2.164.3.war --webroot=/apps/jenkins/jenkins-data --httpPort=8080
