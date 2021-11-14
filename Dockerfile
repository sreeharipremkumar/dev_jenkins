FROM centos:latest
MAINTAINER NewstarCorporation
RUN yum -y install httpd
COPY ./website/index.html /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/httpd"] & CMD ["-D", "FOREGROUND"]
