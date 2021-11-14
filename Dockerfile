ROM centos:latest
MAINTAINER NewstarCorporation
RUN yum -y install httpd
COPY ./website/index.html /var/www/html/
CMD [“/usr/sbin/httpd”, “-D”, “FOREGROUND”]
EXPOSE 80
