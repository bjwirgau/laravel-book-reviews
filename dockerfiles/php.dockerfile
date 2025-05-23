FROM php:8.2-fpm

WORKDIR /var/www/html

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug \
    && docker-php-ext-install pdo pdo_mysql
