FROM mysql:latest
MAINTAINER Maintained by IT Trailblazers
ENV MYSQL_ROOT_PASSWORD some_random_password
ENV MYSQL_DATABASE drupal
ENV MYSQL_USER drupal
ENV MYSQL_PASSWORD drupal
RUN apt-get update && apt-get install -y git
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf
VOLUME /var/lib/mysql
EXPOSE 3306
CMD ["mysqld"]
