FROM mysql:latest
MAINTAINER Maintained by IT Trailblazers
ENV MYSQL_ROOT_PASSWORD some_password
ENV MYSQL_DATABASE drupal
ENV MYSQL_USER drupal
ENV MYSQL_PASSWORD drupal
RUN apt-get update && apt-get install -y git
CMD ["mysqld"]
