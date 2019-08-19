#JDK Base Image
FROM harbor.ccav.tech/java/java-8:jdk-8u202 
LABEL maintainer="lushenle <lushenle@gmail.com>" app="dubboadmin" baseapp="tomcat"

ADD dubboadmin.war  /data/tomcat/webapps/dubboadmin.war
ADD server.xml /apps/tomcat/conf/server.xml
ADD logging.properties /apps/tomcat/conf/logging.properties
ADD catalina.sh /apps/tomcat/bin/catalina.sh
ADD run_tomcat.sh /apps/tomcat/bin/run_tomcat.sh
RUN cd /data/tomcat/webapps && mkdir dubboadmin && unzip dubboadmin.war && rm -rf dubboadmin.war && chown -R tomcat.tomcat /data

EXPOSE 8080 8443

CMD ["/apps/tomcat/bin/run_tomcat.sh"]
