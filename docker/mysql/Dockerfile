FROM mysql:latest
MAINTAINER Seshagiri Sriram (SeshagiriSriram@gmail.com)
ENV MYSQL_ROOT_PASSWORD some_random_password
ENV MYSQL_DATABASE drupal
ENV MYSQL_USER drupal
ENV MYSQL_PASSWORD drupal
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf
CMD ["mysqld"]
