#!/bin/sh
su - tomcat -c "/apps/dubbo/provider/bin/start.sh"
tail -f /etc/hosts
