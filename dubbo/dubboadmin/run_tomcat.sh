#!/bin/bash

su - tomcat -c "/apps/tomcat/bin/catalina.sh start"
su - tomcat -c "tail -f /etc/hosts"
