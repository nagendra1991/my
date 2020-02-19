FROM centos:7
MAINTAINER Nagendra
RUN yum -y update 
RUN yum -y install httpd git
RUN yum install -y java-1.8.0-openjdk-headless
