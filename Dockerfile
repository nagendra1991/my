FROM centos:7
MAINTAINER The CentOS Project <cloud-ops@centos.org>
RUN yum install -y update git httpd
EXPOSE 80

# Simple startup script to avoid some issues observed with container restart
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]
