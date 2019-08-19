#JDK Base Image
FROM harbor.ccav.tech/java/java-8:jdk-8u202 
LABEL maintainer="lushenle <lushenle@gmail.com>" app="dubbo-consumer"
RUN yum install file nc -y \
  && mkdir -p /apps/dubbo/consumer \
  && useradd -s /bin/bash -M -d /apps tomcat \
  && rm -rf /var/chache/yum \
  && rm -rf /usr/share/man \
  && rm -rf /usr/share/doc \
  && rm -rf /etc/yum.repos.d/
ADD dubbo-demo-consumer-2.1.5  /apps/dubbo/consumer
ADD run_java.sh /apps/dubbo/consumer/bin 
RUN chown tomcat.tomcat /apps -R

CMD ["/apps/dubbo/consumer/bin/run_java.sh"]
