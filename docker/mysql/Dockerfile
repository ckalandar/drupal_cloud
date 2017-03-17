FROM mysql:latest
MAINTAINER Maintained by IT Trailblazers
ENV MYSQL_ROOT_PASSWORD some_password
ENV MYSQL_DATABASE drupal
ENV MYSQL_USER drupal
ENV MYSQL_PASSWORD drupal
RUN apt-get update && apt-get install -y git && ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf
VOLUME /var/lib/mysql
#ADD ./extra.txt /tmp
#RUN cat /tmp/extra.txt >> /etc/mysql/my.cnf
EXPOSE 3306
CMD ["mysqld"]
