FROM centos:latest
MAINTAINER Rohini Nere
LABLE name=Rohini\
      email=rohini.nere77@gmail.com	
RUN yum install httpd -y
RUN whoim  & printenv
COPY index.html /var/www/html/
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
