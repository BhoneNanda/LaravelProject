FROM php:7.2-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql

RUN echo http:dl-2.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories

RUN apk --no-cache add shadow && usermod -u 1000 www-data

RUN chown -R www-data:www-data /var/www/html

CMD ["php-fpm"]