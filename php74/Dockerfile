FROM php:7.4-apache

LABEL version="0.1" maintainer="Dogan Can <dgncan@gmail.com>"

RUN apt-get update && apt-get install -y --fix-missing \
    zlib1g-dev \
    libzip-dev \
    curl \
    wget \
    git-core \
    net-tools \
    vim

# php extensions
RUN docker-php-ext-install \
    pdo_mysql \
    zip

COPY conf/php.ini /usr/local/etc/php/conf.d
COPY conf/000-default.conf /etc/apache2/sites-available/000-default.conf
COPY conf/001-okulistik.conf /etc/apache2/sites-available/001-okulistik.conf
COPY conf/default-ssl.conf /etc/apache2/sites-available/default-ssl.conf

# install composer
WORKDIR /root
RUN wget --output-file=/dev/null https://getcomposer.org/composer.phar && \
    mv composer.phar /bin/composer && \
    chmod 755 /bin/composer

# install mkcert
RUN wget --output-file=/dev/null https://github.com/FiloSottile/mkcert/releases/download/v1.4.1/mkcert-v1.4.1-linux-amd64 && \
    mv mkcert-v1.4.1-linux-amd64 /bin/mkcert && \
    chmod 755 /bin/mkcert && \
    mkcert -install && \
    mkcert www.okulistik.loc

# initialize apache2
WORKDIR /etc/apache2/sites-available/
RUN groupadd apache-www-volume -g 1000 && \
    useradd apache-www-volume -u 1000 -g 1000 && \
    a2enmod proxy && \
    a2enmod rewrite ssl && \
    a2ensite 000-default.conf  && \
    a2ensite 001-okulistik.conf && \
    a2ensite default-ssl.conf

WORKDIR /work
COPY docker-entrypoint.sh /usr/local/bin/

EXPOSE 80 443

#ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["apache2-foreground"]
