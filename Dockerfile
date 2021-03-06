FROM webcenter/rancher-stack-base:latest

MAINTAINER Sebastien LANGOUREAUX <linuxworkgroup@hotmail.com>

ENV GLUSTER_VOLUME dbvol

RUN mkdir -p /var/lib/postgresql/data

VOLUME ["/var/log/postgresql", "/var/run/postgresql", "/var/lib/postgresql/data"]

CMD [ "mount -t glusterfs storage:${ENV GLUSTER_VOLUME} /var/lib/postgresql/data" ]
