FROM php:apache

RUN apt-get update && apt-get install cowsay -y

ENV PATH="/usr/games:${PATH}" 

COPY virtualhost.conf /etc/apache2/sites-enabled/000-default.conf

RUN a2enmod rewrite

RUN docker-php-ext-install pdo pdo_mysql