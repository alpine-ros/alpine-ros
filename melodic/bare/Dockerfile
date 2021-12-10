FROM alpine:3.8.5

ENV ALPINE_VERSION=3.8

RUN echo "http://alpine-ros.seqsense.org/v${ALPINE_VERSION}/backports" >> /etc/apk/repositories \
  && echo "http://alpine-ros.seqsense.org/v${ALPINE_VERSION}/ros/melodic" >> /etc/apk/repositories \
  && echo $'-----BEGIN PUBLIC KEY-----\n\
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAnSO+a+rIaTorOowj3c8e\n\
5St89puiGJ54QmOW9faDsTcIWhycl4bM5lftp8IdcpKadcnaihwLtMLeaHNJvMIP\n\
XrgEEoaPzEuvLf6kF4IN8HJoFGDhmuW4lTuJNfsOIDWtLBH0EN+3lPuCPmNkULeo\n\
iS3Sdjz10eB26TYiM9pbMQnm7zPnDSYSLm9aCy+gumcoyCt1K1OY3A9E3EayYdk1\n\
9nk9IQKA3vgdPGCEh+kjAjnmVxwV72rDdEwie0RkIyJ/al3onRLAfN4+FGkX2CFb\n\
a17OJ4wWWaPvOq8PshcTZ2P3Me8kTCWr/fczjzq+8hB0MNEqfuENoSyZhmCypEuy\n\
ewIDAQAB\n\
-----END PUBLIC KEY-----' > /etc/apk/keys/builder@alpine-ros-experimental.rsa.pub

ENV LANG C.UTF-8
ENV LC_ALL C.UTF-8
RUN mkdir -p /usr/lib/python2.7/site-packages/ \
  && echo -e "import sys\nsys.setdefaultencoding('utf-8')" > /usr/lib/python2.7/site-packages/sitecustomize.py

ENV ROS_DISTRO melodic

COPY ros_entrypoint.sh /
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["sh"]
