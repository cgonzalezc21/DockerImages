FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update ; apt install -y python3 python3-pip supervisor apache2 openssl mysql-server openssh-server 
RUN mkdir /run/sshd
COPY 000-default.conf /etc/apache2/000-default.conf
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf


