FROM fedora:latest

RUN yum install -y tar gzip

RUN yum install -y ansible
