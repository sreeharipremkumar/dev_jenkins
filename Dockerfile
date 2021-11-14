FROM centos:latest
MAINTAINER SreehariPremkumar
RUN yum -y install httpd
ADD ./website /var/www/html/website
ENTRYPOINT ["/usr/sbin/httpd"] & CMD ["-D", "FOREGROUND"]
EXPOSE 80
