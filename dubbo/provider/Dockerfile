#JDK Base Image
FROM harbor.ccav.tech/java/java-8:jdk-8u202
LABEL maintainer="lushenle <lushenle@gmail.com>" app="dubbo-provider"
RUN yum install net-tools file nc -y \
  && useradd -s /bin/bash -M -d /apps tomcat \
  && mkdir -p /apps/dubbo/provider \
  && rm -rf /var/chache/yum \
  && rm -rf /usr/share/man \
  && rm -rf /usr/share/doc \
  && rm -rf /etc/yum.repos.d/
ADD dubbo-demo-provider-2.1.5/  /apps/dubbo/provider
ADD run_java.sh /apps/dubbo/provider/bin 
RUN chown tomcat.tomcat /apps -R
CMD ["/apps/dubbo/provider/bin/run_java.sh"]
