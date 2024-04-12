# Используется базовый образ PHP 8.2 с веб-сервером Apache
FROM php:7.4-apache
# Добавляется метка для идентификации автора
LABEL Yana Rusakova

RUN docker-php-ext-install mysqli
# Копирование файлов index.php, mifiib-secret.yaml и mifiib-config.yaml в директорию /var/www/html
COPY ./index.php /var/www/html/index.php
