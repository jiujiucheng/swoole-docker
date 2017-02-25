FROM  php:7.1-cli 
MAINTAINER edwin
# install program  into the image
RUN apt-get update
RUN pecl install redis \
&& pecl install swoole  \ 
&& docker-php-ext-enable redis \
&& docker-php-ext-enable swoole
