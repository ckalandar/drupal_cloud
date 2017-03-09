FROM drupal:8.2-apache
MAINTAINER Seshagiri Sriram (SeshagiriSriram@gmail.com)
ENV MYSQL_ROOT_PASSWORD some_random_password
ENV MYSQL_DATABASE drupal
ENV MYSQL_USER drupal
ENV MYSQL_PASSWORD drupal
ENV MYSQL_HOST 172.17.0.2
EXPOSE 80 22 
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('SHA384', 'composer-setup.php') === '669656bab3166a7aff8a7506b8cb2d1c292f042046c5a994c43155c0be6190fa0355160742ab2e1c88d40d5be660b410') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php && php -r "unlink('composer-setup.php');"
RUN cp composer.phar /usr/local/bin/composer && composer global require drush/drush
RUN set -ex; \
# gpg: key 5072E1F5: public key "MySQL Release Engineering <mysql-build@oss.oracle.com>" imported
key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; \
export GNUPGHOME="$(mktemp -d)"; \
gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; \
gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; \
rm -r "$GNUPGHOME"; \
apt-key list > /dev/null

ENV MYSQL_MAJOR 5.7
ENV MYSQL_VERSION 5.7.17-1debian8

RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
RUN apt-get update && apt-get install -y mysql-community-client
RUN mysql -u root --password=$MYSQL_ROOT_PASSWORD --host=$MYSQL_HOST -e "drop database drupal; CREATE DATABASE drupal; GRANT ALL ON drupal.* TO 'drupal'@'%';"
ADD settings.php.default /tmp
#ADD docker-php-entrypoint /usr/local/bin
CMD ["/tmp/runcode.sh"] 
CMD ["docker-php-entrypoint", "/usr/sbin/apache2ctl","-D FOREGROUND"]
