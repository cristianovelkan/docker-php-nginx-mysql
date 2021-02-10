FROM php:7.4-fpm-alpine

# laravel packages
RUN docker-php-ext-install tokenizer mysqli pdo_mysql

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

#install nano
RUN apk add nano

#copy php ini
RUN cp /usr/local/etc/php/php.ini-development /usr/local/etc/php/php.ini

#optional install: imagick for php
#RUN apk add --no-cache --virtual .phpize-deps $PHPIZE_DEPS imagemagick-dev libtool \
#  && export CFLAGS="$PHP_CFLAGS" CPPFLAGS="$PHP_CPPFLAGS" LDFLAGS="$PHP_LDFLAGS" \
#  && pecl install imagick-3.4.3 \
#  && docker-php-ext-enable imagick \
#  && apk add --no-cache --virtual .imagick-runtime-deps imagemagick \
#  && apk del .phpize-deps
