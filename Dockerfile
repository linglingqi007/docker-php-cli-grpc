FROM php:7.3-cli-alpine

COPY --from=composer:1.8.0 /usr/bin/composer /usr/local/bin/composer

RUN apk update && apk add --no-cache git curl libzip-dev build-base autoconf automake libtool \
    && docker-php-ext-install sockets zip \
    && pecl install grpc-1.19.0 \
    && pecl install xdebug-2.7.0 \
    && pecl install protobuf-3.7.0 \
    && docker-php-ext-enable grpc xdebug protobuf
