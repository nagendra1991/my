FROM centos:7
MAINTAINER Nagendra
RUN yum -y update 
RUN yum -y install httpd git
RUN yum install -y java-1.8.0-openjdk-headless
    useradd jenkins && \
    yum install sudo -y && \
    echo "jenkins        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
