# Docker-based Drupal environment

## Introduction

Docker4Drupal is a set of docker images for Drupal. Use docker-compose.yml file from this repository to spin up local environment on Linux, Mac OS X and Windows. 

Read [**Getting Started**](http://docs.docker4drupal.org/en/latest/).

## Bundle

The Drupal bundle consist of the following containers:

| Container | Service name | Image | Public Port | Enabled by default |
| --------- | ------------ | ----- | ----------- | ------------------ |
| Nginx 1.10              | nginx     | [wodby/drupal-nginx](https://github.com/wodby/drupal-nginx/)            | 8000       | ✓ |
| PHP 5.3/5.6/7.0/7.1     | php       | [wodby/drupal-php](https://github.com/wodby/drupal-php/)                |            | ✓ |
| MariaDB 10.1            | mariadb   | [wodby/mariadb](https://github.com/wodby/mariadb/)                      |            | ✓ |
| Redis 3.2               | redis     | [wodby/redis](https://hub.docker.com/wodby/redis)                       |            | ✓ |
| Varnish 4.1             | varnish   | [wodby/drupal-varnish](https://github.com/wodby/drupal-varnish)         | 8004, 8005 |   |
| Apache Solr 5.5/6.3/6.4 | solr      | [wodby/drupal-solr](https://github.com/wodby/drupal-solr)               | 8003       |   |
| phpMyAdmin              | pma       | [phpmyadmin/phpmyadmin](https://hub.docker.com/r/phpmyadmin/phpmyadmin) | 8001       | ✓ |
| Mailhog                 | mailhog   | [mailhog/mailhog](https://hub.docker.com/r/mailhog/mailhog)             | 8002       | ✓ |
| Node.js 7               | node      | [_/node](https://hub.docker.com/_/node)                                 | 3000       |   |
| Memcached               | memcached | [_/memcached](https://hub.docker.com/_/memcached/)                      |            |   |
| Traefik                 | traefik   | [_/traefik](https://hub.docker.com/_/traefik/)                          | 80, 8080   |   |

Supported Drupal versions: 6/7/8.

## Documentation

Full documentation is available at http://docs.docker4drupal.org/.

