FROM eeacms/varnish:latest
MAINTAINER Maintained by IT Trailblazers
#ENV ADDRESS_PORT 6081 
#ENV ADMIN_PORT 6082 
#ENV DNS_ENABLED false 
#ENV BACKENDS ec2-52-77-233-238.ap-southeast-1.compute.amazonaws.com:8000
RUN set -ex \
&& buildDeps=' \
git \
vim \
' \
&& apt-get update && apt-get install -y --no-install-recommends $buildDeps && rm -rf /var/lib/apt/lists/* && ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime
EXPOSE 6081
COPY default.vcl /etc/varnish/default.vcl
