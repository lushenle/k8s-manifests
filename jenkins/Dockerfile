#Jenkins Version 2.164.3
FROM harbor.ccav.tech/java/java-8:jdk-8u202
LABEL maintainer="lushenle <lushenle@gmail.com>" app="jenkins"
ADD jenkins-2.164.3.war /apps/jenkins/
ADD run_jenkins.sh /usr/bin/
EXPOSE 8080 
CMD ["/usr/bin/run_jenkins.sh"]
