FROM composer:latest AS composer

FROM php:8.4-cli
RUN apt-get update && \
    apt-get install -y \
        wget \
        git \
        unzip \
        libzip-dev \
        libicu-dev \
        libpq-dev \
        libonig-dev \
        libssl-dev && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean
# Install Composer
COPY --from=composer /usr/bin/composer /usr/local/bin/composer

# Install Symfony CLI
RUN wget https://get.symfony.com/cli/installer -O - | bash
RUN mv /root/.symfony5/bin/symfony /usr/local/bin/symfony
