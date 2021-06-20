FROM centos:7
MAINTAINER Pravin Sidwadkar
RUN yum install httpd -y
COPY index.html /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"] 
