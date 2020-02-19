FROM centos:7
MAINTAINER Nagendra
RUN yum -y update 
RUN yum -y install httpd git
RUN yum install -y java-1.8.0-openjdk-headless && \
    /usr/bin/ssh-keygen -A && \
    useradd -u 1000 -m -s /bin/bash jenkins -G wheel && \
    echo "jenkins:jenkins" | chpasswd && \
    mkdir /home/jenkins/.m2
COPY .ssh/authorized_keys /home/jenkins/.ssh/authorized_keys
RUN chown -R jenkins:jenkins /home/jenkins/.m2/ && \
    chown -R jenkins:jenkins /home/jenkins/.ssh/
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
