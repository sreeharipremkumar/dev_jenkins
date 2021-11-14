FROM centos:latest
MAINTAINER SreehariPremkumar
RUN yum -y install httpd
ADD ./website /var/www/html/website
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd"] & CMD ["-D", "FOREGROUND"]
