#!/bin/bash

echo Uploading Application container 
docker-compose up --build -d

echo Composer install
docker exec -it php-PROJECT_NAME cd /var/www/html/ && composer install

echo Run migrations
docker exec -it php-PROJECT_NAME php /var/www/html/artisan migrate

echo Information of new containers
docker ps -a 