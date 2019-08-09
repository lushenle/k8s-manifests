#JDK Base Image
FROM harbor.ccav.tech/centos/centos:v7.6-1810 
LABEL maintainer="lushenle <lushenle@gmail.com>" app="redis"
ADD redis-4.0.14.tar.gz /usr/local/src
RUN yum repolist && yum install gcc make -y \
  && ln -sv /usr/local/src/redis-4.0.14 /usr/local/redis \
  && cd /usr/local/redis \
  && make \
  && cp src/redis-cli /usr/sbin/ \
  && cp src/redis-server  /usr/sbin/ \
  && mkdir -pv /data/redis-data \
  && rm -rf /usr/local/src/redis-4.0.14 \
  && rm -rf /usr/share/man \
  && rm -rf /var/cache/* \
  && rm -rf /etc/yum.repos.d \
  && rm -rf /usr/share/doc 
ADD redis.conf /usr/local/redis/redis.conf 
ADD run_redis.sh /usr/local/redis/run_redis.sh
EXPOSE 6379
CMD ["/usr/local/redis/run_redis.sh"]
