FROM centos:latest
MAINTAINER SreehariPremkumar
RUN yum install httpd -y
ADD ./website /var/www/html/website
EXPOSE 80
CMD ["/usr/sbin/httpd","-D", "FOREGROUND"]
