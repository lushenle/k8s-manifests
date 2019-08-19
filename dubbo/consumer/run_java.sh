#!/bin/bash
su - tomcat -c "/apps/dubbo/consumer/bin/start.sh"
tail -f /etc/hosts
