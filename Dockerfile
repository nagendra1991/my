FROM centos:7
MAINTAINER Nagendra
RUN yum -y update 
RUN yum -y install httpd \
    git \
#install node.js
RUN yum install -y gcc-c++ make \
    curl -sL https://rpm.nodesource.com/setup_13.x | sudo -E bash - \
RUN yum install nodejs
