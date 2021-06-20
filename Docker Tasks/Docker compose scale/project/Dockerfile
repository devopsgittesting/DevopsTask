FROM centos:7
RUN echo "file crease using compose">compose.txt
RUN yum install httpd -y
CMD ["/usr/sbin/httpd","-D","FOREGROUND"] 
